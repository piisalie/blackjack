module Blackjack
  class Table

    def initialize
      @shoe   = Shoe.new
      @player = Player.new(@shoe)
      @dealer = Dealer.new(@shoe)
    end

    def show_table
      @dealer.show_hand
      @player.show_hand
    end

    def play_hands
      @dealer.play_hand
      @player.play_hand
    end

    def check_if_bust
      puts "Dealer busts" if @dealer.bust?
      puts "Player busts" if @player.bust?
    end

  end
end
