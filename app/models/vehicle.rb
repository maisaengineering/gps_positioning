class Vehicle
  include Mongoid::Document
  	validates_uniqueness_of :train_name
end
