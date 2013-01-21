module Blackjack
  class Hand
    attr_reader :hand, :score
    
    def initialize(shoe)
      @shoe = shoe
      @hand = [@shoe.draw, @shoe.draw]
      @score = 0
      score_hand
    end

    def score_hand
      @score = 0
      @hand.each do |card|
        @score = @score + score_card(card)
      end
    end
    
    def score_card(card)
      if card == "K" || card == "Q" || card == "J"
        10
      elsif
        card == "A"
        if  @score <= 10
          11
        else
          1
        end
      else
        card
      end
    end

    def hit
      @hand << @shoe.draw
      score_hand
    end
    
  end
end
