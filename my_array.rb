class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.length
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
    @array.sort{|a, b| b <=> a}
  end

  def asc
    @array.sort
  end

  def odd
    @array.select {|number| number % 2 == 1}
  end

  def multiple_to_three
    @array.select {|number| number % 3 == 0}
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map { |i| i/10.0 }
  end

  def chars
    # TODO
  end

  def switch
    @newArr = @array.dup
    min = @array.index(@array.min)
    max = @array.index(@array.max)
    
    @newArr[min], @newArr[max] = @array.max, @array.min
  end

  def before_min
    if @array.index(@array.min) == 0
      []
    else
      @array[@array.index(@array.min) - 1]
    end
  end

  def three_smallest
    @array.sort.take(3)
  end
end