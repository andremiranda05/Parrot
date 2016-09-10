class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :nome_evento
      t.date :data_evento
      t.text :descrição

      t.timestamps
    end
  end
end
