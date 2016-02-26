class Request < ActiveRecord::Base
  validates_uniqueness_of :buyer, :scope => :seller
end
