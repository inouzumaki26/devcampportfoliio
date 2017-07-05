class Skill < ApplicationRecord
    validate_presence_of :titile, :percent_utilized
end
