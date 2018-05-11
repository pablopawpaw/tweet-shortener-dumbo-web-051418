def dictionary 
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"  
  }
end 

def word_substituter(tweet)
  if tweet.class ==  String 
    tweet = tweet.split(" ")
    tweet.map do |word|
      if dictionary.keys.include?(word)
        word = dictionary[word]
      else 
        word
      end 
    end.join(" ")
  end
end 

def bulk_tweet_shortener(tweets)
  puts word_substituter(tweets)
end 

def selective_tweet_shortener(tweet)
  if tweet.length < 140 
    tweet 
  else 
    word_substituter(tweet)
  end 
end 

def shortened_tweet_truncator(tweet)
  if tweet.length < 140 
    tweet 
  elsif word_substituter(tweet).length < 140 
    word_substituter(tweet)
  else 
    word_substituter(tweet)[-4].gsub()
end 