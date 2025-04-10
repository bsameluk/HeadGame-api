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

ActiveRecord::Schema[7.1].define(version: 2025_04_04_131611) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_histories", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "game_progress_id", null: false
    t.bigint "game_word_id", null: false
    t.index ["game_progress_id"], name: "index_game_histories_on_game_progress_id"
    t.index ["game_word_id"], name: "index_game_histories_on_game_word_id"
    t.index ["player_id"], name: "index_game_histories_on_player_id"
  end

  create_table "game_progresses", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "player_id", null: false
    t.integer "round_number"
    t.integer "seconds_per_round"
    t.integer "used_seconds"
    t.string "status", default: "active", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_progresses_on_game_id"
    t.index ["player_id"], name: "index_game_progresses_on_player_id"
  end

  create_table "game_words", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.string "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_words_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.integer "number_of_words"
    t.integer "seconds_per_round"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "team_id", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_teams_on_game_id"
  end

  add_foreign_key "game_histories", "game_progresses"
  add_foreign_key "game_histories", "game_words"
  add_foreign_key "game_histories", "players"
  add_foreign_key "game_progresses", "games"
  add_foreign_key "game_progresses", "players"
  add_foreign_key "game_words", "games"
  add_foreign_key "players", "teams"
  add_foreign_key "teams", "games"
end
