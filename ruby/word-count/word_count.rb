class Phrase
  attr_accessor :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def split_words
    split = self.phrase.split(/[^\w']+/)
    split.sort_by(&:downcase) || self.phrase
  end

  def group_words(split_words)
    split_words.chunk_while{ |word, el| word.downcase == el.downcase }.to_a
  end

  def word_count
    count = {}
    # require 'pry'; binding.pry
    grouped = self.group_words(self.split_words)
    grouped.each{ |group| count["#{group.first.downcase}"] = group.count}
    count
  end
end
