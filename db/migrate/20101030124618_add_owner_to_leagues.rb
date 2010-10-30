class AddOwnerToLeagues < ActiveRecord::Migration
  def self.up
    add_column :leagues, :owner_id, :integer
  end

  def self.down
    remove_column :leagues, :owner_id
  end
end
