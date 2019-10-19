require 'test_helper'

class ReservationMoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation_movie = reservation_movies(:one)
  end

  test "should get index" do
    get reservation_movies_url, as: :json
    assert_response :success
  end

  test "should create reservation_movie" do
    assert_difference('ReservationMovie.count') do
      post reservation_movies_url, params: { reservation_movie: { day_reservation: @reservation_movie.day_reservation, email: @reservation_movie.email, identification: @reservation_movie.identification, movie_id: @reservation_movie.movie_id, name: @reservation_movie.name } }, as: :json
    end

    assert_response 201
  end

  test "should show reservation_movie" do
    get reservation_movie_url(@reservation_movie), as: :json
    assert_response :success
  end

  test "should update reservation_movie" do
    patch reservation_movie_url(@reservation_movie), params: { reservation_movie: { day_reservation: @reservation_movie.day_reservation, email: @reservation_movie.email, identification: @reservation_movie.identification, movie_id: @reservation_movie.movie_id, name: @reservation_movie.name } }, as: :json
    assert_response 200
  end

  test "should destroy reservation_movie" do
    assert_difference('ReservationMovie.count', -1) do
      delete reservation_movie_url(@reservation_movie), as: :json
    end

    assert_response 204
  end
end
