# TODO: Rewrite
module Fixtures
  class Unknown
    def self.get
      [
        '6763352883209594', '3566002020360505', '6304568157605821',
        '6015787788787887', '6212341111111111', '6304449590462692',
        '7878787', '46786876356746773'
      ]
    end
  end

  class Known
    def self.get
      [
        { number: '4532589937743830', result: 'Visa' },
        { number: '4556400940638', result: 'Visa' },
        { number: '344576452151867', result: 'American Express' },
        { number: '344576fg2151867', result: 'American Express' },
        { number: '377008510366741', result: 'American Express' },
        { number: '6011999343717945', result: 'Discover' },
        { number: '6011130833720864', result: 'Discover' },
        { number: '5162199965127759', result: 'MasterCard' },
        { number: '5543658882767211', result: 'MasterCard' },
        { number: '5317262128812974', result: 'MasterCard' },
        { number: '5468609371793482', result: 'MasterCard' },
        { number: '5286525981898422', result: 'MasterCard' }
      ]
    end
  end

  class Valid
    def self.get
      [
        '4929753472651714', '4556936273512', '4716850022810472', '348477471728346',
        '375427911135236', '340026112901230', '6011197970546576', '6011859264224331',
        '6011610511702458', '5360105338582869', '5423861192284001', '38642151603987',
        '5539576869152817', '5263017794641147', '5529090693130769', '30342378002687',
        '30212595749123', '6763352883209594', '0604582949742123', '6304568157605821'
      ]
    end
  end

  class Invalid
    def self.get
      [
        '453258993774383', '49297534726517', '455640094063', '4556936573512',
        '4716850022810479', '3445764521581867', '348477471728349', '375427951135236',
        '340026112901237', '601199934617945', '60111308337208864',
        '6011197980546576', '6011859264224335', '6011610516702458',
        '516219996512775', '5317262128812979', '55436588827689211',
        '5468609371793485', '5286675981898422', '627586490735467264590'
      ]
    end
  end

  class CardExample
    def self.get
      [
        { number: '4556400940638', info: 'Visa, valid number' },
        { number: '4532589937743830', info: 'Visa, valid number' },
        { number: '374390352414489', info: 'American Express, valid number' },
        { number: '344145437531872', info: 'American Express, valid number' },
        { number: '6011999343717945', info: 'Discover, valid number' },
        { number: '6011130833720864', info: 'Discover, valid number' },
        { number: '5162199965127759', info: 'MasterCard, valid number' },
        { number: '5543658882767211', info: 'MasterCard, valid number' },
        { number: '5317262128812974', info: 'MasterCard, valid number' },
        { number: '5468609371793482', info: 'MasterCard, valid number' },
        { number: '5286525981898422', info: 'MasterCard, valid number' },
        { number: '6036927014612492', info: 'Unknown, valid number' },
        { number: '4532589937743835', info: 'Visa, invalid number' },
        { number: '2440009816826', info: 'Unknown, invalid number' },
        { number: '5356777735465733', info: 'MasterCard, invalid number' },
        { number: '34fg343445556', info: 'Enter a credit card number' }
      ]
    end
  end
end
