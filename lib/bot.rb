# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/BlockLength

require 'telegram/bot'
require_relative 'motivate.rb'
require_relative 'joke.rb'
require_relative 'news.rb'
require 'dotenv'
Dotenv.load('./.env')

class Bot
  def initialize
    token = ENV['API_TOKEN_BOT']
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(chat_id: message.chat.id,
                               text: "Hello, #{message.from.first_name},"\
              ' welcome to Ceci\'s chat bot created by peter robert,'\
              ' the chat bot is to keep you motivated and entertained.'\
              ' Use  /start to start the bot,  /stop to end the bot, /motivate'\
              ' to get a diffrent motivational quote everytime you request for it'\
              ' or /joke to get a joke everytime you request for it'\
              ' you even can request for /news to get an interesting news.')

        when '/stop'
          bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}", date: message.date)

        when '/motivate'
          values = Motivate.new
          value = values.random
          bot.api.send_message(chat_id: message.chat.id, text: value['text'].to_s, date: message.date)

        when '/joke'
          values = Joke.new
          value = values.request
          bot.api.send_message(chat_id: message.chat.id, text: value['joke'].to_s, date: message.date)

        when '/news'
          values = News.new
          value = values.random
          bot.api.send_message(chat_id: message.chat.id, text: value['news'].to_s, date: message.date)

        else
          bot.api.send_message(chat_id: message.chat.id,
                               text: "Invalid entry, #{message.from.first_name},"\
                              ' you need to use  /start,  /stop , /motivate or /joke')
        end
      end
    end
  end
end

# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/BlockLength
