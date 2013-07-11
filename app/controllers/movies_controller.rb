class MoviesController < ApplicationController

  def index
    @faves = Movie.all
  end

  # GET
  # /todos/search
  # todos_search path
  def movies
    # @todos = Todo.where(task: params[:task])
  @movies = Imdb::Search.new(params[:name]).movies
#     render "index"

  end

  def show
    @name = params[:id]
    @movie = Imdb::Search.new(params[:id]).movies.first
  end


  def create
    movie = Imdb::Search.new(params[:title]).movies.first
    fave = Movie.new
    fave.name = movie.title
    fave.plot = movie.plot
    fave.mpaa = movie.mpaa_rating
    fave.favorite = params[:favorite]
    if fave.favorite
      fave.rating = 100
    else
      fave.rating = 50
    end
    fave.save
    redirect_to('/')
  end
end



