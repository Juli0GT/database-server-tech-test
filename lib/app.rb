require 'sinatra/base'

class DataBaseTest < Sinatra::Base
  enable :sessions
  set :port, 4000

  get '/' do
    'Hello DataBaseTest!'
  end

  get '/set' do
    params.each {|key, value| session[:"#{key}"] = value}
    erb :set
  end

  get '/get' do
    @key = params[:key]
    @value = session[:"#{@key}"]
    erb :get
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
