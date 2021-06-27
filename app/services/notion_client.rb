class NotionClient
  BASE_URL = "https://api.notion.com/v1/"

  class << self
    def get_blocks
      url = "blocks/#{ENV["PAGE_ID"]}/children"
      response = request(:get, url)
      data = JSON.parse(response)
      data["results"].each do |block_data|
        next if ["unsupported", "paragraph"].include?(block_data["type"])

        block = NotionBlock.find_or_initialize_by(
          block_type: block_data["type"],
          has_children: block_data["has_children"],
          block_id: block_data["id"]
        )

        # To_do type
        if block_data["type"] == "to_do"
          to_do = init_todo(block_data)
          to_do.notion_block = block
          to_do.save!
        end

        # Add more types

        block.save!
      end
    end

    def add_block(payload)
      url = "blocks/#{ENV["PAGE_ID"]}/children"
      response = request(:post, url, payload)
    end

    def request(method, url, payload = nil)
      RestClient::Request.execute(
        method: method,
        url: BASE_URL + url,
        headers: base_headers(method),
        payload: payload
      )
    end

    def init_todo(block_data)
      to_do = NotionBlock::Todo.find_or_initialize_by(
        text: block_data.dig("to_do", "text")[0].dig("text", "content"),
        checked: block_data.dig("to_do", "checked")
      )
    end

    def base_headers(method)
      headers = { Authorization: "Bearer #{ENV["NOTION_TOKEN"]}", "Notion-Version": "2021-05-13" }

      method == :post ? headers.merge({ "Content-Type": "application/json" }) : headers
    end
  end

end
