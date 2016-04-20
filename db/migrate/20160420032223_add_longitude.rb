class AddLongitude < ActiveRecord::Migration
  def change
    add_column :contacts, :longitude, :float
  end
end
