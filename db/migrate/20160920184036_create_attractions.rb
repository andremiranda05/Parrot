class CreateAttractions < ActiveRecord::Migration[5.0]
  def change
    create_table :attractions do |t|
      t.string :nome
      t.string :contato
      t.belongs_to :event, foreign_key: true

      t.timestamps
    end
  end
end
