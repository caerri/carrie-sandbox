# frozen_string_literal: true

class CreateAsterCustomRailsExercise01FeatureToggles < ActiveRecord::Migration[8.0]
    def change
        create_table :aster_custom_rails_exercise01_feature_toggles do |t|
            t.boolean :enabled, null: false, default: false
            t.boolean :effective_enabled, null: false, default: false
            t.json :data, null: false, default: {}
            t.string :data_quality, null: false, default: 'unknown'
            t.timestamps
        end
        # NOTE: SQLite doesn't support GIN indexes; skip index here.
    end
end
