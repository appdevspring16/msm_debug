Rails.application.routes.draw do
  # Route for bare domain:
  get('/', { :controller => 'movies', :action => 'index' })

  # Routes for the Director resource:
  # CREATE
  get('/directors/new_form', { :controller => 'directors', :action => 'new_form' }) #OK
  get('/create_director', { :controller => 'directors', :action => 'create_row' })  #OK

  # READ
  get('/directors', { :controller => 'directors', :action => 'index' }) #OK
  get('/directors/:id', { :controller => 'directors', :action => 'show' })  #OK

  # UPDATE
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' }) #OK issue with some keys stored as 'the_...'
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' }) #OK

  # DELETE
  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' }) #OK
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get('/movies/new_form', { :controller => 'movies', :action => 'new_form' }) #OK
  get('/create_movie', { :controller => 'movies', :action => 'create_row' })  #OK

  # READ
  get('/movies', { :controller => 'movies', :action => 'index' }) #OK
  get('/movies/:id', { :controller => 'movies', :action => 'show' })  #OK

  # UPDATE
  get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' }) #OK
  get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })  #OK

  # DELETE
  get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' }) #OK
  #------------------------------

  # Routes for the Role resource:
  # CREATE
  get('/roles/new_form', { :controller => 'roles', :action => 'new_form' }) #OK
  get('/create_role', { :controller => 'roles', :action => 'create_row' })  #OK

  # READ
  get('/roles', { :controller => 'roles', :action => 'index' }) #OK
  get('/roles/:id', { :controller => 'roles', :action => 'show' })  #OK

  # UPDATE
  get('/roles/:id/edit_form', { :controller => 'roles', :action => 'edit_form' }) #OK
  get('/update_role/:id', { :controller => 'roles', :action => 'update_row' }) #OK

  # DELETE
  get('/delete_role/:id', { :controller => 'roles', :action => 'destroy' }) #OK
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get('/actors/new_form', { :controller => 'actors', :action => 'new_form' }) #OK
  get('/create_actor', { :controller => 'actors', :action => 'create_row' })  #OK

  # READ
  get('/actors', { :controller => 'actors', :action => 'index' }) #OK
  get('/actors/:id', { :controller => 'actors', :action => 'show' })  #OK

  # UPDATE
  get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' }) #OK Request-URI Too Large /n WEBrick::HTTPStatus::RequestURITooLarge
  get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' }) #OK

  # DELETE
  get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' }) #OK
  #------------------------------
end
