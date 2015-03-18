#!/usr/bin/ruby

=begin
Rock-Scisors-Paper game
=end

require_relative 'player'
require_relative 'judge'

if __FILE__ == $0
    players = [Player.new("Roman"),
               Player.new("Bohdan"),
               Player.new("Oleksandr"),
               Player.new("Yaroshko")]

    judge = Judge.new(players)
    judge.play
end
