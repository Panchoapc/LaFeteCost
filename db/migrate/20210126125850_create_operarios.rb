class CreateOperarios < ActiveRecord::Migration[6.1]
  def change
    create_table :operarios do |t|
      t.string :TipoOperario
      t.float :CostoHora

      t.timestamps
    end
  end
end
