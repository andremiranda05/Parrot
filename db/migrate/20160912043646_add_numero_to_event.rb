class AddNumeroToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :numero, :integer
  end
end
