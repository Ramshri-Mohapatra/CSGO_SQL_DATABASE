/*
Student name: Ramshri Mohapatra             
Student username: addd867
Student number: 220036590
*/

/* SECTION 1 - CREATE TABLE STATEMENTS */
create table addd867Team
(Team_ID integer auto_increment primary key,
 Team_Name varchar(255) not null,
 Team_region varchar(255) not null
);

create table addd867Players
(Player_ID integer unsigned primary key,
 Team_Id integer not null,
 Player_Name varchar(255),
 Ingame_Name varchar(255) not null,
 Player_age tinyint unsigned,
 foreign key (Team_ID) references addd867Team(Team_ID) on delete cascade
);

create table addd867Match_schedule
(Match_No integer auto_increment primary key,
 Team_ID_1 integer,
 Team_ID_2 integer,
 Match_Date integer not null,                                 
 /*Date is in form of yymmdd */
 Match_Time Time not null,                                       
 
 foreign key(Team_ID_1) references addd867Team(Team_ID) on delete set null,
 foreign key(Team_ID_2) references addd867Team(Team_ID) on delete set null
 );

create table addd867Performance
(Player_ID integer unsigned,
 Match_No integer,
 Number_kills integer,
 Number_Assists integer,
 Number_deaths integer,
 primary key (Player_ID,Match_No),
 foreign key (Player_ID) references addd867Players(Player_ID) ,
 foreign key (Match_No) references addd867Match_schedule(Match_No) 
 );
 
 create table addd867Gaming_PC
 (PC_No integer unsigned primary key,
  PC_Proccessor varchar(255),
  PC_GPU varchar(255),
  Last_Servicing_Date integer
 );
 
 create table addd867PC_Allotted
 (Player_ID integer unsigned,
  PC_No integer unsigned,
  Match_No integer,
  foreign key (Match_No) references addd867Match_schedule(Match_No),
  foreign key (Player_ID) references addd867Players(Player_ID) ,
  foreign key (PC_No) references addd867Gaming_PC(PC_No) on delete cascade,
 
  primary key (Player_ID, PC_No, Match_No)
  
 );
 
 
 
 /* SECTION 2 - INSERT STATEMENTS */
 
 insert into addd867Team (Team_name, Team_region) values ('VTEK', 'ASIA'),
                                                        ('NAVI', 'EUROPE'),
                                                        ('OUTSIDERS', 'EUROPE'),
                                                        ('FAZE', 'EUROPE'),
                                                        ('HEROIC', 'EUROPE'),
                                                        ('FURIA', 'AMERICA'),
                                                        ('CLOUD 9', 'EUROPE'),
                                                        ('FNATIC', 'EUROPE'),
                                                        ('NIP', 'EUROPE'),
                                                        ('VITALITY', 'EUROPE'),
                                                        ('MOUZ ESPORTS', 'EUROPE'),
                                                        ('OG', 'EUROPE'),
                                                        ('TEAM SPIRIT', 'EUROPE'),
                                                        ('TEAM LIQUID', 'AMERICA'),
                                                        ('ENCE', 'EUROPE');
 
 insert into addd867Players values (1001, 1, 'Aniket Krish ', 'VTeKRed', 20 ),
                                (1002, 1, 'ANWESH SARANGI', 'VTeKChrome', 19 ),
                                (1003, 1, Null, 'VTekWar1o', 15),
                                (2001, 2, 'Oleksandr Kostyliev', 's1mple', 25 ),
                                (2002, 2, 'Valerii Vakhovskyi', 'b1t', 19 ),
                                (3001, 3, 'Aleksei Golubev', 'Qikert', 24 ),
                                (3002, 3, 'Dzhami Ali', 'jame', 24 ), 
                                (4001, 4, 'Helvijs Saukants', 'broky', 21 ),
                                (4002, 4, 'Russel Dulken', 'Twistzz', 23 ),
                                (4003, 4, Null, 'Karrigan', 29),
                                (5001, 5, 'Martin Lund', 'stavn', 20 ),
                                (5002, 5, 'Casper Møller', 'cadian', 27 ),
                                (6001, 6, 'Yuri Gomes', ' yuurih', 23 ),
                                (6002, 6, 'Kaike Silva Cerato', 'KSCERATO', 23 ),
                                (7001, 7, 'Vladislav Gorshkov', 'nafany', 21 ),
                                (7002, 7, 'Dmitriy Eduardovich Sokolov', 'sh1ro', 21 ),
                                (8001, 8, 'Lars Freddy Johansson', 'KRIMZ', 28 ),
                                (8002, 8, 'William Merriman', 'mezii', 24 ),
                                (9001, 9, 'Bo Fredrik Sterner', 'REZ', 24 ),
                                (9002, 9, 'Hampus Poser', 'Hampus', 24 ),
                                (10001, 10, 'Dan Madesclaire', 'apEX', 29 ),
                                (10002, 10, 'Mathieu Herbaut', ' ZywOo', 22 ),
                                (11001, 11, 'David Čerňanský', 'frozen', 20 ),
                                (11002, 11, 'Christopher Nong', 'dexter', 28 ),
                                (12001, 12, 'Shahar Shushan', 'flameZ', 19 ),
                                (12002, 12, 'Nemanja Isaković', 'nexa', 25 ),
                                (12003, 12, Null, 'Notail', 19),
                                (13001, 13, 'Leonid Vishnyakov', 'chopper', 25 ),
                                (13002, 13, 'Boris Vorobyev', 'magixx', 19 ),
                                (14001, 14, 'Jonathan Jablonowski', 'EliGE', 25 ),
                                (14002, 14, 'Keith Jordan Markovic', 'NAF', 25 ),
                                (15001, 15, 'Marco Pfeiffer', 'snappi', 32 ),
                                (15002, 15, 'Paweł Dycha', 'Dycha', 25 );
                                
                                
                                
                                
