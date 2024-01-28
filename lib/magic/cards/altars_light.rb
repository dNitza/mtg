module Magic
  module Cards
    AltarsLight = Instant("Altar's Light") do
      cost generic: 2, white: 2
    end

    class AltarsLight < Instant
      def target_choices
        battlefield.cards.by_any_type("Artifact", "Enchantment")
      end

      def resolve!(target:)
        game.add_effect(Effects::Exile.new(source: self, target: target))
      end
    end
  end
end
