require 'test_helper'

class Github
  def initialize(zipcode)
    @results = JSON.parse(File.read("#{Rails.root}/test/fixtures/repos.json"))
  end
end

class MovieTest < ActiveSupport::TestCase

  test "github class exists" do
    assert Github
  end

  # test "project name" do
  #   user = Github.new("eljefeasu")
  #   assert_equal "something", user.results
  # end

end
