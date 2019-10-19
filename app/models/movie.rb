class Movie < ApplicationRecord
    has_many :reservation_movies , inverse_of: :movie, dependent: :destroy
    accepts_nested_attributes_for :reservation_movies, reject_if: :all_blank, allow_destroy: true
end
