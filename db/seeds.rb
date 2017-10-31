FavoriteMovie.destroy_all
User.destroy_all
Movie.destroy_all

users = []
movies = []



users << User.create(
    email: "victoria@gmail.com",
    password: 'blahblah',
    password_confirmation: 'blahblah'
)
users << User.create(
    email: "tommy@gmail.com",
    password: 'blahblah',
    password_confirmation: 'blahblah'
)

users << User.create(
    email: "robby@gmail.com",
    password: 'blahblah',
    password_confirmation: 'blahblah'
)


movies << Movie.create(
    omdb_id: 'tt0113228'
)

movies << Movie.create(
    omdb_id: 'tt0100944'
)

movies << Movie.create(
    omdb_id: 'tt0083658'
)

movies << Movie.create(
    omdb_id: 'tt0108526'
)

movies << Movie.create(
    omdb_id: 'tt0095925'
)
movies << Movie.create(
    omdb_id: 'tt0087332'
)




users.each do |user|
    movies.each do |movie|
      FavoriteMovie.create(
          user_id: user.id,
          movie_id: movie.id
      )
    end
  end
  