require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

windows = Startup.new("Windows", "Gates", "Tech")
apple = Startup.new("Apple", "Jobs", "Tech")
rawr = Startup.new("RAWR", "Hunger Man", "Food")
investor1 = VentureCapitalist.new("investor1", 5968765432)
investor2 = VentureCapitalist.new("investor2", 3968765432)
investor3 = VentureCapitalist.new("investor3", 968765432)
investor4 = VentureCapitalist.new("investor4", 968765432)
investor1.offer_contract(windows, "cause", 5000000)
investor2.offer_contract(windows, "cause", 5400000)
investor1.offer_contract(apple, "cause", 900000)
rawr.sign_contract(investor3, "cause", 5)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line