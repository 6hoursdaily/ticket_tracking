class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.references :ticket
      t.references :parent, :class_name => 'Comment', :foreign_key => 'parent_id'
      t.string :subject
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
