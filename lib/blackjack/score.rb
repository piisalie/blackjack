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
      @hand.each do |card|
        @total = @total + score_ace(card)
      end
      @total
    end
    
    def score_card(card)
      if card == "K" || card == "Q" || card == "J"
        10
      elsif card == "A"
        0
      else
        card
      end
    end

    def score_ace(card)
      if card == "A" and @total + 11 <= 21
        11
      elsif card == "A"
        1
      else
        0
      end
    end

  end
end
