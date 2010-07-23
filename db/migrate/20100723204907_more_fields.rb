class MoreFields < ActiveRecord::Migration
  
  FIELDS = %W(place address directions capacity schedule site group)
  
  def self.up
    FIELDS.map{|field| add_column :dojos, field, :string}
  end

  def self.down
    FIELDS.map{|field| remove_column :dojos, field}
  end
end
