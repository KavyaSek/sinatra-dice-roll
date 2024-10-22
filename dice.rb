require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:elephant)  
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾, does it?"
end

get ("/dice/2/6") do
  first_die = rand(1..6)
  sec_die = rand (1..6)
  sum = first_die + sec_die 

  @outcome = "You rolled a #{first_die} and a #{sec_die} for a total of #{sum}."

  erb(:two_six)
	
end 

get ("/dice/2/10") do
  first_die = rand(1..10)
  sec_die = rand (1..10)
  sum = first_die + sec_die 

  @outcome = "You rolled a #{first_die} and a #{sec_die} for a total of #{sum}."
	
  erb (:two_ten)
  
end 

get ("/dice/1/20") do
  first_die = rand(1..20)
  sum = first_die 

  @outcome = "You rolled a #{first_die} for a total of #{sum}."
	
  erb(:one_twenty)  
end 

get ("/dice/5/4") do
  first_die = rand(1..4)
  sec_die = rand (1..4)
  third_die = rand (1..4)
  fourth_die = rand (1..4)
  sum = first_die + sec_die + third_die + fourth_die

  @outcome = "You rolled a #{first_die} and a #{sec_die} and a #{third_die} and a #{fourth_die} for a total of #{sum}."

  erb(:five_four)	
  
end 
