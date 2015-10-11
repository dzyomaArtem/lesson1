class MyArray
  attr_accessor :array

  def initialize(arr = [5, 7, 3, 8, 1, 8, 10])
    @array = arr
    p "Начальный массив: #{array.join(", ")}"
  end

  def size
    p "Размер массива: #{array.length}"
  end

  def reverse
    p "Перевернутый массив: #{array.reverse}"
  end

  def max
    p "Наибольший элемент массива: #{array.max}"
  end

  def min
    p "Наименьший элемент массива: #{array.min}"
  end

  def desc
    p "Отсортированный массив (по убыванию): #{array.sort{|a, b| b <=> a}}" 
  end

  def asc
    p "Отсортированный массив (по возрастанию): #{array.sort}" 
  end

  def odd
    p "Нечетные числа массива: #{array.select {|number| number % 2 == 1}}"
  end

  def multiple_to_three
    p "Числа массива кратные 3: #{array.select {|number| number % 3 == 0}}"
  end

  def uniq
    p "Уникальные числа массива: #{array.uniq}"
  end

  def devide_on_ten
    p "Элементы, которые розделены на 10 с значением после запятой: #{array.map { |i| i/10.0 }}"
  end

  def chars
    # TODO
  end

  def switch
    newArr = array.dup
    min = array.index(array.min)
    max = array.index(array.max)
    
    newArr[min], newArr[max] = array.max, array.min
    p "Переставленные местами мин. и максимальный элементы массива: #{newArr}"
  end

  def before_min
    # TODO
  end

  def three_smallest
    # TODO
  end
end

#myArray = MyArray.new


#1
#myArray.size
#2
#myArray.reverse
#3
#myArray.max
#4
#myArray.min
#5
#myArray.desc
#6
#myArray.asc
#7
#myArray.odd
#8
#myArray.multiple_to_three
#9
#myArray.uniq
#10
#myArray.devide_on_ten
#11
#myArray.switch