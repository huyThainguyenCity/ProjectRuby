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

ActiveRecord::Schema[7.0].define(version: 2023_01_12_074105) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

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
    t.string "phone_number"
    t.datetime "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
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
