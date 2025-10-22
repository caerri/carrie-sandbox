module AsterCustomRailsExercise01
  module Types
    class FeatureToggleType < ::Types::BaseObject
      # record id
      field :id, ID, null: false

      # old boolean column (unchanged API)
      field :enabled, Boolean, null: false

      # new composite value — call model#effective_enabled? by mapping method
      field :effectiveEnabled, Boolean, null: false, method: :effective_enabled?

      # raw JSON payload (for debugging)
      field :data, GraphQL::Types::JSON, null: true

      # data_quality column (quarantine status)
      field :dataQuality, String, null: false, method: :data_quality
    end
  end
end
