require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Chitterland'
  end

  get '/user_account' do
    'Hello'
  end

  run! if app_file == $0
end
