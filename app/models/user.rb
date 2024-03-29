class User < ActiveRecord::Base
  validates_presence_of :login, :password, :email
  validates_uniqueness_of :login, :email
  validates_length_of :login, :within => 3..30
  validates_format_of :login, :with => /\A[-a-z0-9\.]*\Z/
  validates_length_of :password, :within => 5..30, :allow_nil => true
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/
  validates_confirmation_of :password

  has_many :user_categories
  has_many :categories, :through => :user_categories
  has_many :tickets
  has_many :comments
end
