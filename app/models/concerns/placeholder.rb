module Placeholder
  extend ActiveSupport::Concern
  
  def self.image_generator(height:, width:)
    "http://placehold.it/#heightx#width"
  end
end