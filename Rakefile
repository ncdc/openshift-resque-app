require File.expand_path('../lib/sleeper', __FILE__)
require 'resque/tasks'
require 'resque'

Resque.redis = Redis.new(host:ENV['OPENSHIFT_REDIS_DB_HOST'],
                         port:ENV['OPENSHIFT_REDIS_DB_PORT'],
                         password:ENV['REDIS_PASSWORD'])