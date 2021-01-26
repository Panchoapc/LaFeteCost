class CreateProcesos < ActiveRecord::Migration[6.1]
  def change
    create_table :procesos do |t|
      t.integer :Id_proceso
      t.string :Nombre
      t.integer :Q_Operarios
      t.integer :Q_Ayudantes

      t.timestamps
    end
  end
end
