
raw = LOAD '/home/student1/Desktop/apachepig/tweets.csv' USING org.apache.pig.piggybank.storage.CSVExcelStorage() AS (id:long, content:chararray, user:chararray);
tweetfavorite = FILTER raw BY (content matches '.*favorite.*');
tweetordered = ORDER tweetfavorite BY id;
dump tweetordered;
