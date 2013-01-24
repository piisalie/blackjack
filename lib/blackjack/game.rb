module Blackjack
  class Game

    def initialize
      @table = Table.new
    end
    
    def play
      deal
      sleep 1
      @table.show_final_state
      play_again
    end

    def deal
      @table.show_table
      @table.play_hands
    end

    def play_again
      puts "(y)es to play again; anything else to quit"
      answer = gets.strip
      if answer == "y" || answer == "yes"
        @table = Table.new
        play
      else
      end
    end
    
  end
end
