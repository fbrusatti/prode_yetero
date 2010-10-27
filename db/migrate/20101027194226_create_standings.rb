class CreateStandings < ActiveRecord::Migration
  def self.up
    create_table :standings do |t|
      t.integer :league_id

      t.timestamps
    end
  end

  def self.down
    drop_table :standings
  end
end
