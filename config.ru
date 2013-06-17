require 'sinatra/base'
require 'resque/server'
require File.expand_path('../lib/sleeper', __FILE__)

Resque.redis = Redis.new(host:ENV['OPENSHIFT_REDIS_DB_HOST'],
                         port:ENV['OPENSHIFT_REDIS_DB_PORT'],
                         password:ENV['REDIS_PASSWORD'])

class MyApp < Sinatra::Base
  get '/' do
    haml :index
  end

  post '/' do
    Resque.enqueue(Sleeper, params[:seconds])
    redirect to '/'
  end
end

run Rack::URLMap.new(
  "/" => MyApp.new,
  "/resque" => Resque::Server.new
)
