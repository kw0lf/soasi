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

ActiveRecord::Schema.define(version: 20171106222151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empresas", force: :cascade do |t|
    t.string "nombre"
    t.string "ruc"
    t.text "ubicacion"
    t.string "telefono"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "primer_nombre"
    t.string "segundo_nombre"
    t.string "primer_apellido"
    t.string "segundo_apellido"
    t.string "tipo_identificacion"
    t.string "numero_identificacion"
    t.string "genero"
    t.date "fecha_nac"
    t.string "lugar_nacimiento"
    t.string "telefono"
    t.string "grupo_sangre"
    t.string "edo_civil"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "empresa_id"
    t.index ["empresa_id"], name: "index_pacientes_on_empresa_id"
  end

  add_foreign_key "pacientes", "empresas"
end
