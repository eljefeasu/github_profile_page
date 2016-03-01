require 'httparty'

class Github
  attr_reader :results

  def initialize(username)
    @web_string = "https://api.github.com/users/#{username}/repos?sort=updated&direction=desc&access_token=#{ENV["GITHUB_TOKEN"]}"
    @results = HTTParty.get(@web_string)
  end

  def names
    @names = []
    @results.map { |r| @names << r["name"] }
    return @names
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
end
