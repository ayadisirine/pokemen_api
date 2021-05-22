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

ActiveRecord::Schema.define(version: 2021_05_21_223225) do

  create_table "pokemen", force: :cascade do |t|
    t.string "name"
    t.string "type1"
    t.string "type2"
    t.integer "total"
    t.integer "Hp"
    t.integer "Attack"
    t.integer "Defense"
    t.integer "Sp_Atk"
    t.integer "Sp_Def"
    t.integer "Speed"
    t.integer "Generation"
    t.boolean "Legendary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
