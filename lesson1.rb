require 'date'
class Lesson1
  def sum(val = 0)
    p "Сумма введених чисел: #{val.split('').map{ |i| i.to_i }.inject{ |val,sum| val + sum }.to_s}"
  end

  def age(birthday)
	if birthday 
	  days = (Date.parse(Time.now.to_s) - Date.parse(birthday)).to_i 
	  years = days / 365 
	  hours = days * 24 
	  min = hours * 60 
	  sec = min * 60 
	  p "Я живу #{years} лет или #{days} дней или #{hours} часов или #{min} минут или #{sec} секунд"
	else 'Неправильный формат даты'
  end

  def name
    p "Введите фамилию:"
    surname = gets.chomp
    p "Введите имя:"
    name = gets.chomp
    p "Введите отчество:"
    middlename = gets.chomp 
    p "Hello #{name.capitalize.to_s + " " + surname.capitalize.to_s + " " + middlename.capitalize.to_s}!"
  end
end