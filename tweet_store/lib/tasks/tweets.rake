namespace :tweets do
  desc "gets the tweets"
  task :get_tweets => :environment do
    TweetStream.configure do |config|
      config.consumer_key       = "N0RE4rMREYKx5GDID2kkA"
      config.consumer_secret    = "KQKx3AJWIrDt78ZuZqcAKjs7vkCOTLvtMk2bj9tIhg"
      config.oauth_token        = "327038519-gZ5MNPbrAPpQ3FCmcRJ6BqlZny7o34CfCsht5399"
      config.oauth_token_secret = "87YPaaOo55y0q9ZxalZZyHVqbthypFmEo0MhbgMnE"
      config.auth_method        = :oauth
    end

    i = 0
    TweetStream::Client.new.sample do |status|
      if i < 10

        tweet = Tweet.new
        tweet.text = status.attrs
        tweet.save
        i += i
        puts tweet
        puts i
      end
    end
  end
end
