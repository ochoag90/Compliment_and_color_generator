require 'sinatra'
require 'sinatra/reloader'

compliments = [
	"You're the best!",
	"High five!",
	"You are beautiful!",
	"Is it almost beer o'clock?",
	"The Force is strong with you!"
	]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080","#4286f4"]

get '/' do 
	@compliments = compliments
	@color = colors[rand(colors.length)]
	erb :compliment
end

get '/:name' do
	@name = params[:name]
	@compliments = compliments
	@color = colors[rand(colors.length)]
	erb :personalized

end 

post '/:name' do
	@color = colors[rand(colors.length)]
	@comp = 
	erb :user
end 