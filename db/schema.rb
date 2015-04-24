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

ActiveRecord::Schema.define(version: 20150424142707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capacitacions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locals", force: true do |t|
    t.integer  "cod_sede_operativa"
    t.integer  "cod_local_sede"
    t.string   "nombreLocal"
    t.string   "direccion"
    t.string   "refencia"
    t.integer  "naula"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rols", force: true do |t|
    t.string   "nombre_rol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sede_operativas", force: true do |t|
    t.integer  "cod_sede_operativa"
    t.string   "sede_operativa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuario_locals", force: true do |t|
    t.integer  "cod_sede_operativa"
    t.integer  "cod_local_sede"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "usuario"
    t.string   "clave"
    t.string   "nombres_apellidos"
    t.string   "estado"
    t.integer  "id_rol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", force: true do |t|
    t.integer  "vercod"
    t.integer  "v_padron"
    t.integer  "v_sistem"
    t.datetime "f_registro"
    t.integer  "id_even"
    t.datetime "des_ini"
    t.datetime "des_fin"
    t.string   "observa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
