

User.destroy_all

5.times do 
    users << User.create(
    email: FFaker::Internet.email,


    )