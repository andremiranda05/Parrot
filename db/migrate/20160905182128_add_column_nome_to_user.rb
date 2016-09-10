class AddColumnNomeToUser < ActiveRecord::Migration[5.0]
  def self.up
    add_column :users, :nome,:string
  end
  def self.down
    remove_column :users , :nome
  end
end
