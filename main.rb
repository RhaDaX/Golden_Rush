require 'asciiart'

require_relative 'search_player_url'

home_text = '
  ______         _      _                  ______                _        _ 
 / _____)       | |    | |                (_____ \              | |      | |
| /  ___   ___  | |  _ | |  ____  ____     _____) ) _   _   ___ | | _    | |
| | (___) / _ \ | | / || | / _  )|  _ \   (_____ ( | | | | /___)| || \   |_|
| \____/|| |_| || |( (_| |( (/ / | | | |        | || |_| ||___ || | | |   _ 
 \_____/  \___/ |_| \____| \____)|_| |_|        |_| \____|(___/ |_| |_|  |_|
                                                                            '
                                                                            
a = AsciiArt.new('http://americanfootballfilms.com/wp-content/uploads/2012/11/nfl-logo.jpg')
puts a.to_ascii_art(color: true, width: 100)
puts home_text

puts 'Entrez le nom du joueur : '
name = gets.chomp
include SearchPlayerUrl
puts 'recherche du nom : ' + name

 find(name)


