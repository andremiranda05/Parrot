class AddHorarioToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :horario, :time
  end
end
