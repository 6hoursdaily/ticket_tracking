class Ticket < ActiveRecord::Base
  validates_presence_of :category_id, :body
  validates_numericality_of :category_id,  :user_id, :greater_than => 0, :only_integer => true
  validates_numericality_of :id, :allow_nil => true, :greater_than => 0, :only_integer => true
  validates_format_of :ip_address, :with => /(\d{1,3}\.){3}\d{1,3}/ 
  
  belongs_to :user
  belongs_to :category
  belongs_to :status
  
  has_many :comments
end
