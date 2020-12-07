
puts 'Программа поиска порядкового номера даты'
puts 'Введите дату в формате День:Месяц:Год'

day = 0
month = 0
year = 0 

loop do
  puts 'Введите День. Введите целое число не равное нулю и меньшее 31.'
  day_input = gets.chomp
  if day_input.to_i > 0 && day_input.scan(/^-?[0-9]+$/).any? && day_input.to_i <= 31 && !day_input.scan(/[.]+/).any?
    day = day_input.to_i
    break
  else
    puts 'Вы ввели не целое число. Повторите вводит и введите целое число.'
  end
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

puts "Вы ввели сдедующую дату: #{day}.#{month}.#{year}"

