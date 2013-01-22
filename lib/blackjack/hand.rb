module Blackjack
  class Hand
    attr_reader :cards
    
    def initialize(shoe)
      @shoe = shoe
      @cards = [@shoe.draw, @shoe.draw]
    end

    def hit
      @cards << @shoe.draw
    end
    
  end
end
