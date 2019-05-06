require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/pig_latin' do
    @str = PigLatinizer.new(params[:str]).to_piglatin
    erb :pig_latin
  end
  
end