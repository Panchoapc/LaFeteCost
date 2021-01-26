class AddCodProdToReceta < ActiveRecord::Migration[6.1]
  def change
    add_reference :receta, :Producto, null: false, foreign_key: true
  end
end
