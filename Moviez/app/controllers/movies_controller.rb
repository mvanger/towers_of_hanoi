class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def search
    @searched_movies = Imdb::Search.new(params[:title]).movies[0..84]
    render "index"
  end

  def show
    # if Movie.find(params[:id])
    @movie = Movie.where(id: params[:id]).first
    if @movie.nil?
      @movie = Imdb::Movie.new(params[:id])
    end
  end

  def saved
    @movie = Movie.find(params[:id])
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
    @movie.rating = 5
    @movie.length = movie.length
    @movie.poster = movie.poster
    @movie.save
    redirect_to("/movies")
  end

  def rating
    movie = Movie.find(params[:id])
    if params[:rating] == "+1"
      movie.rating += 0.1
    else
      movie.rating -= 0.1
    end
    movie.save
    redirect_to "/movies/saved/#{movie.id}"
  end

  def destroy
    Movie.find(params[:id]).destroy
    redirect_to("/movies")
  end
end