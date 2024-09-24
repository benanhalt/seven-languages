# Print the string "Hello, World!"
puts 'Hello, World!'

# For the string "Hello, Ruby" find the index of the word "Ruby."
puts 'Hello, Ruby'.index('Ruby')

# Print your name ten times.
for i in (1..10)
  puts 'Ben'
end

# Print the string "This is sentence number i," where i changes from 1 to 10.
for i in (1..10)
  puts "This is sentence number #{i}."
end

# Bonus problem.
number = rand(10)
while true
  puts 'Guess my number!'
  guess = Integer(gets)
  if guess == number
    puts 'You win!'
    break
  end
  if guess < number
    puts 'My number is higher!'
  end
  if guess > number
    puts 'My number is lower!'
  end
end
