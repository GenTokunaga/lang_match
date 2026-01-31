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

ActiveRecord::Schema[8.1].define(version: 2026_01_31_091503) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.bigint "record_id", null: false
    t.string "record_type", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.string "content_type"
    t.datetime "created_at", null: false
    t.string "filename", null: false
    t.string "key", null: false
    t.text "metadata"
    t.string "service_name", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "current_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "last_sign_in_at"
    t.string "last_sign_in_ip"
    t.string "name", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "lesson_availables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "date", null: false
    t.bigint "mas_lesson_language_id", null: false
    t.bigint "mas_lesson_time_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "updated_at", null: false
    t.index ["mas_lesson_language_id"], name: "index_lesson_availables_on_mas_lesson_language_id"
    t.index ["mas_lesson_time_id"], name: "index_lesson_availables_on_mas_lesson_time_id"
    t.index ["teacher_id", "date", "mas_lesson_time_id"], name: "idx_on_teacher_id_date_mas_lesson_time_id_958adbc2de", unique: true
    t.index ["teacher_id"], name: "index_lesson_availables_on_teacher_id"
  end

  create_table "lesson_reserveds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "lesson_available_id", null: false
    t.bigint "student_id", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_available_id"], name: "index_lesson_reserveds_on_lesson_available_id"
    t.index ["student_id", "lesson_available_id"], name: "index_lesson_reserveds_on_student_id_and_lesson_available_id", unique: true
    t.index ["student_id"], name: "index_lesson_reserveds_on_student_id"
  end

  create_table "mas_lesson_languages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "language", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mas_lesson_tickets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "price", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mas_lesson_times", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.time "time", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "current_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "last_sign_in_at"
    t.string "last_sign_in_ip"
    t.string "name", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.integer "sign_in_count", default: 0, null: false
    t.integer "ticket_count", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  create_table "teach_availables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "mas_lesson_language_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "updated_at", null: false
    t.index ["mas_lesson_language_id"], name: "index_teach_availables_on_mas_lesson_language_id"
    t.index ["teacher_id"], name: "index_teach_availables_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "current_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "last_sign_in_at"
    t.string "last_sign_in_ip"
    t.string "name", default: "", null: false
    t.string "profile", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_teachers_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "lesson_availables", "mas_lesson_languages"
  add_foreign_key "lesson_availables", "mas_lesson_times"
  add_foreign_key "lesson_availables", "teachers"
  add_foreign_key "lesson_reserveds", "lesson_availables"
  add_foreign_key "lesson_reserveds", "students"
  add_foreign_key "teach_availables", "mas_lesson_languages"
  add_foreign_key "teach_availables", "teachers"
end
