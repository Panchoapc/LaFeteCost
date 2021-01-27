class AddCodProdToProductos < ActiveRecord::Migration[6.1]
  def change
    add_column :productos, :CodProd, :string
  end
end
