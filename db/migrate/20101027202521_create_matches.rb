class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.integer :week_id
      t.integer :visitor_id
      t.integer :local_id
      t.integer :visitor_score, :default => 0
      t.integer :local_score, :default => 0
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
