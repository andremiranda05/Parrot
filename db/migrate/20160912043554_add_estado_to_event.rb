class AddEstadoToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :estado, :string
  end
end
