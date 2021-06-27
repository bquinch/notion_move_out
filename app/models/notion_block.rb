class NotionBlock < ApplicationRecord
  TYPES = [
    "to_do",
  ]

  has_one :to_do, class_name: "::NotionBlock::Todo", required: false, dependent: :destroy

  validates :block_type, inclusion: { in: TYPES }
  validates :block_id, :block_type, presence: true
end
