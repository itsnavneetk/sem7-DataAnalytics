
users = LOAD '/home/student1/Desktop/apachepig/users.csv' USING PigStorage(',') AS (login:chararray, name:chararray, state:chararray);

tweets = LOAD '/home/student1/Desktop/apachepig/tweets.csv' USING org.apache.pig.piggybank.storage.CSVExcelStorage() AS (id:long, content:chararray, user:chararray);
users_join_tweets = JOIN users BY login LEFT, tweets BY user;

name_group = GROUP users_join_tweets BY name;
number_of_tweets = FOREACH name_group GENERATE group, COUNT(users_join_tweets.id);
dump number_of_tweets;
