require 'rubygems'
require 'firefly'

disable :run

app = Firefly::Server.new do
  # The domain you use for shortening.
  set :hostname, ENV['FIREFLY_HOST']

  # Used for authenticating you.
  set :api_key, ENV['FIREFLY_API_KEY']

  # Use Sqlite3 by default
  set :database, ENV['DATABASE_URL'] 

  # Defaults to 25
  # set :recent_urls, 10
end

run app
