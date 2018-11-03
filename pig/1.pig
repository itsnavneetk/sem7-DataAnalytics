
raw = LOAD '/home/student1/Desktop/apachepig/users.csv' USING PigStorage(',') AS (login:chararray, name:chararray, state:chararray);
usersNY = FILTER raw BY state eq 'NY';
loginNY = FOREACH usersNY GENERATE login;

dump loginNY;
