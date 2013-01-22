module Blackjack
  class Game
    
    def initialize
      @shoe   = Shoe.new
      @dealer = Hand.new(@shoe)
      @player = Hand.new(@shoe)
    end

    def hit(player)
      player.hit
    end

    def show_hands
      puts "Dealer's Card: #{@dealer.hand[1]}"
      puts "Your Hand: #{@player.hand}"
    end

    def execute(input)
      if input == "h" || input == "hit"
        @player.hit
        show_hands
        get_player_input
      elsif
        input == "s" || input == "stand"
        play_dealer
      else
        puts "\n --Please choose a valid option.--\n\n"
        get_player_input
      end
    end

    def show_scores
      puts "Dealer's score: #{@dealer.score}"
      puts "Your score:     #{@player.score}"
    end

    def get_player_input
      puts "(h)it or (s)tand?"
      input = gets.chomp
      execute(input)
    end

    def play_dealer
      while @dealer.score <= 17
        @dealer.hit
      end
      puts "Dealer's Hand: #{@dealer.hand}"
    end

    def play
      show_hands
      get_player_input
      show_scores
    end
  end
end
