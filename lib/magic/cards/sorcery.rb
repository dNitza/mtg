module Magic
  module Cards
    class Sorcery < Card
      TYPE_LINE = "Sorcery"

      def resolve!
        move_zone!(controller.graveyard)
      end

      def permanent?
        false
      end
    end
  end
end
