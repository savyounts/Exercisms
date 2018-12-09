class Isogram
  def self.isogram?(word)
    array = word.downcase.scan(/[a-z]/)
    array == array.uniq
  end
end
