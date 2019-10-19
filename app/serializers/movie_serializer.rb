class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image_url, :start_date, :end_date
  has_many :reservation_movies, serializer: ReservationMovieSerializer
end
