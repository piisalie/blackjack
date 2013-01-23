module Blackjack
  class Player

    def initialize(shoe)
      @hand = Hand.new(shoe)
      @upcards = [@hand.cards[1]]
    end

    def score
      Score.new(@hand.cards).total
    end

    def show_hand
      @hand.cards
    end

    def hit
      @hand.hit
    end

  end
end
