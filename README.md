# hubot-slack-reaction-example

THANK YOU to Mike Bland <mbland@acm.org> for the original documentation on how to get this bot up and running 
His code can be found by clicking the NPM button below
[![npm](https://img.shields.io/npm/v/hubot-slack-reaction-example.svg?maxAge=2592000)](https://www.npmjs.com/package/hubot-slack-reaction-example)


All of the example code is in `scripts/handle-reaction.coffee`.

[hubot]: http://hubot.github.com
[hubot-slack]: https://www.npmjs.com/package/hubot-slack

## Running the bot

1. Clone this repo:
   ```sh
   $ git clone https://github.com/ricaud/react_slack_bot.git
   $ cd react_slack_bot
   $ npm install
   ```

1. You must have administrator access for your Slack domain. Alternatively, you
   can [create your own personal slack domain][slack-create] for testing.

1. Create a new [Slack bot user][slack-bot-user] for your team. Name it
   anything you like, such as `reaction-example-bot`. Take note of the
   API token, which should start with `xoxb-`.

1. Invite the bot to a channel by `@`-mentioning it in the channel, e.g.
   `@reaction-example-bot`.

1. Run the bot:
   ```sh
   $ HUBOT_SLACK_TOKEN=<bot-test-token> ./bin/hubot --adapter slack
   ```
   you should see output like:
   ```
   [Sun Oct 09 2016 12:22:12 GMT-0400 (EDT)] INFO Logged in as reaction-example-bot of mbland
   [Sun Oct 09 2016 12:22:12 GMT-0400 (EDT)] INFO Slack client now connected
   [Sun Oct 09 2016 12:22:12 GMT-0400 (EDT)] INFO Listening for reaction_added, reaction_removed events
   ------------------------------------
   Listening for Vish to post something
   ------------------------------------
   ```

1. Now just wait for your victim to post a message in a channel that the bot is a member of and it will
   react to the message.

[slack-create]: https://slack.com/create
[slack-bot-user]: https://api.slack.com/bot-users]

