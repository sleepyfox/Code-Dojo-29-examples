require 'sinatra'

configure do
  set :port, 1337
end

def answer(question)
	if question == "4"
		return "Thou shalt not count to Four"
	else
		return "team name"
	end
end

get '/' do
	puts "Q: #{params[:q]}\n" 
    answer(params[:q])
end
