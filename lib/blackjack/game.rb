module Blackjack
  class Game
    attr_reader :dealer, :player
    
    def initialize
      @shoe   = Shoe.new
      @dealer = Hand.new(@shoe)
      @player = Hand.new(@shoe)
    end
  end
end
