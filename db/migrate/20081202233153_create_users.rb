class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login, :null => false
      t.string :password, :email
      t.boolean :status, :is_admin, :null => false, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
