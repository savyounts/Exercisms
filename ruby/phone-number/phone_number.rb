require 'pry'
class PhoneNumber
  def self.clean(number)
    clean = number.gsub(/\W/ ,"")
    return nil if !valid_size?(clean)
    return nil if !valid_area_code?(clean)
    clean.size == 11 ? valid_country_code?(clean) : clean
  end

  def self.valid_size?(number)
    number.size.between?(10,11)
  end

  def self.valid_area_code?(number)
    ten_digit = number[number.size - 10 ..-1]
    ten_digit[0].to_i.between?(2,9) && ten_digit[3].to_i.between?(2,9)
  end

  def self.valid_country_code?(number)
    number[0] == "1" ? number[1..-1] : nil
  end

end
