class Conversation < ApplicationRecord
  has_many :messages
  has_many :participations
  has_many :profiles, through: :profileconversations

  scope :between, ->(profile1_id, profile2_id) do
    joins(:profiles).where(profiles: {id: profile1_id}) & joins(:profiles).where(profiles: {id: profile2_id})
end
