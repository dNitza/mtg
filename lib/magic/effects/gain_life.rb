module Magic
  module Effects
    class GainLife < TargetedEffect
      attr_reader :life
      def initialize(life:, **args)
        @life = life
        super(**args)
      end

      def resolve!
        target.gain_life(life)
      end
    end
  end
end
