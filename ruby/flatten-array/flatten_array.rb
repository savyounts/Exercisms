require 'pry'
class FlattenArray
  def self.flatten(array)
    array.flatten.select {|element| element if element}
  end
end
