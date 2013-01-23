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
      puts "Your hand: #{@hand.cards}"
    end

    def hit
      @hand.hit
    end

    def play_hand
      puts "(h)it or (s)tand?"
      input = gets.chomp
      execute(input)
    end

    def execute(input)
      if input == "h" || input == "hit"
        hit
        show_hand
        play_hand
      elsif input == "s" || input == "stand"
        return
      else
        puts "\n --h or s... hit or stand... ONE OR THE OTHER!--\n\n"
        play_hand
      end
    end

    def bust?
      if score > 21
        true
      else
        false
      end
    end

  end
end
