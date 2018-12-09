class Bob
  def self.hey(remark)
    s = remark.strip
    r = remark.gsub(/[\W]/, "")
    n = remark.gsub(/[\W\d]/, "")
    if !n.empty? && n == n.upcase && s[s.size - 1] == '?'
      'Calm down, I know what I\'m doing!'
    elsif s[s.size - 1] == '?'
        "Sure."
    elsif r.empty?
      'Fine. Be that way!'
    elsif !n.empty? && n == n.upcase
      "Whoa, chill out!"
    else
      'Whatever.'
    end
  end
end
