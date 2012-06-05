class CreateGigs < ActiveRecord::Migration
  def self.up
    create_table :gigs do |t|
      t.string :name
      t.string :place
      t.string :link
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :gigs
  end
end
