require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_input = params[:user_phrase]
    words = PigLatinizer.new
    @piglatinized_phrase = words.piglatinize(@user_input)
    erb :pig_latinizer
  end
end