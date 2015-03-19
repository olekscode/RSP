#!/usr/bin/ruby

=begin
Rock-Scisors-Paper game
=end

require_relative 'player'
require_relative 'game'

players = [Player.new("Roman"),
           Player.new("Bohdan"),
           Player.new("Oleksandr"),
           Player.new("Serhiy"),
       	   Player.new("Yaroslav"),
       	   Player.new("Ivan"),
       	   Player.new("Oleh")]

game = Game.new(players)