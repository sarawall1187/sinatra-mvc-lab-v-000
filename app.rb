require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinizer = PigLatinizer.new(params[:user_phrase])
    @text = @piglatinizer.piglatinize
    erb :piglatinize
  end
end
