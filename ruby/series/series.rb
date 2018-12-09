class Series
  def initialize(num)
    @num = num
  end

  def slices(s)
    raise ArgumentError if @num.size < s
    @num.chars.each_cons(s).map(&:join)
  end

end
