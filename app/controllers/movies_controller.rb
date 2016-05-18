class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by({ :id => params[:id]})
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

    render ("show.html.erb")
  end

  def edit_form
    @movie = Movie.find_by({ :id => params[:id]})
  end

  def update_row
    @movie = Movie.find_by({ :id => params[:id]})
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]
    @movie.save

    render("show")
  end

  def destroy
    @movie = Movie.find_by({ :id => params[:id]})
    @movie.destroy
    render ("destroy.html.erb")
  end
end

# def delete
#   d = Photo.find_by({ :id => params[:id]})
#   d.destroy
#   redirect_to("http://localhost:3000/photos")
# end
 #
 # Parameters: {"title"=>"", "year"=>"", "duration"=>"", "description"=>"", "image_url"=>"", "director_id"=>"1"}
