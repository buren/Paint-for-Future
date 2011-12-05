class AddMapsToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :maps, :text
  end
end
