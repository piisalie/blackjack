module Blackjack
  class Table

    def initialize
      @shoe   = Shoe.new
      @player = Player.new(@shoe)
      @dealer = Dealer.new(@shoe)
    end

    def show_table
      system "clear"
      puts "- - - - - - - - - - - - - - - - - - - - - - -"
      puts "Dealer's upcard: #{@dealer.show_hand}"
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
      get_winner
      puts
      puts "Dealer's final hand: #{@dealer.show_final_hand.cards}"
      puts "Dealer's score: #{@dealer.score}"
      puts
      puts "Your final hand: #{@player.show_hand}"
      puts "Your score: #{@player.score}"
      puts "- - - - - - - - - - - - - - - - - - - - - - -"
    end

    def get_winner
      if @dealer.score > @player.score and !@dealer.bust?
        puts "Dealer wins the table."
      elsif @player.score > @dealer.score and !@player.bust?
        puts "You win the table."
      elsif @dealer.bust?
        puts "You win the table."
      elsif @player.bust?
        puts "Dealer wins the table."
      else
        puts "Tie."
      end
    end
    
  end
end
