require './app'
require 'minitest/autorun'
require 'rack/test'
require 'dotenv'
ENV['DATABASE_URL'] = Dotenv.load('.env')['DATABASE_URL']

class MyAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_404s
    get '/'
    assert_equal "Hi from Basecamp-giphy bot! 🤖", last_response.body
  end

  def test_gif
    get '/gif'
    assert_equal last_response.status, 200
  end
end