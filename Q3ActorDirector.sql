create Table ActorDirector
(actor_id  int,
 director_id int,
timestamp int  );
Alter table ActorDirector
Add CONSTRAINT pktimestamp PRIMARY KEY(timestamp);

insert into ActorDirector
values (1, 1 ,0 ),
(1,1,1),
(1,1,2),
(1,2,3),
(1,2,4),
(2,1,5),
(2,1,6);    
select actor_id,director_id
from ActorDirector
group by actor_id,director_id 
having count(timestamp)>=3;