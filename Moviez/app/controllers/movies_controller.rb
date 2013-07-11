class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def search
    @movies = Imdb::Search.new(params[:title]).movies
    render "index"
  end

  def show
    @movies = Imdb::Search.new(params[:id]).movies.first
  end

  def update
    @movie = Movie.new
    movie = Imdb::Search.new(params[:id]).movies.first
    @movie.title = movie.title
    @movie.year = movie.year
    @movie.plot = movie.plot
    @movie.mpaa_rating = movie.mpaa_rating
    @movie.rating = movie.rating
    @movie.save
    redirect_to("/movies/#{@movie.title}")
  end
end