class CreateProfileConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :profile_conversations do |t|
      t.references :profile, foreign_key: true
      t.references :conversation, foreign_key: true

      t.timestamps
    end
  end
end
