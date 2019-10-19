class ReservationMovieSerializer < ActiveModel::Serializer
  attributes :id, :identification, :name, :email, :day_reservation
  has_one :movie
end