insert into addd867Match_schedule (Team_ID_1, Team_ID_2, Match_Date, Match_Time) values 
                                (1,15, 221031, '13:30:00'),
								(14,13, 221031,'16:30:00'),
                                (11,14, 221101,'13:30:00'),
                                (2,10, 221101, '16:30:00'),
                                (1,14, 221102, '13:30:00'),
                                (3,4, 221102, '16:30:00'),
                                (6,7,221103,'13:30:00'),
                                (5,9,221103, '16:30:00'),
                                (8,12,221104,'13:30:00'),
                                (10,4,221104, '16:30:00'),
                                (1,8,221106,'13:30:00'),
                                (7,9,221106, '16:30:00'),
                                (4,9,221107,'13:30:00'),
                                (2,3,221107, '16:30:00'),
                                (6,5,221108,'13:30:00'),
                                (9,3,221110, '16:30:00'),
                                (6,8,221110,'13:30:00'),
                                (2,5,221112,'13:30:00'),  /*(SEMI-FINAL)*/
                                (3,6,221112, '16:30:00'), /*(SEMI-FINAL)*/
                                (3,5, 221114,'16:30:00'); /*(FINAL)*/
                                
insert into addd867Performance values (2001, 4, 42, 17, 11),
                                        (2001, 14, 28, 15, 13),
                                        (2001, 18, 37, 9, 9),
                                        (2002, 4, 28, 17, 10),
                                        (2002, 14, 32, 15, 10),
                                        (2002, 18, 31, 9, 9),
                                        (1001, 1, 32, 17, 13),
                                        (1001, 5, 25, 15, 13),
                                        (1001, 11, 27, 9, 9),
                                        (4002, 6, 35, 11, 11),
                                        (4002, 10, 25, 10, 13),
                                        (4002, 13, 37, 19, 9),
                                        (6002, 7, 21, 17, 11),
                                        (6002, 15, 38, 15, 13),
                                        (6002, 17, 41, 17, 15),
                                        (10002, 10, 31, 17, 11),
                                        (10002, 4, 25, 15, 13),
                                        (3002, 6, 21, 17, 12),
                                        (3002, 14, 28, 15, 15),
                                        (3002, 19, 27, 9, 9),
                                        (3002, 20, 23,15,13),
                                        (5002, 8, 27, 17, 12),
                                        (5002, 15, 18, 15, 13),
                                        (5002, 18, 27, 9, 24),
                                        (5002, 20, 29,15,19);
                                        
insert into addd867Gaming_PC values (100,'Intel', 'RTX 3090', 220801), 
                                    (101, 'Intel', 'RTX 3080 Ti', 220401),
                                    (102, 'Intel', 'RTX 3090 Ti', 220801),
                                    (103, 'AMD', 'RTX 3080 Ti', 220801),
                                    (104, 'Intel', 'RTX 3080 Ti', 220401),
                                    (105, 'Intel', 'RTX 3080 Ti', 220801),
                                    (106, 'Intel', 'RTX 3090', 220401),
                                    (107, 'Intel', 'RTX 3080 Ti', 220601),
                                    (108, 'Intel', 'RTX 3090', 220601),
                                    (109, 'Intel', 'RTX 3080 Ti', 220801),
                                    (110, 'AMD', 'RTX 3080 Ti', 220401),
                                    (111, 'AMD', 'RTX 3090', 220601),
                                    (112, 'Intel', 'RTX 3080 Ti', 220401),
                                    (113, 'Intel', 'RTX 3080 Ti', 220801),
                                    (114, 'AMD', 'RTX 3090 Ti', 221001),
                                    (115, 'AMD', 'RTX 3090 Ti', 220101),
                                    (116, 'Intel', 'RTX 3090', 220201),
                                    (117, 'AMD', 'RTX 3080 Ti', 220401),
                                    (118, 'AMD', 'RTX 3080 Ti', 220401),
                                    (119, 'Intel', 'RTX 3090 Ti', 221001),
                                    (120, 'Intel', 'RTX 3090 Ti', 220101);
                                    
