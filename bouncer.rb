# Normal Mode
  # Write a method called check_age that is called every time the script is run
  # When you run bouncer.rb, it will ask user's age. Then it tells the user what they can do based on their age.
    # If user younger than 18, they can do nothing
    # If user is older than 18, they can vote
    # If user is older than 18, they can smoke
    # If user is older than 21, they can drink
    # If user is older than 25, they can rent a car

# tasks
  # define method called check_age to prompt user for age
  # determine how computer will check eligibility of user based on age inputted
  # this will require conditional check
  # output response based on age

# def check_age(age)
#   if age < 18
#     print "Because you're younger than 18, you can do nothing. Sorry!"
#   elsif (age > 18 && age < 21)
#     puts "Because you're older than 18, you can vote!"
#     puts "Because you're older than 18, you can smoke!"
#   elsif (age >= 21 && age <= 25)
#     print "Because you're older than 21, you can drink!"
#   else
#     print "Because you're older than 25, you can rent a car!"
#   end
# end

# print "How old are you? > "
# age = gets.chomp.to_i
# puts check_age(age)

# ---------===============-----------

# Hard Mode
# Modify the program to run in a loop constantly asking user's age until the user asks to quit.
  # tasks
    # loop do
    # if continue == "Y"

    # elsif continue == "N"

# def check_age(age)
#   if age < 18
#     print "Because you're younger than 18, you can do nothing. Sorry!"
#   elsif (age > 18 && age < 21)
#     puts "Because you're older than 18, you can vote!"
#     puts "Because you're older than 18, you can smoke!"
#   elsif (age >= 21 && age <= 25)
#     print "Because you're older than 21, you can drink!"
#   else
#     print "Because you're older than 25, you can rent a car!"
#   end
# end

# loop do
#   puts "Would you like to check your age? (Y)es or (N)o > "
#   continue = gets.chomp.upcase
#   if continue == "Y"
#     print "How old are you? > "
#     age = gets.chomp.to_i
#     puts check_age(age)
#   elsif continue == "N"
#     puts "Nice knowing ya!"
#     exit
#   end
# end

# Nightmare Mode

def usa_age(age)
  if age < 18
    print "Because you're younger than 18, you can do nothing. Sorry!"
  elsif (age > 18 && age < 21)
    puts "Because you're older than 18, you can vote!"
    puts "Because you're older than 18, you can smoke!"
  elsif (age >= 21 && age <= 25)
    print "Because you're older than 21, you can drink!"
  else
    print "Because you're older than 25, you can rent a car!"
  end
end

def uk_age(age)
  if age < 16
    print "Because you're younger than 16, you can do nothing. Sorry!"
  elsif ( age == 16 || age == 17 )
    print "Are your parents around? > "
    ask = gets.chomp.upcase
    if ask == "Y"
      puts "By all means, drink your heart out!"
    elsif ask == "N"
      puts "I'm sorry! You won't be able to drink."
    end
  elsif ( age >= 18 && age < 21 )
    puts "Because you're 18 or older, you can drink!"
    puts "Because you're 18 or older, you can vote!"
    puts "Because you're 18 or older, you can smoke!"
  elsif (age >= 21 && age <= 25)
    puts "Because you're older than 21, you can drink!"
  else
    puts "Because you're older than 25, you can rent a car!"
  end
end

loop do
  puts "Would you like to check your age? (Y)es or (N)o > "
  continue = gets.chomp.upcase
  if continue == "Y"
  puts "What country are you from? (A)USA or (B)UK? > "
  loc = gets.chomp.upcase
    if loc == "A"
      print "How old are you? > "
      age = gets.chomp.to_i
      usa_age(age)
    elsif loc == "B"
      print "How old are you? > "
      age = gets.chomp.to_i
      uk_age(age)
    end
  elsif continue == "N"
    puts "Nice knowing ya!"
    exit
  else
    puts "What?"
    exit
  end
end

