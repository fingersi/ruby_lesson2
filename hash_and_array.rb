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

# Заполнить массив числами от 10 до 100 с шагом 5

array_from = (10..100).step(5).to_a

puts "Получившийся массив"

array_from.each{|index| puts index}