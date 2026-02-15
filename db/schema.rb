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

ActiveRecord::Schema[8.1].define(version: 2026_01_31_091502) do
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
    t.datetime "remember_created_at"
    t.datetime "reset_password_sent_at"
    t.string "reset_password_token"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "lesson_reserves", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "lesson_slot_id", null: false
    t.bigint "student_id", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_slot_id"], name: "index_lesson_reserves_on_lesson_slot_id", unique: true
    t.index ["student_id"], name: "index_lesson_reserves_on_student_id"
  end

  create_table "lesson_slots", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "date", null: false
    t.string "language", null: false
    t.bigint "mas_lesson_slot_id", null: false
    t.bigint "teacher_id", null: false
    t.datetime "updated_at", null: false
    t.index ["date"], name: "index_lesson_slots_on_date"
    t.index ["language"], name: "index_lesson_slots_on_language"
    t.index ["mas_lesson_slot_id"], name: "index_lesson_slots_on_mas_lesson_slot_id"
    t.index ["teacher_id", "date", "mas_lesson_slot_id"], name: "idx_on_teacher_id_date_mas_lesson_slot_id_655c682749", unique: true
    t.index ["teacher_id"], name: "index_lesson_slots_on_teacher_id"
  end

  create_table "mas_lesson_slots", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.time "start_time", null: false
    t.datetime "updated_at", null: false
    t.index ["start_time"], name: "index_mas_lesson_slots_on_start_time", unique: true
  end

  create_table "mas_ticket_prices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "price", null: false
    t.integer "ticket_count", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_count", "price"], name: "index_mas_ticket_prices_on_ticket_count_and_price", unique: true
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

  create_table "teachers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "current_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "languages", default: [], null: false, array: true
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
  add_foreign_key "lesson_reserves", "lesson_slots"
  add_foreign_key "lesson_reserves", "students"
  add_foreign_key "lesson_slots", "mas_lesson_slots"
  add_foreign_key "lesson_slots", "teachers"
end
