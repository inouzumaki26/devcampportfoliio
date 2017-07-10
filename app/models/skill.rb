class Skill < ApplicationRecord
    validates_presence_of :titile, :percent_utilized
end
