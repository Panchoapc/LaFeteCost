class CreateMaquinas < ActiveRecord::Migration[6.1]
  def change
    create_table :maquinas do |t|
      t.integer :Maquina_id
      t.string :NombreMaquina
      t.float :CostoHora

      t.timestamps
    end
  end
end
