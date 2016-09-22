class CreateOrganizators < ActiveRecord::Migration[5.0]
  def change
    create_table :organizators do |t|
      t.string :nome
      t.string :contato
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
