require "sinatra"
require "sinatra/reloader"

get("/")do
erb(:home_page)
end

get("/dice/:number_of_dice/:number_of_sides") do
  @rolls = []
  @num_dice = params.fetch("number_of_dice").to_i
  @num_sides = params.fetch("number_of_sides").to_i

  @num_dice.times do
    die = rand(1..@num_sides)
    @rolls.push(die)
  end

  erb(:flexible)
end
