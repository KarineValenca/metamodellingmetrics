# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160517141422) do

  create_table "companies", force: :cascade do |t|
    t.string   "name_company",        limit: 255
    t.text     "description_company", limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "project_id",  limit: 4
  end

  add_index "goals", ["project_id"], name: "index_goals_on_project_id", using: :btree

  create_table "measures", force: :cascade do |t|
    t.string   "name_measure",        limit: 255
    t.text     "description_measure", limit: 65535
    t.date     "date_measure"
    t.float    "value_measure",       limit: 24
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "metrics", force: :cascade do |t|
    t.string   "metric_name",        limit: 255
    t.text     "description_metric", limit: 65535
    t.date     "calculus_date"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "metrics_questions", id: false, force: :cascade do |t|
    t.integer "metric_id",   limit: 4
    t.integer "question_id", limit: 4
  end

  add_index "metrics_questions", ["metric_id", "question_id"], name: "index_metrics_questions_on_metric_id_and_question_id", using: :btree

  create_table "number_sets", force: :cascade do |t|
    t.string   "name_number_set",        limit: 255
    t.text     "description_number_set", limit: 65535
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name_project",       limit: 255
    t.date     "start_date_project"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "description",        limit: 65535
  end

  create_table "projects_users", id: false, force: :cascade do |t|
    t.integer "project_id", limit: 4
    t.integer "user_id",    limit: 4
  end

  add_index "projects_users", ["project_id", "user_id"], name: "index_projects_users_on_project_id_and_user_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "question_name",        limit: 255
    t.text     "question_description", limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "goal_id",              limit: 4
  end

  add_index "questions", ["goal_id"], name: "index_questions_on_goal_id", using: :btree

  create_table "scales", force: :cascade do |t|
    t.string   "name_scale",        limit: 255
    t.text     "description_scale", limit: 65535
    t.float    "min_number",        limit: 24
    t.float    "max_number",        limit: 24
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "number_set_id",     limit: 4
  end

  add_index "scales", ["number_set_id"], name: "index_scales_on_number_set_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "username",               limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "company_id",             limit: 4
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "goals", "projects"
  add_foreign_key "questions", "goals"
  add_foreign_key "scales", "number_sets"
  add_foreign_key "users", "companies"
end
