class Tweet < ApplicationRecord
  has_many :votes

  validates_length_of :text, :maximum => 140, :allow_blank => true
  validates :text, presence: true
  validates :username, presence: true
end

def upvote_count
  votes.where(upvote: true).count
end
