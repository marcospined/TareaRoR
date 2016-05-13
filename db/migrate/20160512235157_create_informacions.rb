class CreateInformacions < ActiveRecord::Migration
  def change
    create_table :informacions do |t|
      t.string :Autor
      t.string :Genero
      t.date :Lanzamiento
      t.date :Duracion

      t.timestamps null: false
    end
  end
end
