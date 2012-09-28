class User < ActiveRecord::Base
  attr_accessible :name, :permissions_attributes
  has_many :permissions
  validates_associated :permissions
  accepts_nested_attributes_for :permissions, :allow_destroy => true, :reject_if => :all_blank
  validates :name, :presence => true    
end
