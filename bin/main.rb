require_relative '../lib/bot.rb'
require_relative '../lib/motivate.rb'

puts 'Hello!, Welcome to Ceci\'s telegram bot'
puts '----------------------------------------------'
puts 'This is a bot to help you stay motivated by giving you motivational quotes'
puts 'The bot can also keep you entertained by providing you with jokes'
puts 'This bot will help you when you are feeling down and demotivated'
sleep(0.6)
puts '----------------------------------------------'
puts '...loading the bot is now online... use ctrl-c on your terminal to stop the bot'
Bot.new
