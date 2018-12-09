class CollatzConjecture
  def self.steps(n, count = 0)
    return count if n == 1
    raise ArgumentError if n < 1
    n.even? ? steps(n/2, count + 1) : steps(n*3+1, count + 1)
  end

end
