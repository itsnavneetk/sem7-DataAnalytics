users = LOAD '/home/student1/Desktop/apachepig/users.csv' USING PigStorage(',') AS (login:chararray, name:chararray, state:chararray);

tweets = LOAD '/home/student1/Desktop/apachepig/tweets.csv' USING org.apache.pig.piggybank.storage.CSVExcelStorage() AS (id:long, content:chararray, user:chararray);
usertweets = JOIN users BY login, tweets BY user;
users_natural_join_tweets = foreach usertweets generate .. content;
dump users_natural_join_tweets;
