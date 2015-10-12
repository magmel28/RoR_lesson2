require 'date'

puts 'Введите год рождения:'
year = gets.chomp.to_i.abs

puts 'Введите месяц:'
month = ''
loop do
	month = gets.chomp.to_i.abs
	break if month <= 12
	puts 'Неправильное значение. Введите месяц:'
end

puts 'Введите день:'
day = ''
loop do
	day = gets.chomp.to_i.abs
	break if day <= 31
	puts 'Неправильное значение. Введите день:'
end

seconds = Time.now - Time.new(year, month, day)
minutes = seconds / 60
hours = minutes / 60
days = hours / 24
years = days / 365

puts 'Вы живёте ' + years.to_i.to_s + ' лет или ' + days.to_i.to_s + ' дней или ' + hours.to_i.to_s + ' часов или ' + minutes.to_i.to_s + ' минут или ' + seconds.to_i.to_s + ' секунд.'
