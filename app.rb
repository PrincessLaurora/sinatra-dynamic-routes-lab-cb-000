require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get '/square/:number' do
    @square_num = params[:number].to_i ** 2
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @add = params[:number1] + params[:number2]
    @subtract = params[:number1] - params[:number2]
    @multiply = params[:number1] * params[:number2]
    @divide = params[:number1] / params[:number2]
  end

end
