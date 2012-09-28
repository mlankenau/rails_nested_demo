class User < ActiveRecord::Base
  attr_accessible :name, :permissions_attributes
  has_many :permissions
  accepts_nested_attributes_for :permissions, :reject_if => lambda { |p| p["name"].empty? }, :allow_destroy => true    
  validates :name, :presence => true    
end
