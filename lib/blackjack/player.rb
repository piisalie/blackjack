module Blackjack
  class Player
    attr_reader :hand

    def initialize(shoe)
      @hand = Hand.new(shoe) 
    end

    def score
      @score = Score.new(@hand.cards)
    end

  end
end
