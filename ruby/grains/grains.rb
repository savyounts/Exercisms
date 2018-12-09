require 'pry'
class Grains
  def self.square(n, total: 1)
    n.between?(1,64) ? 2**(n-1) : (raise ArgumentError)
  end

  def self.total
    (1..64).reduce{|sum, n| sum + square(n)}
  end
end
