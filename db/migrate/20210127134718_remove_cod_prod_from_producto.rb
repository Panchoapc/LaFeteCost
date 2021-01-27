class RemoveCodProdFromProducto < ActiveRecord::Migration[6.1]
  def change
    remove_column :productos, :CodProd, :integer
  end
end
