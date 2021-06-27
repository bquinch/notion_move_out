class NotionBlock::Todo < ApplicationRecord
  belongs_to :notion_block
  validates :text, presence: true
  validates :checked, inclusion: { in: [true, false] }
end
