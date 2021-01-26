class CreateReceta < ActiveRecord::Migration[6.1]
  def change
    create_table :receta do |t|
      t.integer :Id_receta

      t.timestamps
    end
  end
end
