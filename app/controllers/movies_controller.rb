require 'httparty'
require 'pp'


class MoviesController < ApplicationController
before_action :authenticate_user!

  def index
    @movies = current_user.movies.map do |movie|
      url = "http://www.omdbapi.com/?i=#{movie.omdb_id}&apikey=d31f1a94"
      response = HTTParty.get(url)
      response_body = JSON.parse(response.body)

      movie.title = response_body['Title']
      movie.year = response_body['Year']
      movie.rating = response_body['Rated']
      movie.poster = response_body['Poster']
      movie
    end
  end

  # Danny's code
  # def destroy
  #   FavoriteMovie.find_by(user_id: current_user.id, movie_id: @movie.id).delete
  #   redirect_to movies_url, notice: 'Movie was successfully destroyed.'
  # end

  def destroy 
     FavoriteMovie.find_by(user_id: current_user.id, movie_id: @movie.id).delete
  puts current_user.id
    redirect_to movies_url
  end
    

    # def favorite_movie_params
    #   params.require(:user_id).permit(:movie_id)
    # end

  # def destroy
  #  FavoriteMovie.find_by(user_id: current_user.id, movie_id: @movie.id).destroy
  #   redirect_to movies_path
  # end

end
