class CreateFixtures < ActiveRecord::Migration
  def self.up
    create_table :fixtures do |t|
      t.integer :league_id

      t.timestamps
    end
  end

  def self.down
    drop_table :fixtures
  end
end
