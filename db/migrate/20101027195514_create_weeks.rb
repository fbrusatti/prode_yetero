class CreateWeeks < ActiveRecord::Migration
  def self.up
    create_table :weeks do |t|
      t.string :name
      t.integer :fixture_id
      t.date :from
      t.date :to

      t.timestamps
    end
  end

  def self.down
    drop_table :weeks
  end
end
