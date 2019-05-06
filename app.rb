require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/pig_latin' do
    piglatinizer = PigLatinizer.new
    @str = piglatinizer.piglatinize(params[:str])
    erb :pig_latin
  end
  
end