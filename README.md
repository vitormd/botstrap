# Robotos
**`Robotos`** is a rails API application bootstrap made to create chat bot's backend structures for different platforms with a webhook endpoint for updates.

## Which platforms are supported?
- [x] Telegram
- [ ] Facebook Messenger

## Installing
1. Install Ruby
2. Install Rails
3. Clone this repository
4. ...

## How it works?
### Creating a new chat bot:
On your application folder run:
```
rails g [platform] [bot's name] [bot's token]
```

**Example:**
```
rails g telegram AwesomeBot ljk23n45234n23l4kn23l47d89a2d3aAuU
```

### Using your chat bot:
#### Your webhook route
Then you should have endpoint available in the following path so the bot can receive your updates:
```
POST [DOMAIN]/chat_bots/[platform]/[token]
```

**Example:**
```
POST mydomain.com/chat_bots/telegram/ljk23n45234n23l4kn23l47d89a2d3aAuU
```

#### Your chat bot class
- Each platform contain a `ChatBotBase` inside `app -> chat_bots -> chat_bots -> [platform]`
- Your class should be inside this platform folder and inheriting from its `ChatBotBase`
- The `ChatBotBase` contains the initialize method that should be used for all of its platform chat bots since it automatically receives the token from the controller and gives you a `@api` variable as wrapper for the platform available methods

**Example:**
The code for the [ChatBots::Telegram::ChatBotBase](/app/chat_bots/chat_bots/telegram/chat_bot_base.rb)
```ruby
require 'telegram/bot' # requires the platform wrapper

module ChatBots
  module Telegram
    class ChatBotBase
      def initialize(token)
        @api = ::Telegram::Bot::Api.new(token) # gives access to api methods through @api
      end
    end
  end
end

```

You can checkout a basic implementation of a Telegram FooBot [here](https://github.com/vitormd/robotos/blob/telegram/foo_bot/app/chat_bots/chat_bots/telegram/foo_bot.rb)

## Contributing
- Project
  - [ ] Create generators
- Telegram
  - [ ] Create Telegram object's models for chat bots that demands persistence of chats, users and messages
- Facebook Messenger
  - [ ] Add `facebook_messenger` to platform enum in `models/chat_bot.rb`
  - [ ] Create route and webhook method
  - [ ] Create `facebbok_messenger_update` in `models/chat_bot.rb`
  - [ ] Create chat_bot_base.rb in `app/chat_bots/chat_bots/facebook_messenger`
  - [ ] Create a `FooBot` in a branch called `facebook-messenger/foo_bot` to serve as example
  - [ ] Update this README documentation with this platform examples
