require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @reverse = params[:name].reverse
  end

  get get '/square/:number' do
    @square_num = params[:number].to_i ** 2
  end
end
