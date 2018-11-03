
users = LOAD '/home/student1/Desktop/apachepig/users.csv' USING PigStorage(',') AS (login:chararray, name:chararray, state:chararray);
tweets = LOAD '/home/student1/Desktop/apachepig/tweets.csv' USING org.apache.pig.piggybank.storage.CSVExcelStorage() AS (id:long, content:chararray, user:chararray);
users_join_tweets = JOIN users BY login LEFT, tweets BY user;

login_group = GROUP users_join_tweets BY (login, name);
number_of_tweets = FOREACH login_group GENERATE group, COUNT(users_join_tweets.id) as number;
no_tweets = FILTER number_of_tweets BY number == 0;
no_tweets_names = FOREACH no_tweets GENERATE group.name;

dump no_tweets_names;
