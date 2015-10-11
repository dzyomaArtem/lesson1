require 'date'
class Lesson1
  def sum(val = 0)
    p "Сумма введених чисел: #{val.split('').map{ |i| i.to_i }.inject{ |val,sum| val + sum }.to_s}"
  end

  def age(birthday)
	timeNow = Time.now
	#birthday = Time.mktime(1995, 7, 23)
	secondValue = timeNow - birthday
	second = secondValue.to_i
	#years = timeNow.year - birthday.year
	p "Я живу #{second/(3600*365*24)} лет или #{second/(3600*24)} дней или #{second/3600} часов или #{second/60} минут или #{second} секунд"
  end

  def name
    p "Введите фамилию:"
    surname = gets.chomp
    p "Введите имя:"
    name = gets.chomp
    p "Введите отчество:"
    middlename = gets.chomp 
    p "Hello #{surname.capitalize.to_s + " " + name.capitalize.to_s + " " + middlename.capitalize.to_s}!"
  end
end

l1 = Lesson1.new
#numbers = gets.chomp
#l1.sum(numbers)
#--------------
dateOfBirthday = Time.mktime(1995, 11, 4)
l1.age(dateOfBirthday)
#l1.name