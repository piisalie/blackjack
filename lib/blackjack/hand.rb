module Blackjack
  class Hand
    attr_reader :hand
    
    def initialize(shoe)
      @shoe = shoe
      @hand = [@shoe.draw, @shoe.draw]    
    end

    def hit
      @hand << @shoe.draw
    end
  end
end
