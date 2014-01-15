require 'spec_helper'

describe 'tweet shortener' do
  
  let(:short_forms) { 
    {
      "too" => "2",
      "to" => "2",
      "two" =>"2",
      "four" => "4",
      "for" => "4",
      "be" => "b",
      "you" => "u",
      "at" => "@",
      "and" => "&"
    }
  }

  let(:tweet_one_long)   {"Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"}
  let(:tweet_two_long)   {"OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"} 
  let(:tweet_three_long) {"GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"}
  let(:tweet_four_long)  {"New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"} 
  let(:tweet_five_long)  {"I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."}

  let(:tweet_one_short)   {"Hey guys, can anyone teach me how 2 b cool? I really want 2 b the best @ everything, u know what I mean? Tweeting is super fun u guys!!!!"}
  let(:tweet_two_short)   {"OMG u guys, u won't believe how sweet my kitten is. My kitten is like super cuddly & 2 cute 2 b believed right?"} 
  let(:tweet_three_short) {"GUISEEEEE this is so fun! I'm tweeting 4 u guys & this tweet is SOOOO long it's gonna b way more than u would think twitter can handle, so shorten it up u know what I mean? I just can never tell how long 2 keep typing!"}
  let(:tweet_four_short)  {"New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy & mammogram soon. Prevention is key! #swag"}
  let(:tweet_five_short)  {"I'm running out of example tweets 4 u guys, which is weird, because I'm a writer & this is just writing & I tweet all day. 4 real, u guys. 4 real."}

  let(:long_tweets) {%w( tweet_one_long tweet_two_long tweet_three_long)}

  # Question 1
  describe '#word_substituter' do
    it 'should replace long words with their expected short form' do
      expect(word_substituter(tweet_one_long)).to eq(tweet_one_short)
    end
  end

  # Question 2
  describe '#bulk_tweet_shortener' do  
    it 'should shorten each tweet and print the results' do
      expect($stdout).to receive(:puts).with(tweet_one_short)
      expetc($stdout).to receive(:puts).with(tweet_two_short)
      expect($stdout).to receive(:puts).with(tweet_three_short)
      expect($stdout).to receive(:puts).with(tweet_four_short)
      expect($stdout).to receive(:puts).with(tweet_five_short)
    end

    it 'should not leave any tweets the same' do
      expect($stdout).to_not receive(:puts).with(tweet_one_long)
      expect($stdout).to_not receive(:puts).with(tweet_two_long)
      expect($stdout).to_not receive(:puts).with(tweet_three_long)
      expect($stdout).to_not receive(:puts).with(tweet_four_long)
      expect($stdout).to_not receive(:puts).with(tweet_five_long)
    end
  end

  # Question 3
  describe '#selective_tweet_shortener' do
    it 'should only shorten tweets longer than 140 characters' do
      expect(selective_tweet_shortener(tweet_three_long).to eq(tweet_three_short)
      expect(selective_tweet_shortener(tweet_four_long)).to eq(tweet_four_long)
    end

    it 'should not shorten tweets shorter than 140 characters'
  end

  describe '#shortened_tweet_truncater' do
    let(:tweet_three_truncated) {"GUISEEEEE this is so fun! I'm tweeting 4 u guys & this tweet is SOOOO long it's gonna b way more than u would think twitter can handle, ..."}
    it 'should truncate tweets over 140 characters after shortening' do
      expect(shortened_tweet_truncater(tweet_three_long)).to eq(tweet_three_truncated)
    end

    it 'should not truncate tweets shorter than 140.' do
      expect(shortened_tweet_truncater(tweet_one_short)).to eq(tweet_one_short) 
    end
  end
end



