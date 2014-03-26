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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140322005465) do

  create_table "careerlevels", :force => true do |t|
    t.string   "name",       :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "cities", :force => true do |t|
    t.integer  "province_id", :default => 0,  :null => false
    t.string   "name",        :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "classifications", :force => true do |t|
    t.string   "name",       :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name",       :default => "Sri Lanka", :null => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "experiencelevels", :force => true do |t|
    t.string   "name",       :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "job_applications", :force => true do |t|
    t.integer  "job_id",              :default => 0,  :null => false
    t.integer  "user_id",             :default => 0,  :null => false
    t.string   "fullname",            :default => "", :null => false
    t.string   "email",               :default => "", :null => false
    t.text     "tags",                :default => "", :null => false
    t.string   "contactno",           :default => "", :null => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
  end

  add_index "job_applications", ["job_id"], :name => "index_job_applications_on_job_id"

  create_table "job_post_types", :force => true do |t|
    t.string   "jobtype",    :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "job_posts", :force => true do |t|
    t.integer  "user_id",                  :default => 0,     :null => false
    t.integer  "job_post_type_id",         :default => 0,     :null => false
    t.string   "fullname",                 :default => "",    :null => false
    t.string   "email",                    :default => "",    :null => false
    t.string   "contactno",                :default => "",    :null => false
    t.string   "jobuuid",                  :default => "",    :null => false
    t.boolean  "terms",                    :default => false, :null => false
    t.boolean  "cvemailoption",            :default => false, :null => false
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "companylogo_file_name"
    t.string   "companylogo_content_type"
    t.integer  "companylogo_file_size"
    t.datetime "companylogo_updated_at"
    t.string   "adimage_file_name"
    t.string   "adimage_content_type"
    t.integer  "adimage_file_size"
    t.datetime "adimage_updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.integer  "user_id",                  :default => 0,     :null => false
    t.integer  "city_id",                  :default => 0,     :null => false
    t.integer  "classification_id",        :default => 0,     :null => false
    t.integer  "worktype_id",              :default => 0,     :null => false
    t.integer  "job_post_type_id",         :default => 0,     :null => false
    t.integer  "careerlevel_id",           :default => 0,     :null => false
    t.integer  "experiencelevel_id",       :default => 0,     :null => false
    t.integer  "payment_method_id",        :default => 0,     :null => false
    t.integer  "salary_id",                :default => 0,     :null => false
    t.string   "title",                    :default => "",    :null => false
    t.string   "jobuuid",                  :default => "",    :null => false
    t.string   "employerlinkcode",         :default => "",    :null => false
    t.string   "jobskills",                :default => "",    :null => false
    t.text     "tags",                     :default => "",    :null => false
    t.string   "companyname",              :default => "",    :null => false
    t.string   "companyemail",             :default => "",    :null => false
    t.string   "companyphone",             :default => "",    :null => false
    t.boolean  "cvemailoption",            :default => false, :null => false
    t.boolean  "postemailack",             :default => false, :null => false
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.string   "companylogo_file_name"
    t.string   "companylogo_content_type"
    t.integer  "companylogo_file_size"
    t.datetime "companylogo_updated_at"
    t.string   "adimage_file_name"
    t.string   "adimage_content_type"
    t.integer  "adimage_file_size"
    t.datetime "adimage_updated_at"
  end

  create_table "payment_methods", :force => true do |t|
    t.string   "name",       :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "provinces", :force => true do |t|
    t.string   "name",       :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "salaries", :force => true do |t|
    t.string   "salaryrange", :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "fullname",               :default => "",    :null => false
    t.boolean  "isadmin",                :default => false, :null => false
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "worktypes", :force => true do |t|
    t.string   "name",       :default => "", :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

end
