class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.references :category, :user, :null => false
      t.text :body, :null => false
      t.integer :ip_address, :null => false
      t.references :status, :user, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
