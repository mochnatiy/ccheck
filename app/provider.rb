class Provider
  class << self
    def identity(number)
      case number[0]
      when '3'
        check_amex(number)
      when '4'
        check_visa(number)
      when '5'
        check_master_card(number)
      when '6'
        check_discover(number)
      else
        'Unknown'
      end
    end

    # TODO: Possibly add the regexp check
    private
    def check_visa(number)
      if number[0].to_i == 4 && (number.size == 16 || number.size == 13)
        'Visa'
      else
        'Unknown'
      end
    end

    def check_master_card(number)
      if (51..55).include?(number[0..1].to_i) && number.size == 16
        'MasterCard'
      else
        'Unknown'
      end
    end

    def check_discover(number)
      if number[0..3].to_i == 6011 && number.size == 16
        'Discover'
      else
        'Unknown'
      end
    end

    def check_amex(number)
      if [34, 37].include?(number[0..1].to_i) && number.size == 15
        'American Express'
      else
        'Unknown'
      end
    end
  end
end
