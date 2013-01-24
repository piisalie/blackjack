module Blackjack
  class Dealer < Player

    def show_hand
      @upcards
    end

    def play_hand
      while score <= 17
        hit
        @upcards << @hand.cards.last
      end
      puts "Dealer Busts!" if bust?
    end

    def show_final_hand
       @hand
    end

  end
end
