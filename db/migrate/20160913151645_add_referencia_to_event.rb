class AddReferenciaToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :referencia, :string
  end
end
