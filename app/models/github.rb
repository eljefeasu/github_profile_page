require 'httparty'

class GitHub
  attr_reader :results

  def initialize(username)
    @web_string = "https://api.github.com/users/#{username}/repos?sort=updated&direction=desc&access_token=#{ENV["GITHUB_TOKEN"]}"
    @results = HTTParty.get(@web_string)
  end

  def id
    @id = @results.first[:id]
  end

  def project_name
    @project_name = @results.first[:name]
  end

  def description
    @description = @results.first[:description]
  end
end
