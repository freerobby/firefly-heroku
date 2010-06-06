require 'rubygems'
require 'firefly'

disable :run

app = Firefly::Server.new do
  # The domain you use for shortening.
  set :hostname,    "localhost:3000"

  # Used for authenticating you.
  set :api_key,     "test"

  # Use Sqlite3 by default
  set :database, ENV['DATABASE_URL'] 

  # Defaults to 25
  # set :recent_urls, 10
end

run app
