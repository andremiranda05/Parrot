class AddLogradouroToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :logradouro, :string
  end
end
