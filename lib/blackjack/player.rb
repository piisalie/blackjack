module Blackjack
  class Player

    def initialize(shoe)
      @hand = Hand.new(shoe) 
    end

    def score
      @score = Score.new(@hand.cards)
      @score.total
    end

    def show_hand
      @hand.cards
    end

  end
end
