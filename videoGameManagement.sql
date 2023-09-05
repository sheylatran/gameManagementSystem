drop database if exists videoGameManagement;
create database videoGameManagement;
use videoGameManagement;

drop table if exists user;
create table user(
userID varchar(4),
firstName char(20),
lastName char(20),
phoneNum varchar(14),
city char(20),
state varchar(2),
constraint user_userID_pk primary key(userID)
);

drop table if exists login;
create table login(
loginID varchar(4),
username char(20),
password char(20),
userID varchar(4),
constraint login_loginID_pk primary key(loginID),
constraint login_userID_fk foreign key(userID) references user(userID)
);

drop table if exists store;
create table store(
storeID varchar(4),
cardNumber varchar(12),
datePurchased date,
amountPaid varchar(5),
userID varchar(4),
cosmetics char(20),
constraint store_storeID_pk primary key(storeID),
constraint store_userID_fk foreign key(userID) references user(userID)
);

drop table if exists inventory;
create table inventory(
inventoryID varchar(4),
userID varchar(4),
storeID varchar(4),
skinsOwned char(20),
constraint inventory_inventoryID_pk primary key(inventoryID),
constraint inventory_userID_fk foreign key(userID) references user(userID),
constraint inventory_storeID_fk foreign key(storeID) references store(storeID)
);

drop table if exists accountStats;
create table accountStats(
statsID varchar(4),
winPercentage int(2),
lossPercentage int(2),
ranking char(20),
accountLevel char(5), 
userID varchar(4),
constraint accountStats_statsID_pk primary key(statsID),
constraint accountStats_userID_fk foreign key(userID) references user(userID)
);

drop table if exists friendsList;
create table friendsList(
friendID varchar(4),
friendUsername char(20),
userID varchar(4),
status char(20),
constraint friendsList_friendID_pk primary key(friendID),
constraint friendsList_userID_fk foreign key(userID) references user(userID)
);

#-------------------------------------USER VALUES---------------------------------------
insert into user values('6969', 'Sheyla', 'Tran', 317-701-6792, 'Indianapolis', 'IN');
insert into user values('8921', 'Billy', 'Joel', 322-121-9932, 'Nashville', 'TN');
insert into user values('1021', 'Will', 'Bettelheim', 312-732-2002, 'Naples', 'FL');
insert into user values('3330', 'John', 'Riot', 750-212-5442, 'Gary', 'IN');
insert into user values('6968', 'Joey', 'Fraser', 392-751-6505, 'San Francisco', 'CA');
insert into user values('6969', 'Zach', 'Irfan', 920-542-2233, 'Salt Lake City', 'UT');


