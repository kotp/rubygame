e = GameEngine.new
e.number # => it should be something between 0 and 100
n = e.number
e.attempts # => it should be 0
e.guess(n - 1) # => it should return :bigger
e.attempts # => it should be 1
e.guess(n + 1) # => it should return :smaller
e.attempts # => it should be 2
e.guess(n) # => it should return :guessed
e.attempts # => it should be 3