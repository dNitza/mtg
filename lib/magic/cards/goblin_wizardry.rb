module Magic
  module Cards
    GoblinWizardry = Instant("Goblin Wizardry") do
      cost red: 1, generic: 3
    end

    class GoblinWizardry < Instant
      GoblinWizardToken = Token.create "Goblin Wizard" do
        type "Creature —- Goblin Wizard"
        power 1
        toughness 1
        colors :red
        keywords :prowess
      end

      def resolve!
        controller.create_token(token_class: GoblinWizardToken, amount: 2)

        super
      end
    end
  end
end
