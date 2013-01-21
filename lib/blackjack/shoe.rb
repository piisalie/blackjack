module Blackjack
  class Shoe
    def initialize(number_of_decks=4)
      @cards = *(1..number_of_decks*52)
    end

    def define(number)
      case number
      when 1
        "A"
      when 11
        "J"
      when 12
        "Q"
      when 0
        "K"
      else
        number
      end
    end

    def draw
      card = @cards.sample
      @cards = @cards - [card]
      define(card % 13)
    end
  end
end
