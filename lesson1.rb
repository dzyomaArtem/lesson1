require 'date'
class Lesson1
  def sum(val = 0)
    val.split('').map{ |i| i.to_i }.inject{ |val,sum| val + sum }.to_s
  end

  def age(birthday)
	if birthday 
	  days = (Date.parse(Time.now.to_s) - Date.parse(birthday)).to_i 
	  years = days / 365 
	  hours = days * 24 
	  min = hours * 60 
	  sec = min * 60 
	  "Я живу #{years} лет или #{days} дней или #{hours} часов или #{min} минут или #{sec} секунд"
	else 'Неправильный формат даты'
	end
  end

  def name
    surname = gets.chomp
    name = gets.chomp
    middlename = gets.chomp 
    "Hello #{name} #{surname} #{middlename}!"
  end
end