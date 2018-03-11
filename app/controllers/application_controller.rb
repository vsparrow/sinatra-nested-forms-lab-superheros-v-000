require 'sinatra/base'
require './config/environment.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    # Create a route that responds to a GET request at /.
    get '/' do
      # Create a view with a form and render it in the GET / route.
      erb :super_hero
    end
    # The form should have fields for the name of a superhero team and their motto.
    # There should be form inputs for each of the three superhero member's name, power, and bio.
    post '/team' do
      erb :team
    end
end
