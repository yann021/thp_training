
require 'bundler'
Bundler.require
require_relative 'game'
require_relative 'player'

class Application

attr_accessor :player_one, :player_two
  def initialize
    @game = Game.new
  end

  def perform

    puts ""
    puts "BIENVENU DANS INSOLITE MORPIONNNNNNNN"
    puts ""
    puts "(en référence aux galères de cette journée)"
    puts ""
    puts ""
    puts ""

    while true

    puts "Prêt pour une partie ? (tapez 1 ou 2)"
    puts ""
    puts "1. OUAIIIIIII !!!"
    puts "2. Non j'ai piscine.."
    puts ""
    puts ""

    params = gets.chomp.to_i
    case params
      when 1
        @game.play_game
      when 2
        puts "Ok, bye"
        break
      end
    end
  end

  
end