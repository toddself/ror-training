class MoviesController < ApplicationController
  def show
    movie = Movie.find(params[:id])
    render :show, locals: { movie: movie }
  end

  def index
    movies = Movie.all
    render :index, locals: { movies: movies }
  end
end
