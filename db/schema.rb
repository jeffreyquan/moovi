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

ActiveRecord::Schema.define(version: 2019_11_01_145908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "directors", force: :cascade do |t|
    t.text "name"
    t.date "dob"
    t.text "pob"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres_movies", id: false, force: :cascade do |t|
    t.integer "genre_id"
    t.integer "movie_id"
  end

  create_table "lists", force: :cascade do |t|
    t.text "name"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lists_movies", id: false, force: :cascade do |t|
    t.integer "list_id"
    t.integer "movie_id"
  end

  create_table "movies", force: :cascade do |t|
    t.text "title"
    t.integer "year"
    t.text "overview"
    t.text "classification"
    t.integer "duration"
    t.text "image"
    t.text "imdb_id"
    t.integer "tmdb_id"
    t.integer "director_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "user_id"
    t.text "review"
    t.integer "rating"
    t.datetime "reviewed_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_reviews_on_movie_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "name"
    t.text "username"
    t.boolean "admin"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
