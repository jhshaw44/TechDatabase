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

ActiveRecord::Schema.define(version: 20160804061624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data", id: false, force: true do |t|
    t.integer "School Number",                            limit: 2,   null: false
    t.string  "School Name",                              limit: 300
    t.string  "CLN",                                      limit: 300
    t.string  "Grades Served",                            limit: 300
    t.string  "School Address",                           limit: 300
    t.integer "School Zip"
    t.string  "School Phone",                             limit: 300
    t.string  "Principal Last Name",                      limit: 300
    t.string  "Principal First Name",                     limit: 300
    t.string  "Principal Email",                          limit: 254
    t.string  "ILED First Name",                          limit: 300
    t.string  "ILED Last Name",                           limit: 300
    t.string  "Senior ILED First Name",                   limit: 300
    t.string  "Senior ILED Last Name",                    limit: 300
    t.string  "Math ACL First Name",                      limit: 300
    t.string  "Math ACL Last Name",                       limit: 300
    t.string  "Literacy ACL First Name",                  limit: 300
    t.string  "Literacy ACL Last Name",                   limit: 300
    t.string  "Special ED Liaison First Name",            limit: 300
    t.string  "Special ED Liaison Last Name",             limit: 300
    t.string  "Gifted and Learning Site",                 limit: 300
    t.string  "Transformational Principal",               limit: 300
    t.string  "SABES Program",                            limit: 300
    t.string  "Librarian First Name",                     limit: 300
    t.string  "Librarian Last Name",                      limit: 300
    t.string  "Technology Teacher First Name",            limit: 300
    t.string  "Technology Teacher Last Name",             limit: 300
    t.string  "Technology Contact First Name",            limit: 300
    t.string  "Technology Contact Last Name",             limit: 300
    t.string  "SLO Coordinator First Name",               limit: 300
    t.string  "SLO Coordinator Last Name",                limit: 300
    t.string  "Amplify School",                           limit: 300
    t.string  "School Test Coordinator First Name",       limit: 300
    t.string  "School Test Coordinator Last Name",        limit: 300
    t.string  "STC Alternate First Name",                 limit: 300
    t.string  "STC ALternate Last Name",                  limit: 300
    t.string  "i-Ready",                                  limit: 300
    t.string  "Infinite Campus Teacher Coach First Name", limit: 300
    t.string  "Infinite Campus Teacher Coach Last Name",  limit: 300
    t.string  "IC Teacher Coach Alternate First Name",    limit: 300
    t.string  "IC Teacher Coach Alternate Last Name",     limit: 300
    t.string  "Literacy Representative First Name",       limit: 300
    t.string  "Literacy Representative Last Name",        limit: 300
    t.string  "Math Representative First Name",           limit: 300
    t.string  "Math Representative Last Name",            limit: 300
    t.string  "School Start Time",                        limit: 300
    t.string  "School End Time",                          limit: 300
    t.string  "First League Program",                     limit: 300
    t.string  "JR Lego League Program",                   limit: 300
    t.string  "Vex Program",                              limit: 300
    t.string  "VEX IQ Program",                           limit: 300
    t.string  "First Robotics League",                    limit: 300
    t.string  "Schedule Type",                            limit: 300
    t.string  "Grading Setup",                            limit: 300
    t.string  "Academic Strategic Support",               limit: 300
    t.string  "Climate Academic Support",                 limit: 300
    t.string  "Priority School",                          limit: 300
    t.string  "Green School Distinction",                 limit: 300
    t.string  "21st Century Building School",             limit: 300
    t.string  "Weinberg Library",                         limit: 300
    t.string  "Wireless Internet",                        limit: 300
    t.string  "Teacher Mentor First Name",                limit: 300
    t.string  "Teacher Mentor Last Name",                 limit: 300
    t.string  "School Website",                           limit: 300
    t.string  "Twitter Account",                          limit: 300
    t.string  "School Scheduler First Name",              limit: 300
    t.string  "School Scheduler Last Name",               limit: 300
    t.string  "Music Program",                            limit: 300
    t.string  "Art Program",                              limit: 300
  end

  create_table "schools", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "search_groups", force: true do |t|
    t.string "group_name",       limit: 300
    t.string "children_columns", limit: 500
  end

  create_table "techdb", id: false, force: true do |t|
    t.integer "number",                                   limit: 2,   null: false
    t.string  "name",                                     limit: 300
    t.string  "CLN",                                      limit: 300
    t.string  "grades_served",                            limit: 300
    t.string  "School Address",                           limit: 300
    t.integer "School ZIP"
    t.string  "School Phone",                             limit: 300
    t.string  "Principal Last Name",                      limit: 300
    t.string  "Principal First Name",                     limit: 300
    t.string  "Principal Email",                          limit: 254
    t.string  "ILED First Name",                          limit: 300
    t.string  "ILED Last Name",                           limit: 300
    t.string  "Senior ILED First Name",                   limit: 300
    t.string  "Senior ILED Last Name",                    limit: 300
    t.string  "Math ACL First Name",                      limit: 300
    t.string  "Math ACL Last Name",                       limit: 300
    t.string  "Literacy ACL First Name",                  limit: 300
    t.string  "Literacy ACL Last Name",                   limit: 300
    t.string  "Special ED Liaison First Name",            limit: 300
    t.string  "Special ED Liaison Last Name",             limit: 300
    t.string  "Gifted and Learning Site",                 limit: 300
    t.string  "Transformational Principal",               limit: 300
    t.string  "SABES Program",                            limit: 300
    t.string  "Librarian First Name",                     limit: 300
    t.string  "Librarian Last Name",                      limit: 300
    t.string  "Technology Teacher First Name",            limit: 300
    t.string  "Technology Teacher Last Name",             limit: 300
    t.string  "Technology Contact First Name",            limit: 300
    t.string  "Technology Contact Last Name",             limit: 300
    t.string  "SLO Coordinator First Name",               limit: 300
    t.string  "SLO Coordinator Last Name",                limit: 300
    t.string  "Amplify School",                           limit: 300
    t.string  "School Test Coordinator First Name",       limit: 300
    t.string  "School Test Coordinator Last Name",        limit: 300
    t.string  "STC Alternate First Name",                 limit: 300
    t.string  "STC ALternate Last Name",                  limit: 300
    t.string  "i-Ready",                                  limit: 300
    t.string  "Infinite Campus Teacher Coach First Name", limit: 300
    t.string  "Infinite Campus Teacher Coach Last Name",  limit: 300
    t.string  "IC Teacher Coach Alternate First Name",    limit: 300
    t.string  "IC Teacher Coach Alternate Last Name",     limit: 300
    t.string  "Literacy Representative First Name",       limit: 300
    t.string  "Literacy Representative Last Name",        limit: 300
    t.string  "Math Representative First Name",           limit: 300
    t.string  "Math Representative Last Name",            limit: 300
    t.string  "School Start Time",                        limit: 300
    t.string  "School End Time",                          limit: 300
    t.string  "First League Program",                     limit: 300
    t.string  "JR Lego League Program",                   limit: 300
    t.string  "Vex Program",                              limit: 300
    t.string  "VEX IQ Program",                           limit: 300
    t.string  "First Robotics League",                    limit: 300
    t.string  "Schedule Type",                            limit: 300
    t.string  "Grading Setup",                            limit: 300
    t.string  "Academic Strategic Support",               limit: 300
    t.string  "Climate Academic Support",                 limit: 300
    t.string  "Priority School",                          limit: 300
    t.string  "Green School Distinction",                 limit: 300
    t.string  "21st Century Building School",             limit: 300
    t.string  "Weinberg Library",                         limit: 300
    t.string  "Wireless Internet",                        limit: 300
    t.string  "Teacher Mentor First Name",                limit: 300
    t.string  "Teacher Mentor Last Name",                 limit: 300
    t.string  "School Website",                           limit: 300
    t.string  "Twitter Account",                          limit: 300
    t.string  "School Scheduler First Name",              limit: 300
    t.string  "School Scheduler Last Name",               limit: 300
    t.string  "Music Program",                            limit: 300
    t.string  "Art Program",                              limit: 300
  end

  create_table "techdbs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
