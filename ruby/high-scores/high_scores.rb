class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.last
  end

  def personal_best
    scores.sort.last
  end

  def personal_top
    scores.sort.reverse[0,3]
  end

  def compare
    self.latest < self.personal_best ? ("That's #{self.personal_best - self.latest} short of your personal best!") :
      ("That's your personal best!")
  end


  def report
    "Your latest score was #{self.latest}. #{self.compare}"
  end



end
