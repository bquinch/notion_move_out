class CreateNotionBlockTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :notion_block_todos do |t|
      t.text :text
      t.boolean :checked
      t.references :notion_block

      t.timestamps
    end
  end
end
