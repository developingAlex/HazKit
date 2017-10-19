class Conversation < ApplicationRecord
  has_many :messages
  has_many :profile_conversations
  has_many :profiles, through: :profile_conversations

  scope :between, ->(profile1_id, profile2_id) do
    joins(:profiles).where(profiles: {id: profile1_id}) & joins(:profiles).where(profiles: {id: profile2_id})
  end
end
