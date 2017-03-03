# Program to ask for two integers and an operation to execute

# def operate(int1, operator, int2)
#   case operator
#   when 1
#     puts int1.to_s + ' + ' + int2.to_s + ' = ' + (int1 + int2).to_s
#   when 2
#     puts int1.to_s + ' - ' + int2.to_s + ' = ' + (int1 - int2).to_s
#   when 3
#     puts int1.to_s + ' * ' + int2.to_s + ' = ' + (int1 * int2).to_s
#   when 4
#     puts int1.to_s + ' / ' + int2.to_s + ' = ' + (int1 / int2).to_s
#   end
# end
#
# def calculator
#   print 'Enter an integer: '
#   int1 = gets.chomp.to_i
#   print 'Pick an operator: \n1) Addition (+), 2) Subtraction (-),'\
#   ' 3) Multiplication (x), 4) Division(/): '
#   operator = gets.chomp.to_i
#   print 'Enter an integer: '
#   int2 = gets.chomp.to_i
#   operate(int1, operator, int2)
# end
#
# calculator
# again = 'Y'
# until again == 'N'
#   print 'Use calculator again? (Y/N)'
#   again = gets.chomp.upcase
#   if again == 'Y'
#     calculator
#   else
#     puts 'Closing calculator...'
#   end
# end

# map gets multiple values at once
def int_values
  [gets, gets].map { |s| s.chomp.to_i }
end

run = 'Y'
while run == 'Y'

  puts 'Would you like to 1) add(+), 2) subtract(-) 3) multiply(*),'\
  'or 4) divide(-)?'
  response = gets.chomp

  # : sign tells compiler identity is imoprtant
  case response
  when '1'
    puts 'Enter two numbers to add: '
    operator = :+
  when '2'
    puts 'Enter two numbers to subtract: '
    operator = :-
  when '3'
    puts 'Enter two numbers to multiply: '
    operator = :*
  when '4'
    puts 'Enter two numbers to divide: '
    operator = :/
  end

  nums = int_values
  answer = nums.inject(operator)
  puts "#{nums[0]} #{operator} #{nums[1]} = #{answer}"

  puts 'Use calculator again? (\'Y\' or \'N\')'
  run = gets.chomp.upcase
end
