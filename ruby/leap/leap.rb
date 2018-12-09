class Year
  def self.leap?(year)
    if year % 4 == 0
        year % 100 == 0 ? divisible_by_400?(year) : true
    end
  end

  def self.divisible_by_400?(year)
    year % 400 == 0
  end
end
