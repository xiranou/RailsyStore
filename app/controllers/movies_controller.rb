class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @cart_action = @movie.cart_action(current_user.try :id)
  end

  private
  def set_movie
    @movie = Movie.find(params[:id])
  end
end
