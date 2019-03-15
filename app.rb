require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @square_num = params[:number].to_i ** 2
    "#{@square_num}"
  end

  get '/say/:number/:phrase'
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do "#{@phrase}"
end
