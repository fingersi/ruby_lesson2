
puts 'Программа поиска порядкового номера даты'
puts 'Введите дату в формате День:Месяц:Год'

day = 0
month = 0
year = 0 

loop do
  puts 'Введите День. Введите целое число не равное нулю.'
  day_input = gets.chomp
  puts "day_input.to_i == day_input.to_f #{day_input.to_i == day_input.to_f}"
  puts "day_input.to_i #{day_input.to_i}"
  puts "day_input.to_f #{day_input.to_f}"
  if day_input.to_i == 0
   puts 'Вы ввели символы или ноль. Повторите вводит и введите целое число'
  elsif day_input.to_i == day_input.to_f
    day = day_input.to_i 
    break
  else
    puts "Вы ввели число с плавающей точкой. Повторите вводит и введите целое число"
  end
end

loop do
  puts 'Введите Месяц. Введите целое число не равное нулю.'
  month_input = gets.chomp
  if month_input.to_i == 0
   puts 'Вы ввели символы или ноль. Повторите вводит и введите целое число'
  elsif month_input.to_i == month_input.to_f
    month = month_input.to_i 
    break
  else
    puts "Вы ввели число с плавающей точкой. Повторите вводит и введите целое число"
  end
end

loop do
  puts 'Введите Год. Введите целое число не равное нулю.'
  year_input = gets.chomp
  if year_input.to_i == 0
   puts 'Вы ввели символы или ноль. Повторите вводит и введите целое число'
  elsif year_input.to_i == year_input.to_f
    year = year_input.to_i 
    break
  else
    puts "Вы ввели число с плавающей точкой. Повторите вводит и введите целое число"
  end
end

puts day
puts "Вы ввели сдедующую дату: #{day}.#{month}.#{year}"