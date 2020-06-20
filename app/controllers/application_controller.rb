class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    redirect to '/recipes'
  end

<<<<<<< HEAD
  get "/signup" do
    erb :signup
  end

  post "/signup" do
    if params[:username]=="" || params[:password]==""
      redirect to '/failure'
    end
    user = User.new(username: params[:username], password: params[:password])
    if user.save
			redirect to "/login"
		else
			redirect to "/failure"
		end

=======
  get '/recipes' do
    @recipes = Recipe.all
    erb :index
>>>>>>> 90cf43f5e6153879d07da07a2fc920d74c5a30a6
  end

  get '/recipes/new' do
    erb :new
  end

  get '/recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end

<<<<<<< HEAD
  post "/login" do
    user = User.find_by(:username => params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect to "/account"
		else
			redirect to "/failure"
		end
=======
  delete '/recipes/:id' do
    Recipe.find_by_id(params[:id]).destroy
    redirect to '/recipes'
>>>>>>> 90cf43f5e6153879d07da07a2fc920d74c5a30a6
  end

  get '/recipes/:id/edit' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :edit
  end

  post '/recipes' do
    recipe = Recipe.create(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
    redirect to "/recipes/#{recipe.id}"
  end

  patch '/recipes/:id' do
    recipe = Recipe.find_by_id(params[:id])
    recipe.update(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
    redirect to "/recipes/#{recipe.id}"
  end
end
