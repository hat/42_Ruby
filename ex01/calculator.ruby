#Program to ask for two integers and an operation to execute
print "Enter an integer: "
int1 = gets.chomp.to_i
print "Pick an operator: \n1) Addition (+), 2) Subtraction (-),\
3) Multiplication (x), 4) Division(/): "
operator = gets.chomp.to_i
print "Enter an integer: "
int2 = gets.chomp.to_i
case operator
when 1
  puts int1.to_s + " + " + int2.to_s + " = " + (int1 + int2).to_s
when 2
  puts int1.to_s + " - " + int2.to_s + " = " + (int1 - int2).to_s
when 3
  puts int1.to_s + " * " + int2.to_s + " = " + (int1 * int2).to_s
when 4
  puts int1.to_s + " / " + int2.to_s + " = " + (int1 / int2).to_s
end
