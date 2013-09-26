!!Tweet Shortener

A client has hired you to automatically post some of their brand messages to twitter, but the problem is that some of them are too long. Your job is to shorten them by replacing longer words with shorter representations (i.e. "two" becomes "2").

Write a method that will take a tweet, search it for words that you can substitute, and return a substituted string tweet. For instance, the tweet "Hello to you, I'm at home" would become "Hi 2 u, I'm @ home". The client has provided the following acceptable substitutes.

`"to, two, too" => '2', "for, four" => '4', 'be' => 'b', 'you' => 'u', "at" => "@", "and" => "&"`

and here is the list of tweets:

`"Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!",
"OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?",
"I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.",
"GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? Spencer is looking at me right now as if I stole his cat. Glad this part won't make it to Twitter."`

**Objectives**

1. **Write a method to shorten a string based on the allowed substitutes**
2. 