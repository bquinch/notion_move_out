class NotionBlockController < ApplicationController
  before_action :init_blocks, only: :index

  def index
    @blocks = NotionBlock.includes(:to_do).all
  end

  private

  def init_blocks
    return unless params[:init_blocks]

    NotionClient.get_blocks
  end
end
