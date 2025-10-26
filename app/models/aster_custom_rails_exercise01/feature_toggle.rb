# frozen_string_literal: true

module AsterCustomRailsExercise01
    class FeatureToggle < ApplicationRecord
        # Domain truthiness helper - implements your boolean > 0 rule
        def self.value_truthy?(val)
            return true if val === true
            return false if val === false || val.nil?

            return val.positive? if val.is_a?(Integer) || val.is_a?(Float)

            if val.is_a?(String)
                return false if val.strip == ''

                num = begin
                    Float(val)
                rescue StandardError
                    nil
                end
                return num.positive? if num

                return false
            end

            false
        end

        # Compute composite from data hash
        def effective_enabled_from_data?
            return false unless data.is_a?(Hash)

            data.values.any? { |v| self.class.value_truthy?(v) }
        end

        # Convenience method: use stored value or compute from data
        def effective_enabled?
            return effective_enabled unless effective_enabled.nil?

            effective_enabled_from_data?
        end
    end
end

# Credit bureau check - looks for bankruptcy info from 3 sources
def credit_reports_clear?
    return false unless data.is_a?(Hash)

    equifax = data['equifax_bankruptcy'] == false
    experian = data['experian_bankruptcy'] == false
    transunion = data['transunion_bankruptcy'] == false

    # All 3 must show no bankruptcy
    equifax && experian && transunion
end

# Simple local verification
def account_verified_check?
    account_verified == true
end

# COMPOSITE: Both checks must pass
def fully_enabled?
    credit_reports_clear? && account_verified_check?
end
