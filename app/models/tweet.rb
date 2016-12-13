class Tweet < ApplicationRecord
  validates_length_of :text, :maximum => 140, :allow_blank => true
  validates :text, presence: true
  validates :username, presence: true
end
