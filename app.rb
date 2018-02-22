require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin = PigLatinize.convert(params[:user_phrase])

    erb :results
  end
end
