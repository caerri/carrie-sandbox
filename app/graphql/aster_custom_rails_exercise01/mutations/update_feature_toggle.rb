module AsterCustomRailsExercise01
    module Mutations
        class UpdateFeatureToggle < ::Mutations::BaseMutation
            # Define the inputs this mutation accepts from GraphQL clients
            argument :id, ID, required: true
            argument :enabled, Boolean, required: false
            argument :data, GraphQL::Types::JSON, required: false

            # Define what this mutation returns to GraphQL clients
            field :feature_toggle, AsterCustomRailsExercise01::Types::FeatureToggleType, null: true
            field :errors, [ String ], null: false

            # This method runs when the mutation is called
            def resolve(id:, enabled: nil, data: nil)
                # Find the record by ID (will raise error if not found)
                ft = ::AsterCustomRailsExercise01::FeatureToggle.find(id)

                # Update the old boolean field if provided
                ft.enabled = enabled unless enabled.nil?

                # If JSON data provided, store it and compute new composite boolean
                if data
                    ft.data = data                                  # Store raw JSON
                    ft.effective_enabled = ft.effective_enabled_from_data?  # Compute composite
                end

                # Try to save - return success or error response
                if ft.save
                    { feature_toggle: ft, errors: [] }             # Success: return record
                else
                    { feature_toggle: nil, errors: ft.errors.full_messages }  # Failure: return errors
                end
            end
        end
    end
end
