
def multiply(first, last) #arity of 2
    first * last
end

def double(x)
  x * 2
end

def square(x)
  x * x
end
#arity; (number of arguments)

system('clear') #system method runs any string you give it on the command line
puts "Welcome to Square-ulator"

loop do #this will continue to run until user wants to quit
  puts "Would you like to (D)ouble a number, (S) a number or (Q)uit?"
  print "(D, S or Q) > "
  response = gets.chomp.upcase
  if response == "D"
    print "What number do you want to double? > "
    response_number = gets.chomp.to_i
    puts "Double of #{response_number} is #{double(response_number)}"
  elsif response == "S"
    print "What number do you want to square? > "
    response_number = gets.chomp.to_i
    puts "Square of #{response_number} is #{square(response_number)}"
  elsif response == "Q"
    puts "Goodbye!"
    exit
  else
    puts "What?"
  end#--of if
end #--of loop

# print "What number do you want to square? > "
# response_number = gets.chomp.to_i
# puts "Square of #{response_number} is #{square(response_number)}"
