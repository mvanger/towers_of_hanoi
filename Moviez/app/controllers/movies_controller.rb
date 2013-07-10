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
end