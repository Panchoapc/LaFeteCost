class CreateProductos < ActiveRecord::Migration[6.1]
  def change
    create_table :productos do |t|
      t.integer :CodProd
      t.float :CostoMatPrima
      t.string :Nombre
      t.string :Detalle

      t.timestamps
    end
  end
end
