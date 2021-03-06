# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_14_075641) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "product_types", force: :cascade do |t|
    t.string "product_type_color"
    t.string "product_type_size"
    t.string "product_type_image_url"
    t.bigint "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_types_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_brand"
    t.string "product_name"
    t.string "product_description"
    t.string "product_image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "product_types", "products"
end
