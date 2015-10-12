puts 'Введите число:'
num = gets.chomp.split('')
sum = 0
num.each{|x| sum += x.to_i}
puts sum


