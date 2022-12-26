class CarSerializer < ActiveModel::Serializer
  attributes :id, :make, :model, :price, :fuel_type, :transmission, :mileage, :engine_size, :year, :image
  has_many :reviews
end
