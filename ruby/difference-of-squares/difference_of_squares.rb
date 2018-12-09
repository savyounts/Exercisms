require 'pry'
class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    return 1 if @num == 1
    sum = (1..@num).reduce(:+)
    sum**2
  end

  def sum_of_squares
    (1..@num).map{|n| n**2}.reduce(:+)
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end
