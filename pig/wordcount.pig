lines = LOAD '/user/hduser/anything.txt' USING PigStorage(' ') AS (line:chararray);
words = FOREACH lines GENERATE FLATTEN (TOKENIZE(line)) AS word;
Groups = GROUP words BY word;
Counts = FOREACH Groups GENERATE group, COUNT(words);
Results = ORDER Counts BY $1 DESC;
Top5 = LIMIT Results 5;
dump Top5;
STORE Top5 INTO '/user/hduser/file211out' USING PigStorage(' ');
