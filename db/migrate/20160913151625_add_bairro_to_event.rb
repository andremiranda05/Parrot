class AddBairroToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :bairro, :string
  end
end
