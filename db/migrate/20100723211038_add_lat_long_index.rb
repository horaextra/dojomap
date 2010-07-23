class AddLatLongIndex < ActiveRecord::Migration
  def self.up
    add_index :dojos, :lat_long, :unique => true
  end

  def self.down
    remove_index :dojos, :lat_long
  end
end
