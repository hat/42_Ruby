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