insert into addd867PC_Allotted values (1001, 114, 1),
                                        (1001, 119, 5),
                                        (1001, 105, 11),
                                        (2001, 104, 4),
                                        (2001, 109, 14),
                                        (2001, 115, 18),
                                        (3002, 104, 6),
                                        (3002, 119, 14),
                                        (3002, 105, 20),
                                        (4001, 100, 13),
                                        (4001, 102, 10),
                                        (4001, 102, 6),
                                        (5001, 119, 8),
                                        (5001, 119, 15),
                                        (5001, 113, 18),
                                        (6001, 104, 7),
                                        (6001, 106, 15),
                                        (6001, 107, 17),
                                        (7001, 106, 12),
                                        (7001, 116, 7),
                                        (8001, 105, 9);
                                        
                                        
                                        
/* SECTION 3 - UPDATE STATEMENTS */
 /*1*/
update addd867Players set Ingame_Name = 'VteKOrion'
where Player_ID = 1002;


/*2*/
update addd867Gaming_PC set PC_GPU = 'RTX 4090'
where PC_No = 104 or PC_No = 107;


                     
/* SECTION 4 - SINGLE TABLE SELECT STATEMENTS */


/* 
1)  List the kill per death or K/D ratio of the palyers ?
*/
select *, Number_kills / Number_deaths as 'K/D'
from addd867Performance;

/* 
2)  List the players and all there details, whose names are unknown or anonymous(Player_Name = Null)?
*/
select *
from addd867Players 
where Player_Name is Null ;


/* 
3) Name all the teams that dont belong to the europe region? 
*/

select Team_Name 
from addd867Team
where Team_region != 'EUROPE';

/* 
4) List the names and ages of players over 23 and younger than 29 ?
*/
select Player_Name, Player_age
from addd867Players
where Player_age > 23 and Player_age < 29 ;
  


/* 
5) List all the players whose Name start with D and M ?  
*/
select Player_ID, Player_Name
from addd867Players 
where Player_Name like "D%" or Player_Name like "M%" ;


/* 
6)  How amny matches have been palyed by team outsiders(team id = 3) ?
*/
select count(Match_No) as 'Total_matches_outsiders'
from addd867Match_schedule
where Team_ID_1 = 3 or Team_ID_2 = 3;


/* SECTION 5 - MULTIPLE TABLE SELECT STATEMENTS */


/* 
1) List all the pcs used in the tournament after 5 th november along with the details of player using it and the match number ?
*/
select  PC_No, Player_Name, Ingame_Name, T3.Match_No,Match_Date,Match_Time 
from addd867Players T1
inner join addd867Match_schedule T2
on T1.Team_Id = T2.Team_ID_1 or
T1.Team_Id = T2.Team_ID_2 
inner join addd867PC_Allotted T3
on T2.Match_No = T3.Match_No
where Match_date > 221105
order by PC_No asc;

/*
2)List all the players who dont belong to the europe region?  

*/
select Player_Name, Ingame_Name, Team_region as 'region'
from addd867Players T1
inner join addd867Team T2
on T1.Team_Id = T2.Team_ID
where Team_region != 'EUROPE' ;



/* 
3) List the teams along with there team id that have played more than 3 matches in the tournament ? 

*/
select T1.Team_ID, Team_Name, COUNT(*) as 'Total_matches' 
from addd867Team T1
inner join addd867Match_schedule T2
on T1.Team_ID = T2.Team_ID_1 OR
T1.Team_ID = T2.Team_ID_2
group by Team_Name, T1.Team_ID
having count(*) > 3
order by Team_ID asc;

 

/* 
4) List the players who have scored more than 30 kills in a match?  

*/
select Player_Name, Ingame_Name
from addd867Players
where Player_ID in (select Player_ID from addd867Performance where Number_kills >= 30);


/* 
5)  List the players who have played on a PC having GPU RTX 3090 Ti ?

*/
select Player_ID, Player_Name, Ingame_Name
from addd867Players P
where EXISTS
(select * from addd867PC_Allotted A
 inner join addd867Gaming_PC G
 where A.PC_No = G.PC_No
 and PC_GPU = 'RTX 3090 Ti'
 and P.Player_ID= A.Player_ID
);



/* 
6)  List the palyers who have more Assists than the average number of all players ?

*/
select Player_Name,Ingame_Name
from addd867Players
where Player_ID in 
(select Player_ID
 from addd867Performance
 where Number_Assists >
 (select AVG(Number_Assists) from addd867Performance));



/* SECTION 6 - DELETE ROWS (make sure the SQL is commented out in this section)

DELETE FROM addd867Players where Player_Name = 'ANWESH SARANGI' ;

DELETE FROM addd867Gaming_PC where PC_GPU = 'RTX 4090' or PC_Proccessor = 'AMD' ;

*/




/* SECTION 7 - DROP TABLES (make sure the SQL is commented out in this section)

DROP TABLE addd867PC_Allotted;
DROP TABLE addd867Gaming_PC;
DROP TABLE addd867Performance;
DROP TABLE addd867Match_schedule;
DROP TABLE addd867Players;
DROP TABLE addd867Team;


*/