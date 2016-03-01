class GithubProfilesController < ApplicationController
  def index
  end

  def create
    user = GitHub.new(params[:username])
    render json: user.results
  end
end
