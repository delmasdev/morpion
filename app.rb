require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib",__FILE__)
require 'application'
require 'player'
require 'boardcase'
require 'board'
require 'game'


Application.new.perform




