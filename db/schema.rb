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

ActiveRecord::Schema[7.0].define(version: 2022_12_28_080351) do
  create_table "answers", force: :cascade do |t|
    t.integer "questions_id", null: false
    t.boolean "is_correct"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["questions_id"], name: "index_answers_on_questions_id"
  end

  create_table "exam_answers", force: :cascade do |t|
    t.integer "questions_id", null: false
    t.integer "answers_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answers_id"], name: "index_exam_answers_on_answers_id"
    t.index ["questions_id"], name: "index_exam_answers_on_questions_id"
  end

  create_table "exam_tags", force: :cascade do |t|
    t.integer "tags_id", null: false
    t.integer "exams_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exams_id"], name: "index_exam_tags_on_exams_id"
    t.index ["tags_id"], name: "index_exam_tags_on_tags_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "name"
    t.string "short_description"
    t.string "detail"
    t.string "number_of_question"
    t.integer "time_out"
    t.string "image"
    t.integer "mark"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.integer "exams_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exams_id"], name: "index_questions_on_exams_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_exams", force: :cascade do |t|
    t.integer "users_id", null: false
    t.integer "exams_id", null: false
    t.integer "exam_answers_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_answers_id"], name: "index_user_exams_on_exam_answers_id"
    t.index ["exams_id"], name: "index_user_exams_on_exams_id"
    t.index ["users_id"], name: "index_user_exams_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "password"
    t.boolean "is_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "questions", column: "questions_id"
  add_foreign_key "exam_answers", "answers", column: "answers_id"
  add_foreign_key "exam_answers", "questions", column: "questions_id"
  add_foreign_key "exam_tags", "exams", column: "exams_id"
  add_foreign_key "exam_tags", "tags", column: "tags_id"
  add_foreign_key "questions", "exams", column: "exams_id"
  add_foreign_key "user_exams", "exam_answers", column: "exam_answers_id"
  add_foreign_key "user_exams", "exams", column: "exams_id"
  add_foreign_key "user_exams", "users", column: "users_id"
end
