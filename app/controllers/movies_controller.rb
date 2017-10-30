require 'httparty'
require 'pp'


class MoviesController < ApplicationController
before_action :authenticate_user!

  def index
    @movies = current_user
  end


end
