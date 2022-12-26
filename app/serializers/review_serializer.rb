class ReviewSerializer < ActiveModel::Serializer
  attributes :username, :rating, :comment, :car_id
  belongs_to :car
end
