require 'pry'
class Raindrops
  SOUNDS = {"Pling":3, "Plang":5, "Plong":7}
  
  def self.convert(x)
    string = SOUNDS.collect{|w,n| w if x%n == 0}.join
    string.empty? ? x.to_s : string
  end
end
