class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def search
    @movies = Imdb::Search.new(params[:title]).movies
    render "index"
  end

  def show
    # if Movie.find(params[:id])
    @movie = Movie.where(id: params[:id]).first
    if @movie.nil?
      @movie = Imdb::Movie.new(params[:id])
    end

  end

  def new
  end

  def create
    @movie = Movie.new
    movie = Imdb::Movie.new(params[:id])
    @movie.title = movie.title
    @movie.year = movie.year
    @movie.plot = movie.plot
    @movie.mpaa_rating = movie.mpaa_rating
    @movie.rating = movie.rating
    @movie.save
    redirect_to("/movies")
  end
end