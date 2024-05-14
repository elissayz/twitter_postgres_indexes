create INDEX on tweet_tags(id_tweets, tag);
create INDEX on tweet_tags(tag, id_tweets);
create INDEX on tweets(id_tweets, lang);i
create INDEX on tweets(lang);
CREATE INDEX idx_tweets_text_gin ON tweets USING GIN(to_tsvector('english', text)) where lang = 'en';
create INDEX on tweet_tags(tag text_pattern_ops, id_tweets);
