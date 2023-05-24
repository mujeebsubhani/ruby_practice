# frozen_string_literal: true

# Begin and END

puts ("Hello world")

END{
  puts("Terminate the code")
}
BEGIN{
  puts("Add the code")
}

########## Classes in Ruby ############


class Customer
  @@no_of_customers = 0

  def initialize(id, name, address)
    @cust_id = id
    @cust_name = name
    @cust_addr = address
  end

  def display
    puts(@cust_id, @cust_name, @cust_addr, @@no_of_customers)
  end
end

cust1 = Customer.new("1", "JOhn", "Wapda T")
cust1.display()


class Sample
  def display
    puts ("Hello Ruby")
  end
end

s_obj = Sample.new()
s_obj.display()

# Global Variables

$PI = 3.14
class Calculator
  def pi_value
    print("The value of PI is : ", $PI, "\n")
  end
end

m_obj = Calculator.new()
m_obj.pi_value()


### Instance Variable

class Calculator1
  @@no_of_calculations = 0
  def initialize(num1, num2)
    @c_num1 = num1
    @c_num2 = num2
  end

  def sum_of_values()
    print("The sum is : ", @c_num1 + @c_num2, "\n")
  end

  def calculations()
    @@no_of_calculations = @@no_of_calculations + 1
    puts("The total calculations are : ", @@no_of_calculations)
  end
end

cal_obj = Calculator1.new(3,8)
cal_obj.sum_of_values()
cal_obj.calculations()


######## Ruby Arrays ##########

arr = ['apple', 7, 3.17, "last"]
arr.each do |i|
  puts i
end

#### Hash ####

fruit = {"apple" => 1, "mango" => 2}
fruit.each do |key, value|
  print(key, " has ", value, "\n")
end

### Range ###

(2..30).each do |n|
  print(n)
end

## Conditional Statements

x = 10
if x < 9
  puts("g")
elsif x > 0
  puts "h"
end

### Loops in Ruby

$i = 0
$num = 5

for i in 0..5
  puts i
end

ary = [5,8,9]
for i in ary
  puts i
end


def sum(num1, num2)
  return num1 + num2
end

puts sum(1,2)

# Blocks in Ruby

def add
  yield 5
  puts 8 + 2
  yield 100
end

add {|i| puts "In block #{i}"}


def add_num
  return 4 + 5
end

def sub_num
  return 7 - 2
end

module Cal
  puts add_num
  puts sub_num
end


names = Array.new(20)
puts names.size  # This returns 20
puts names.length # This also returns 20


class Box
  # constructor method
  def initialize(w,h)
    @width, @height = w, h
  end
  # define to_s method
  def to_s
    "(w:#@width,h:#@height)"  # string formatting of the object.
  end
end

# create an object
box = Box.new(10, 20)

# to_s method will be called in reference of string automatically.
puts "String representation of box is : #{box}"