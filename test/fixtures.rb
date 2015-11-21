# TODO: Rewrite
module Fixtures
  class Unknown
    def self.get
      [
        '6763352883209594',
        '3566002020360505',
        '6304568157605821',
        '6212341111111111',
        '6304449590462692',
        '7878787',
        '46786876356746773',
        '6015787788787887'
      ]
    end
  end

  class Known
    def self.get
      [
        { number: '4532589937743830', result: 'Visa' },
        { number: '4556400940638', result: 'Visa' },
        { number: '344576452151867', result: 'American Express' },
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
      {
        visa: [
          '4929753472651714',
          '4556936273512',
          '4716850022810472'
        ],
        amex: [
          '348477471728346',
          '375427911135236',
          '340026112901230'
        ],
        discover: [
          '6011197970546576',
          '6011859264224331',
          '6011610511702458'
        ]
      }
    end
  end

  class Invalid
    def self.get
      {
        visa: {
          length: [
            '453258993774383',
            '49297534726517',
            '455640094063',
          ],
          luhn: [
            '4556936573512',
            '4716850022810479'
          ]
        },
        amex: {
          length: [
            '3445764521581867',
            '37700851036741',
          ],
          luhn: [
            '348477471728349',
            '375427951135236',
            '340026112901237'
          ],
        },
        discover: {
          length: [
            '601199934617945',
            '60111308337208864',
          ],
          luhn: [
            '6011197980546576',
            '6011859264224335',
            '6011610516702458'
          ]
        },
        mastercard: {
          length: [
            '516219996512775',
            '55436588827689211',
          ],
          luhn: [
            '5317262128812979',
            '5468609371793485',
            '5286675981898422'
          ]
        }
      }
    end
  end
end
