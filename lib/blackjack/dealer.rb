module Blackjack
  class Dealer < Player

    def show_hand
      @upcards = [@hand.cards[1]]
    end

  end
end
