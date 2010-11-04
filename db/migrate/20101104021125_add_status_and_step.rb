class AddStatusAndStep < ActiveRecord::Migration
  def self.up
    add_column :leagues,   :state,  :string
    add_column :leagues,   :step,   :string
    add_column :fixtures,  :state,  :string
    add_column :fixtures,  :step,   :string
    add_column :weeks,     :state,  :string
    add_column :weeks,     :step,   :string
  end

  def self.down
    remove_column :leagues,  :state
    remove_column :leagues,  :step
    remove_column :fixtures, :state
    remove_column :fixtures, :step
    remove_column :weeks,    :state
    remove_column :weeks,    :step
  end
end
