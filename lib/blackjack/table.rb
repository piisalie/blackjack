module Blackjack
  class Table
    attr_reader :shoe, :player, :dealer

    def initialize
      @shoe   = Shoe.new
      @player = Player.new(@shoe)
      @dealer = Dealer.new(@shoe)
    end
  end
end
