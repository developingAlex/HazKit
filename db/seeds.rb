# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#create dummy test users:
user1 = User.create!(email:'user1@mail.com', password:'password123', password_confirmation:'password123')
user2 = User.create!(email:'user2@mail.com', password:'password123', password_confirmation:'password123')
user3 = User.create!(email:'user3@mail.com', password:'password123', password_confirmation:'password123')

#create dummy profiles for test users:
profile1 = Profile.create!(user: user1, home_location: 'Batemans Bay, NSW, Australia', name: 'Henry Ford')
profile2 = Profile.create!(user: user2, home_location: 'Melbourne, VIC, Australia', name: 'Ada Lovelace')
profile3 = Profile.create!(user: user3, home_location: 'Yirrkala, NT, Australia', name: 'Alan Turing')

# create dummy conversation
conversation1 = Conversation.create!
# create dummy messages between users and tie them to the above conversation
message1 = Message.create!(user:user1, conversation: conversation1, content:'Hello from Henry')
message2 = Message.create!(user:user2, conversation: conversation1, content:'Hello from Ada')
message3= Message.create!(user:user1, conversation: conversation1, content:'Hi Ada, Hows it going?')
#create profile_conversation entries to tie the relevant users to the conversation above
profconv1 = ProfileConversation.create!(conversation:conversation1, profile:profile1)
profconv2 = ProfileConversation.create!(conversation:conversation1, profile:profile2)
