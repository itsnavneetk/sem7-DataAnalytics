drop table rating;
create table rating(usr_id int,item_id string,rating int,time string) row format delimited fields terminated by '::';
desc rating;
load data local inpath '/home/student1/Desktop/150911226/mongoDB/ratings.dat' into table rating;
select * from rating;
create table u_table(usr_id int,gender string,age int,occupation int,zipcode int) row format delimited fields terminated by '::';
desc u_table;
load data local inpath '/home/student1/Desktop/150911226/mongoDB/users.dat' into table u_table;
select * from u_table;
