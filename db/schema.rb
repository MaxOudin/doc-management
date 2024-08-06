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

ActiveRecord::Schema[7.1].define(version: 2024_08_06_065955) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin0s", force: :cascade do |t|
    t.string "nom"
    t.string "code"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin1s", force: :cascade do |t|
    t.string "nom"
    t.string "code"
    t.float "longitude"
    t.float "latitude"
    t.bigint "admin0_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin0_id"], name: "index_admin1s_on_admin0_id"
  end

  create_table "adresses", force: :cascade do |t|
    t.string "nom"
    t.string "code"
    t.float "longitude"
    t.float "latitude"
    t.integer "numero"
    t.string "rue"
    t.string "rue_2"
    t.integer "code_postal"
    t.string "ville"
    t.string "pays"
    t.boolean "principale", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "affectations", force: :cascade do |t|
    t.date "date_debut"
    t.date "end_date"
    t.boolean "active", default: false
    t.bigint "user_id", null: false
    t.bigint "site_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_affectations_on_site_id"
    t.index ["user_id"], name: "index_affectations_on_user_id"
  end

  create_table "deplacements", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "affectation_id", null: false
    t.boolean "grand_deplacement", default: false
    t.integer "montant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["affectation_id"], name: "index_deplacements_on_affectation_id"
    t.index ["user_id"], name: "index_deplacements_on_user_id"
  end

  create_table "documents", force: :cascade do |t|
    t.integer "document_type", null: false
    t.integer "status", null: false
    t.date "date_televersement"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document_type"], name: "index_documents_on_document_type"
    t.index ["status"], name: "index_documents_on_status"
    t.index ["user_id"], name: "index_documents_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.text "message"
    t.date "date_envoi"
    t.bigint "sender_id", null: false
    t.bigint "receiver_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_invitations_on_receiver_id"
    t.index ["sender_id"], name: "index_invitations_on_sender_id"
  end

  create_table "notifies", force: :cascade do |t|
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relances", force: :cascade do |t|
    t.text "message"
    t.date "date_envoi"
    t.bigint "sender_id", null: false
    t.bigint "receiver_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_relances_on_receiver_id"
    t.index ["sender_id"], name: "index_relances_on_sender_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "nom"
    t.string "code"
    t.float "longitude"
    t.float "latitude"
    t.bigint "admin1_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin1_id"], name: "index_sites_on_admin1_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nom"
    t.string "prenom"
    t.date "date_naissance"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicules", force: :cascade do |t|
    t.string "immatriculation"
    t.string "nom"
    t.string "prenom"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicules_on_user_id"
  end

  add_foreign_key "admin1s", "admin0s"
  add_foreign_key "affectations", "sites"
  add_foreign_key "affectations", "users"
  add_foreign_key "deplacements", "affectations"
  add_foreign_key "deplacements", "users"
  add_foreign_key "documents", "users"
  add_foreign_key "invitations", "users", column: "receiver_id"
  add_foreign_key "invitations", "users", column: "sender_id"
  add_foreign_key "relances", "users", column: "receiver_id"
  add_foreign_key "relances", "users", column: "sender_id"
  add_foreign_key "sites", "admin1s"
  add_foreign_key "vehicules", "users"
end
