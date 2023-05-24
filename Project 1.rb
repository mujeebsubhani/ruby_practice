# frozen_string_literal: true

# write a program that prints the squares of all numbers from 1 to
# a number n entered by the user. a sample run can be as the following:
# Enter a number : 3
# 1  1
# 2  4
# 3  9
# Do another (Y/N): y
# Enter a number : 2
# 1  1
# 2  4
# Do another (Y/N): n

def get_num_square(limit)
  $terminate = 'Y'

  while $terminate != 'N'
    for i in (1..limit)
      puts "The square of #{i} is #{i * i}"
    end

    puts "Do you want to go again (Y/N) : "
    $terminate = gets.chomp()

    if $terminate == 'N'
      break
    else
      puts "Enter a new limit: "
      l = gets.chomp().to_i
      get_num_square(l)
    end
  end
end

get_num_square(7)