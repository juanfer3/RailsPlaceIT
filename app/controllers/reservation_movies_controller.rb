class ReservationMoviesController < ApplicationController
  before_action :set_reservation_movie, only: [:show, :update, :destroy]

  # GET /reservation_movies
  def index
    @reservation_movies = ReservationMovie.all

    render json: @reservation_movies
  end

  # GET /reservation_movies/1
  def show
    render json: @reservation_movie
  end

  # POST /reservation_movies
  def create
    @reservation_movie = ReservationMovie.new(reservation_movie_params)

    if @reservation_movie.save
      render json: @reservation_movie, status: :created, location: @reservation_movie
    else
      render json: @reservation_movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reservation_movies/1
  def update
    if @reservation_movie.update(reservation_movie_params)
      render json: @reservation_movie
    else
      render json: @reservation_movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservation_movies/1
  def destroy
    @reservation_movie.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation_movie
      @reservation_movie = ReservationMovie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reservation_movie_params
      params.require(:reservation_movie).permit(:movie_id, :identification, :name, :email, :day_reservation)
    end
end
