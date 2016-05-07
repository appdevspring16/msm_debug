class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movies = Movie.find(params[:id])
  end

  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    @movie.save

    render("show")
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    @movies = Movie.find(params[:id])
    @movies.title = params[:title]
    @movies.year = params[:year]
    @movies.duration = params[:duration]
    @movies.description = params[:description]
    @movies.image_url = params[:image_url]
    @movies.director_id = params[:director_id]
    @movies.save

    render("show")
  end

  def destroy
    movie = Movie.find(params[:id])

    movie.destroy
  end
end
