require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reversename/:name' do 
      name = params[:name]
      name.reverse
  end

  get '/square/:number' do 
      number = params[:number].to_i
      square = (number*number)
      square.to_s
  end

  get '/say/:number/:phrase' do 
    x = params[:number].to_i
    phrase = params[:phrase]
    render = []
    x.times do
      render << phrase
    end
    render.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      sentence = params.values.collect {|x| x }
      sentence.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do 
      operation = params[:operation]
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i
      if operation == 'add'
        result = num1 + num2
      elsif operation == 'subtract'
        result = num1 - num2
      elsif operation == 'multiply'
        result = num1 * num2
      else
        result = num1 / num2
      end
      result.to_s
  end

end
