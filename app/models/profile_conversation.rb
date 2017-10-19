class ProfileConversation < ApplicationRecord
  belongs_to :profile
  belongs_to :conversation
end
