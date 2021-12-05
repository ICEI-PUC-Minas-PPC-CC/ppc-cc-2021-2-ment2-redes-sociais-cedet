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

ActiveRecord::Schema.define(version: 2021_12_05_200037) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "alunos", force: :cascade do |t|
    t.string "nome_aluno1_p1"
    t.string "nome_aluno2_p1"
    t.string "nome_aluno1_p2"
    t.string "nome_aluno2_p2"
    t.string "nome_aluno1_p3"
    t.string "nome_aluno2_p3"
    t.string "nome_aluno1_p4"
    t.string "nome_aluno2_p4"
    t.string "nome_aluno1_p5"
    t.string "nome_aluno2_p5"
    t.string "nome_aluno1_p6"
    t.string "nome_aluno2_p6"
    t.string "nome_aluno1_p7"
    t.string "nome_aluno2_p7"
    t.string "nome_aluno1_p8"
    t.string "nome_aluno2_p8"
    t.string "nome_aluno1_p9"
    t.string "nome_aluno2_p9"
    t.string "nome_aluno1_p10"
    t.string "nome_aluno2_p10"
    t.string "nome_aluno1_p11"
    t.string "nome_aluno2_p11"
    t.string "nome_aluno1_p12"
    t.string "nome_aluno2_p12"
    t.string "nome_aluno1_p13"
    t.string "nome_aluno2_p13"
    t.string "nome_aluno1_p14"
    t.string "nome_aluno2_p14"
    t.string "nome_aluno1_p15"
    t.string "nome_aluno2_p15"
    t.string "nome_aluno1_p16"
    t.string "nome_aluno2_p16"
    t.string "nome_aluno1_p17"
    t.string "nome_aluno2_p17"
    t.string "nome_aluno1_p18"
    t.string "nome_aluno2_p18"
    t.string "nome_aluno1_p19"
    t.string "nome_aluno2_p19"
    t.string "nome_aluno1_p20"
    t.string "nome_aluno2_p20"
    t.string "nome_aluno1_p21"
    t.string "nome_aluno2_p21"
    t.string "nome_aluno1_p22"
    t.string "nome_aluno2_p22"
    t.string "nome_aluno1_p23"
    t.string "nome_aluno2_p23"
    t.string "nome_aluno1_p24"
    t.string "nome_aluno2_p24"
    t.string "nome_aluno1_p25"
    t.string "nome_aluno2_p25"
    t.string "nome_aluno1_p26"
    t.string "nome_aluno2_p26"
    t.string "nome_aluno1_p27"
    t.string "nome_aluno2_p27"
    t.string "nome_aluno1_p28"
    t.string "nome_aluno2_p28"
    t.string "nome_aluno1_p29"
    t.string "nome_aluno2_p29"
    t.string "nome_aluno1_p30"
    t.string "nome_aluno2_p30"
    t.string "nome_aluno1_p31"
    t.string "nome_aluno2_p31"
    t.string "nome_aluno1_p32"
    t.string "nome_aluno2_p32"
    t.string "nome_aluno1_p33"
    t.string "nome_aluno2_p33"
    t.string "nome_aluno1_p34"
    t.string "nome_aluno2_p34"
    t.string "nome_aluno1_p35"
    t.string "nome_aluno2_p35"
    t.string "nome_aluno1_p36"
    t.string "nome_aluno2_p36"
    t.string "nome_aluno1_p37"
    t.string "nome_aluno2_p37"
    t.string "nome_aluno1_p38"
    t.string "nome_aluno2_p38"
    t.string "nome_aluno1_p39"
    t.string "nome_aluno2_p39"
    t.string "nome_aluno1_p40"
    t.string "nome_aluno2_p40"
    t.string "nome_aluno1_p41"
    t.string "nome_aluno2_p41"
    t.string "nome_aluno1_p42"
    t.string "nome_aluno2_p42"
    t.string "nome_aluno1_p43"
    t.string "nome_aluno2_p43"
    t.string "nome_aluno1_p44"
    t.string "nome_aluno2_p44"
    t.string "nome_aluno1_p45"
    t.string "nome_aluno2_p45"
    t.string "nome_aluno1_p46"
    t.string "nome_aluno2_p46"
    t.string "nome_aluno1_p47"
    t.string "nome_aluno2_p47"
    t.string "nome_aluno1_p48"
    t.string "nome_aluno2_p48"
    t.string "nome_aluno1_p49"
    t.string "nome_aluno2_p49"
    t.string "nome_aluno1_p50"
    t.string "nome_aluno2_p50"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "answers", force: :cascade do |t|
    t.text "description", null: false
    t.integer "question_id"
    t.boolean "correct", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "description", null: false
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_questions_on_subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "id_professor"
    t.string "student_name", null: false
    t.string "teacher_name", null: false
    t.string "school_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.boolean "correct", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
