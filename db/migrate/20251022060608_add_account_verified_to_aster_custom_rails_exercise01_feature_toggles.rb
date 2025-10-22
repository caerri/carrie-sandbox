class AddAccountVerifiedToAsterCustomRailsExercise01FeatureToggles < ActiveRecord::Migration[8.0]
    def change
        add_column :aster_custom_rails_exercise01_feature_toggles, :account_verified, :boolean
    end
end
