class Validator
  class << self
    def validate(number)
      checkdigit = number[-1].to_i
      sum = 0

      number.chop.reverse.split('').map(&:to_i).each_with_index do |digit, i|
        digit *= 2 if (i + 1) % 2 == 1
        digit -= 9 if digit > 9
        sum += digit
      end

      return ((sum % 10) + checkdigit) % 10 == 0 ? 'valid number' : 'invalid number'
    end
  end
end
