module Magic
  module Zones
    class Library < Zone
      def add(card)
        card.zone = self
        super
      end

      def library?
        true
      end

      def draw
        @cards.shift
      end

      def shuffle!
        @cards.shuffle!
      end

      def mill
        @cards.shift
      end

    end
  end
end
