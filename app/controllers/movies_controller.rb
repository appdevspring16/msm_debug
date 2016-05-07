class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new_form
    # @movie = Movie.new
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

    # render("show")
    render("show.html.erb")
  end

  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    # added
    @movie = Movie.find(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]
# added
@movie.save

    # render("show")
    render("show.html.erb")
  end

  def destroy
    @movie = Movie.find(params[:id])

    @movie.destroy
  end
end
