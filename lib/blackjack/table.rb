module Blackjack
  class Table
    attr_reader :player, :dealer

    def initialize
      @shoe   = Shoe.new
      @player = Player.new(@shoe)
      @dealer = Dealer.new(@shoe)
    end

    def show_table
      system "clear"
      puts "- - - - - - - - - - - - - - - - - - - - - - -"
      puts "Dealer's upcard(s): #{@dealer.show_hand}"
      puts
      puts "Your hand: #{@player.show_hand}"
      puts "- - - - - - - - - - - - - - - - - - - - - - -"
    end

    def play_hands
      @player.play_hand
      @dealer.play_hand
    end

    def show_final_state
      puts "- - - - - - - - - - - - - - - - - - - - - - -"
      puts "Dealer's hand: #{@dealer.show_final_hand.cards}"
      puts "Dealer's score: #{@dealer.score}"
      puts
      puts "Your final hand: #{@player.show_hand}"
      puts "Your score: #{player.score}"
      puts "- - - - - - - - - - - - - - - - - - - - - - -"
    end
  end
end
