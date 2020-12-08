
puts 'Программа поиска порядкового номера даты'
puts 'Введите дату в формате Год:Месяц:День'

day = 0
month = 0
year = 0 

loop do
  puts 'Введите Год. Введите целое число не равное нулю и меньшее 9999.'
  year_input = gets.chomp
  if year_input.to_i > 0 && year_input.scan(/^-?[0-9]+$/).any? && year_input.to_i <= 9999 && !year_input.scan(/[.]+/).any?
    year = year_input.to_i
    break   puts 'Вы ввели символы или ноль. Повторите вводит и введите целое число'
  else
    puts 'Вы ввели не целое число. Повторите вводит и введите целое число.'
  end
end

leap_year = false

if year % 4 == 0  
  if year % 100 == 0 && !(year % 400 == 0)
    puts 'Вы ввели не высокосный год.'
  elsif year % 100 == 0 && year % 400 == 0
    puts ' Вы ввели высокосный год.' 
    leap_year = true
  else
    puts 'Вы ввели высокосный год.'
    leap_year = true
  end
else
  puts 'Год не высокосный.'
end

loop do
  puts 'Введите Месяц. Введите целое число не равное нулю и меньшее 12.'
  month_input = gets.chomp
  if month_input.to_i > 0 && month_input.scan(/^-?[0-9]+$/).any? && month_input.to_i <= 12 && !month_input.scan(/[.]+/).any?
    month = month_input.to_i
    break
  else
    puts 'Вы ввели не целое число. Повторите вводит и введите целое число.'
  end
end

days_in_months = [nil, 31, 28, 31, 30, 31, 30, 31,
  31, 30, 31, 30, 31]

if month == 2 && leap_year
  days_in_months[2] = 29
end


loop do
  puts "Введите День. Введите целое число не равное нулю и меньшее или равное: #{days_in_months[month]}."
  day_input = gets.chomp
  day_limit = 0


  if day_input.to_i > 0 && day_input.scan(/^-?[0-9]+$/).any? && day_input.to_i <= days_in_months[month] && !day_input.scan(/[.]+/).any?
    day = day_input.to_i
    break
  else
    puts 'Вы ввели не целое число. Повторите вводит и введите целое число.'
  end
end





puts "Вы ввели сдедующую дату: #{day}.#{month}.#{year}"


