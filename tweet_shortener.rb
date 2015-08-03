require 'pry'
# Write your code here.
def dictionary
  dictionary={"hello":"hi",
    "to":"2",
    "two":"2",
    "too":"2",
    "for":"4",
    "For":"4",
    "four":"4",
    "be":"b",
    "you":"u",
    "at":"@",
    "and":"&"}
end

def word_substituter(tweet)
  tweet=tweet.split(" ")
  dict=dictionary
  tweet.each do |word|
    dict.each do |long, short|
      if word==long.id2name
        w=tweet.find_index(word)
        tweet[w]=short
      end
    end
  end
  tweet=tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened=selective_tweet_shortener(tweet)
  if shortened.length>140
    shortened=shortened[0...137]+"..."
  end
  shortened
end

