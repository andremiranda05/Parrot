class AddValorToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :valor, :float
  end
end
