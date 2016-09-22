class AddCidadeToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :cidade, :string
  end
end
