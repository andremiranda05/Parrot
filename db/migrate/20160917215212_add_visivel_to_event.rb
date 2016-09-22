class AddVisivelToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :visivel, :boolean
  end
end
