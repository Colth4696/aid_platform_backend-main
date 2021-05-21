class RequestsSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :longitude, :latitude, :category, :fulfilled
end
