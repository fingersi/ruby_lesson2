require 'date'

# Сделать хеш, содержащий месяцы и количество дней в месяце. 
# В цикле выводить те месяцы, у которых количество дней ровно 30

days_in_months = [nil, 31, 28, 31, 30, 31, 30, 31,
31, 30, 31, 30, 31]

hash_with_month = {}

for month in 1..12
  hash_with_month[Date::MONTHNAMES[month]] = days_in_months[month]
end

thirty_days_only = {}

hash_with_month.each{|month, days| thirty_days_only[month] = days if days == 30}

puts thirty_days_only

puts  'Заполнить массив числами от 10 до 100 с шагом 5'

array_from = (10..100).step(5).to_a

puts "Получившийся массив"

array_from.each{|index| puts index}

puts 'Заполнить массив числами фибоначчи до 100'

fibonacci_array = [0,1]

index = 1

puts 'Числа Фибоначчи до 100'

loop do

  temp = fibonacci_array[index -1] + fibonacci_array[index]
  if temp < 100
    fibonacci_array[index + 1] = temp
    puts fibonacci_array[index + 1]
    index += 1
  else
    break
  end
end

puts "Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1)."
hash_with_vowel = {}
index = 1
('a'..'z').to_a.each do |letter| 
  hash_with_vowel[letter] = index if letter.scan(/[aeoui]/).any?
  index += 1
end

hash_with_vowel.each{|letter, number| puts "Гласная: #{letter}. Её порядковый номер в алфавите: #{number}" }

