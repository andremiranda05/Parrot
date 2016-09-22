class AddNomeEspacoToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :nome_espaco, :string
  end
end
