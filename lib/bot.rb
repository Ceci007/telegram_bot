require 'telegram/bot'
require_relative 'motivate.rb'
require_relative 'joke.rb'

class Bot
  def initialize
    token = '1318191703:AAHqVe_Vqw4decD1v0Kzj0PE3IEcpK8VY4g'

  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text
      when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}, welcome to Ceci\'s chat bot created by peter robert, the chat bot is to keep you motivated and entertained. Use  /start to start the bot,  /stop to end the bot, /motivate to get a diffrent motivational quote everytime you request for it or /joke to get a joke everytime you request for it")

      when '/stop'
        bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)

      when '/motivate'
        values = Motivate.new
        value = values.random
        bot.api.send_message(chat_id: message.chat.id, text: "#{value['text']}", date: message.date)

      when '/joke'
        values = Joke.new
        value = values.request
        bot.api.send_message(chat_id: message.chat.id, text: "#{value['joke']}", date: message.date)

      else
        bot.api.send_message(chat_id: message.chat.id, text: "Invalid entry, #{message.from.first_name}, you need to use  /start,  /stop , /motivate or /joke")
      end
    end
  end
  end
end
