#!/usr/bin/env ruby
APP_ROOT = File.dirname(__FILE__)

$:.unshift(File.join("#{APP_ROOT}","lib"))

require 'core'

player = Core.new
player.play
