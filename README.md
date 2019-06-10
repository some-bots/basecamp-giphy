# basecamp-giphy
A Giphy bot of the simplest kind....only for Basecamp!

# Setup

### Giphy API Key

>To use the GIPHY API, you'll need to obtain an API Key by creating an app. You'll need a GIPHY account to create an app (don't worry, it's free!) Each application you create will have its own API Key. Don't worry if you're not sure what you want to use the GIPHY API for yet, all that's needed to create an app is a name and a basic description, which can be changed at any time.

Start here: 👉 [https://developers.giphy.com/docs/](https://developers.giphy.com/docs/)

### Clone the repo

```
git clone git@github.com:some-bots/basecamp-giphy.git
cd basecamp-giphy
```

### Setup a Heroku app

Ensure you have the [Heroku CLI](https://devcenter.heroku.com/categories/command-line) and are logged in.

**Create an app**

```
heroku create
```

**Deploy**

```
git push heroku master
```

### Setup Basecamp App

![add-chat-bot](https://github.com/some-bots/basecamp-giphy/raw/master/assets/add-chat-bot.gif)

1. Go to your HQ (any any team/project) and click the ellipsis at the top right
1. Select `Configure chatbots`
1. Click `Add a new chatbot`
1. _Optional_ Upload `assets/giphy logo.png` as the bot's avatar
1. Name is `giphy` (any name will do)
1. Enter the url of your Heroku app created above with the `/cmd` on the end




