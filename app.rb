require 'sinatra/base'
require 'sinatra/reloader'

class Chitter < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Chitterland'
  end

  get '/peeps' do
    peep = ["Peeps ahoy!", 
            "Dis peep, dat peep"].join(" ")
  end



  run! if app_file == $0
end