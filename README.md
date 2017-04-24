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
To create a new bot just go:
```bash
rails g [platform] [bot's name] [bot's token]
```

Example:
```bash
rails g telegram AwesomeBot ljk23n45234n23l4kn23l47d89a2d3aAuU
```

Then you should have endpoint available in the following path so the bot can receive your updates
```
POST [DOMAIN]/chat_bots/[platform]/[token]
```

Example:
```
POST mydomain.com/chat_bots/telegram/ljk23n45234n23l4kn23l47d89a2d3aAuU
```

## Contributing
- [ ] Finish Telegram platform
- [ ] Create generators
- [ ] Add Facebook Messenger Platform
