require_relative 'atm_controller'
require 'io/console'
require 'rubygems'
require 'bundler/setup'
atm = ATMController.new
atm.run(100)