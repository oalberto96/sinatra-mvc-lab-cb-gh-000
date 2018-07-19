require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    pig_text = PigLatinizer.new(params[:text])
    @translated_text = pig_text.translate
    erb :piglatinize
  end
end
