require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        x = PigLatinizer.new
        @output = x.piglatinize(params[:user_phrase])
        erb :piglatinizer
    end
end