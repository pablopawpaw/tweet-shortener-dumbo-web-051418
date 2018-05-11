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

def bulk_tweet_shortener(tweet)
  word_substituter(tweet)
end 

def selective_tweet_shortener
end 