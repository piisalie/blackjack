module Blackjack
  class Score
    attr_reader :total

    def initialize(hand)
      @hand = hand
      @total = 0
      score_hand
    end

    def score_hand
      @hand.each do |card|
        @total = @total + score_card(card)
      end
      @total
    end
    
    def score_card(card)
      if card == "K" || card == "Q" || card == "J"
        10
      elsif
        card == "A"
        if  @total <= 10
          11
        else
          1
        end
      else
        card
      end
    end

  end
end
