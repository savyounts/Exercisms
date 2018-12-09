class Hamming
  def self.compute(x, y)
    raise ArgumentError if x.size != y.size
    x.select.with_index{|d,i| d if d != y[i]}.size
  end

end
