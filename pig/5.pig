
users = LOAD '/home/student1/Desktop/apachepig/users.csv' USING PigStorage(',') AS (login:chararray, name:chararray, state:chararray);
tweets = LOAD '/home/student1/Desktop/apachepig/tweets.csv' USING org.apache.pig.piggybank.storage.CSVExcelStorage() AS (id:long, content:chararray, user:chararray);

users_join_tweets = JOIN users BY login, tweets BY user;

login_group = GROUP users_join_tweets BY (login, name);
number_of_tweets = FOREACH login_group GENERATE group, COUNT(users_join_tweets) as number;
at_least_two_tweets = FILTER number_of_tweets BY number > 1;
at_least_two_tweets_names = FOREACH at_least_two_tweets GENERATE group.name;

dump at_least_two_tweets_names;
