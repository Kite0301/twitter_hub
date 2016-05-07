require 'twitter'

namespace :tweets do
  desc "tweetを取得"
  task :all => :environment do
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "9UbpR3c17IOSLTxIS2l2ng8VM"
      config.consumer_secret     = "B5Nx7hRuuWs1qDZFopI5fKC5N6i9sOLnNrYvYKu5nIcmc3iICS"
      config.access_token        = "2492812088-Cyls1bhfJm2nFXh4j90oWI87ZhMA2jz2QJhIR7e"
      config.access_token_secret = "6kT9MwIgHSzHgWCSyFb1RD4oLOHuIRqukSKZvE0kSC1wB"
    end

    # tweet
    # client.update("twitter test")
    username = "k_tooooooooooo"

    client.user_timeline(username, { count: 100 } ).each do |timeline|
      tweet = client.status(timeline.id)
      data = Hash.new
      data['date'] = tweet.created_at
      p data['text'] = tweet.text
      data['uri'] = tweet.uri.to_s.split('/')[-1]
      tweet = Tweet.find_by(uri: data['uri'])
      if tweet
        puts '既に存在するTweetです'
        break
      else
        Tweet.create(data)
      end
    end

  end
end
