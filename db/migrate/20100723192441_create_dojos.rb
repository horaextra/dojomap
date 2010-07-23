class CreateDojos < ActiveRecord::Migration
  def self.up
    create_table :dojos do |t|
      t.string :lat_long, :title
    end
  end

  def self.down
    drop_table :dojos
  end
end
