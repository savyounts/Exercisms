class Matrix
  def initialize(values)
    @values = values
  end

  def rows
    @values.split(/\n/).collect{|r| r.split(" ")}
  end
end
