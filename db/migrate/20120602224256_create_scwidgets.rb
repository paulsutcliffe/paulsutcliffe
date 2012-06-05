class CreateScwidgets < ActiveRecord::Migration
  def self.up
    create_table :scwidgets do |t|
      t.string :reference

      t.timestamps
    end
  end

  def self.down
    drop_table :scwidgets
  end
end
