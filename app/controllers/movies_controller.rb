require 'httparty'
require 'pp'

class MoviesController < ApplicationController
# before_action :authenticate_user!

  def index
    @movies = Movies.all
  end


end
