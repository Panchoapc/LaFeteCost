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

ActiveRecord::Schema.define(version: 2021_01_26_130925) do

  create_table "maquinas", force: :cascade do |t|
    t.integer "Maquina_id"
    t.string "NombreMaquina"
    t.float "CostoHora"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "operarios", force: :cascade do |t|
    t.string "TipoOperario"
    t.float "CostoHora"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "procesos", force: :cascade do |t|
    t.integer "Id_proceso"
    t.string "Nombre"
    t.integer "Q_Operarios"
    t.integer "Q_Ayudantes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Maquina_id", null: false
    t.index ["Maquina_id"], name: "index_procesos_on_Maquina_id"
  end

  create_table "productos", force: :cascade do |t|
    t.integer "CodProd"
    t.float "CostoMatPrima"
    t.string "Nombre"
    t.string "Detalle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "receta", force: :cascade do |t|
    t.integer "Id_receta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Proceso_id", null: false
    t.integer "Producto_id", null: false
    t.index ["Proceso_id"], name: "index_receta_on_Proceso_id"
    t.index ["Producto_id"], name: "index_receta_on_Producto_id"
  end

  add_foreign_key "procesos", "Maquinas"
  add_foreign_key "receta", "Procesos"
  add_foreign_key "receta", "Productos"
end
