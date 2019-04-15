def dictionary
  replacements = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
 string = string.split(" ")
 string.collect do |word|
  dictionary.collect do |key, value|
     if word == key
       word.replace(value)
     end
   end
 end
  string.join(" ")
end



def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
   puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140 
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).size > 140 
    word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end