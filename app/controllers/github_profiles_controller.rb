class GithubProfilesController < ApplicationController
  def index
  end

  def create
    @username = params[:username]
    @user = Github.new(@username)
  end
end
