class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort { |a, b| b <=> a }
  end

  def asc
    @array.sort
  end

  def odd
    @array.select(&:odd?)
  end

  def multiple_to_three
    @array.select { |number| number % 3 == 0 }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map { |i| i / 10.0 }
  end

  def chars
    alphabet = ('a'..'z').to_a.map(&:to_sym)
    @array.map { |val| alphabet[val - 1] }
  end

  def switch
    min = @array.index(@array.min)
    max = @array.index(@array.max)
    @array[min], @array[max] = @array[max], @array[min]
    @array
  end

  def before_min
    @array.select { |val| @array.index(val) < @array.index(@array.min) }
  end

  def three_smallest
    @array.sort.take(3)
  end
end
