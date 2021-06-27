class CreateNotionBlocks < ActiveRecord::Migration[6.0]
  def change
    create_table :notion_blocks do |t|
      t.boolean :has_children
      t.string :block_type
      t.string :block_id

      t.timestamps
    end
  end
end
