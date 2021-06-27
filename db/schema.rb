# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_27_121615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notion_block_todos", force: :cascade do |t|
    t.text "text"
    t.boolean "checked"
    t.bigint "notion_block_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["notion_block_id"], name: "index_notion_block_todos_on_notion_block_id"
  end

  create_table "notion_blocks", force: :cascade do |t|
    t.boolean "has_children"
    t.string "block_type"
    t.string "block_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
