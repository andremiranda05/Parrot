class CreateEventPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :event_places do |t|
      t.string :name
      t.string :city
      t.string :estado
      t.string :logradouro
      t.numeric :numero
      t.string :bairro
      t.string :referencia

      t.timestamps
    end
  end
end
