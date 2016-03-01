require 'httparty'

class Github
  attr_reader :results

  def initialize(username)
    @username = username
    @web_string = "https://api.github.com/users/#{username}/repos?sort=updated&direction=desc&access_token=#{ENV["GITHUB_TOKEN"]}"
    @results = HTTParty.get(@web_string)
  end

  def project_name
    @project_name = []
    @results.map { |r| @project_name << r["name"] }
    return @project_name
  end

  def description
    @description = []
    @results.map { |r| @description << r["name"] }
    return @description
  end

  def owner_avatar
    @owner_avatar = []
    @results.map { |r| @owner_avatar<< r["owner"]["avatar_url"]}
    return @owner_avatar.first
  end

  def name_of_user
    user_web_string = "https://api.github.com/users/#{@username}"
    user_name_results = HTTParty.get(user_web_string)
    name_of_user = user_name_results["name"]
  end
end
