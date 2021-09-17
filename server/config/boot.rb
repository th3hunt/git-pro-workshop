require 'rubygems'
require 'bundler'

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
Bundler.require :default, (ENV['RACK_ENV'] || :development).to_sym

require 'sinatra/contrib'
