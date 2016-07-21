
Be in the right directory

Created a database in the Postico called projects (with all lowercase)

In command line - psql projects < projects.sql

Now connect to the database by \c projects;

Check the contents of all the tables in the Projects dataabse

The first projects says tha we are at the projects database
projects=# select * from project;

id |       name
----+-------------------
 1 | Coffee Store
 2 | Draw Together
 3 | Wiki
 4 | Tic Tac Toe
 5 | Todo List Angular
 6 | RPG Game
 7 | Memory Game
 8 | Rate the Throne
 9 | Sentimotion
10 | Sportakus
11 | Job Press
12 | Whiteboarding
13 | Basketball

projects=# select * from tech;

id |     name
----+---------------
 1 | jQuery
 2 | JavaScript
 3 | HTML
 4 | CSS
 5 | Python
 6 | MongoDB
 7 | PostgreSQL
 8 | Mongoose
 9 | AngularJS
10 | Bootstrap
11 | Node.js
12 | Express
13 | Socket.IO
14 | Animate.css
15 | Ruby
16 | Ruby on Rails
17 | Java
18 | C++
(18 rows)


select
  project.id, project_uses_tech.project_id, project_uses_tech.tech_id
from
  project, project_users_tech
left outer join
  tech on tech.project_id = project.id;

select
  project.id, project.name, tech.id, tech.name
from
  project, tech;


select * from project_uses_tech;
-- Press space to scroll faster

project_id | tech_id
------------+---------
         1 |       2
         1 |       3
         1 |       4
         1 |       6
         1 |       8
         1 |       9
         1 |      10
         1 |      11
         1 |      12
         2 |      11
         2 |      12
         2 |       2
         2 |       3
         2 |       4
         2 |      13
         3 |      12
         3 |      11
         3 |       2
         3 |       3
         3 |       4
         4 |       1
         4 |       2
         4 |       3
         4 |       4
         5 |       2
         5 |       3
         5 |       4
         5 |       9
         6 |       5
         7 |       1
         7 |       2
         7 |       3
         7 |       4
         8 |       1
         8 |       2
         8 |       3
         8 |       4
         8 |       9
         8 |      10
         9 |       2
         9 |       3
         9 |       4
         9 |       9
         9 |      10
        10 |       1
        10 |       2
        10 |       3
        10 |       4
        10 |       9
        10 |      10
        11 |       2
        11 |       3
        11 |       4
        11 |       9
        11 |      10
         8 |      14
(56 rows)

* Do a cartesian join between the project table and the tech table


select
  project.id, project.name, tech.id, tech.name
from
  project, tech;



id |       name        | id |     name
----+-------------------+----+---------------
 1 | Coffee Store      |  1 | jQuery
 2 | Draw Together     |  1 | jQuery
 3 | Wiki              |  1 | jQuery
 4 | Tic Tac Toe       |  1 | jQuery
 5 | Todo List Angular |  1 | jQuery
 6 | RPG Game          |  1 | jQuery
 7 | Memory Game       |  1 | jQuery
 8 | Rate the Throne   |  1 | jQuery
 9 | Sentimotion       |  1 | jQuery
10 | Sportakus         |  1 | jQuery
11 | Job Press         |  1 | jQuery
12 | Whiteboarding     |  1 | jQuery
13 | Basketball        |  1 | jQuery
 1 | Coffee Store      |  2 | JavaScript
 2 | Draw Together     |  2 | JavaScript
 3 | Wiki              |  2 | JavaScript
 4 | Tic Tac Toe       |  2 | JavaScript
 5 | Todo List Angular |  2 | JavaScript
 6 | RPG Game          |  2 | JavaScript
 7 | Memory Game       |  2 | JavaScript
 8 | Rate the Throne   |  2 | JavaScript
 9 | Sentimotion       |  2 | JavaScript
10 | Sportakus         |  2 | JavaScript
11 | Job Press         |  2 | JavaScript
12 | Whiteboarding     |  2 | JavaScript
13 | Basketball        |  2 | JavaScript
 1 | Coffee Store      |  3 | HTML
 2 | Draw Together     |  3 | HTML
 3 | Wiki              |  3 | HTML
 4 | Tic Tac Toe       |  3 | HTML
 5 | Todo List Angular |  3 | HTML
 6 | RPG Game          |  3 | HTML
 7 | Memory Game       |  3 | HTML
 8 | Rate the Throne   |  3 | HTML
 9 | Sentimotion       |  3 | HTML
10 | Sportakus         |  3 | HTML
11 | Job Press         |  3 | HTML
12 | Whiteboarding     |  3 | HTML
13 | Basketball        |  3 | HTML
 1 | Coffee Store      |  4 | CSS
 2 | Draw Together     |  4 | CSS
 3 | Wiki              |  4 | CSS
 4 | Tic Tac Toe       |  4 | CSS
 5 | Todo List Angular |  4 | CSS
 6 | RPG Game          |  4 | CSS
 7 | Memory Game       |  4 | CSS
 8 | Rate the Throne   |  4 | CSS
 9 | Sentimotion       |  4 | CSS
10 | Sportakus         |  4 | CSS
11 | Job Press         |  4 | CSS
12 | Whiteboarding     |  4 | CSS
13 | Basketball        |  4 | CSS
 1 | Coffee Store      |  5 | Python
 2 | Draw Together     |  5 | Python
 3 | Wiki              |  5 | Python
 4 | Tic Tac Toe       |  5 | Python
 5 | Todo List Angular |  5 | Python
 6 | RPG Game          |  5 | Python
 7 | Memory Game       |  5 | Python
 8 | Rate the Throne   |  5 | Python
 9 | Sentimotion       |  5 | Python
10 | Sportakus         |  5 | Python
11 | Job Press         |  5 | Python
12 | Whiteboarding     |  5 | Python
13 | Basketball        |  5 | Python
 1 | Coffee Store      |  6 | MongoDB
 2 | Draw Together     |  6 | MongoDB
 3 | Wiki              |  6 | MongoDB
 4 | Tic Tac Toe       |  6 | MongoDB
 5 | Todo List Angular |  6 | MongoDB
 6 | RPG Game          |  6 | MongoDB
 7 | Memory Game       |  6 | MongoDB
 8 | Rate the Throne   |  6 | MongoDB
 9 | Sentimotion       |  6 | MongoDB
10 | Sportakus         |  6 | MongoDB
11 | Job Press         |  6 | MongoDB
12 | Whiteboarding     |  6 | MongoDB
13 | Basketball        |  6 | MongoDB
 1 | Coffee Store      |  7 | PostgreSQL
 2 | Draw Together     |  7 | PostgreSQL
 3 | Wiki              |  7 | PostgreSQL
 4 | Tic Tac Toe       |  7 | PostgreSQL
 5 | Todo List Angular |  7 | PostgreSQL
 6 | RPG Game          |  7 | PostgreSQL
 7 | Memory Game       |  7 | PostgreSQL
 8 | Rate the Throne   |  7 | PostgreSQL
 9 | Sentimotion       |  7 | PostgreSQL
10 | Sportakus         |  7 | PostgreSQL
11 | Job Press         |  7 | PostgreSQL
12 | Whiteboarding     |  7 | PostgreSQL
13 | Basketball        |  7 | PostgreSQL
 1 | Coffee Store      |  8 | Mongoose
 2 | Draw Together     |  8 | Mongoose
 3 | Wiki              |  8 | Mongoose
 4 | Tic Tac Toe       |  8 | Mongoose
 5 | Todo List Angular |  8 | Mongoose
 6 | RPG Game          |  8 | Mongoose

 continued assigning Coffee Store to Basketball assigning JQuery to C++


* Perform a left outer join between the project table and the project_uses_tech tables


select
  *
 from
  project
left outer join
  project_uses_tech on project.id = project_uses_tech.project_id;

  id |       name        | project_id | tech_id
 ----+-------------------+------------+---------
   1 | Coffee Store      |          1 |       2
   1 | Coffee Store      |          1 |       3
   1 | Coffee Store      |          1 |       4
   1 | Coffee Store      |          1 |       6
   1 | Coffee Store      |          1 |       8
   1 | Coffee Store      |          1 |       9
   1 | Coffee Store      |          1 |      10
   1 | Coffee Store      |          1 |      11
   1 | Coffee Store      |          1 |      12
   2 | Draw Together     |          2 |      11
   2 | Draw Together     |          2 |      12
   2 | Draw Together     |          2 |       2
   2 | Draw Together     |          2 |       3
   2 | Draw Together     |          2 |       4
   2 | Draw Together     |          2 |      13
   3 | Wiki              |          3 |      12
   3 | Wiki              |          3 |      11
   3 | Wiki              |          3 |       2
   3 | Wiki              |          3 |       3
   3 | Wiki              |          3 |       4
   4 | Tic Tac Toe       |          4 |       1
   4 | Tic Tac Toe       |          4 |       2
   4 | Tic Tac Toe       |          4 |       3
   4 | Tic Tac Toe       |          4 |       4
   5 | Todo List Angular |          5 |       2
   5 | Todo List Angular |          5 |       3
   5 | Todo List Angular |          5 |       4
   5 | Todo List Angular |          5 |       9
   6 | RPG Game          |          6 |       5
   7 | Memory Game       |          7 |       1
   7 | Memory Game       |          7 |       2
   7 | Memory Game       |          7 |       3
   7 | Memory Game       |          7 |       4
   8 | Rate the Throne   |          8 |       1
   8 | Rate the Throne   |          8 |       2
   8 | Rate the Throne   |          8 |       3
   8 | Rate the Throne   |          8 |       4
   8 | Rate the Throne   |          8 |       9
   8 | Rate the Throne   |          8 |      10
   9 | Sentimotion       |          9 |       2
   9 | Sentimotion       |          9 |       3
   9 | Sentimotion       |          9 |       4
   9 | Sentimotion       |          9 |       9
   9 | Sentimotion       |          9 |      10
  10 | Sportakus         |         10 |       1
  10 | Sportakus         |         10 |       2
  10 | Sportakus         |         10 |       3
  10 | Sportakus         |         10 |       4
  10 | Sportakus         |         10 |       9
  10 | Sportakus         |         10 |      10
  11 | Job Press         |         11 |       2
  11 | Job Press         |         11 |       3
  11 | Job Press         |         11 |       4
  11 | Job Press         |         11 |       9
  11 | Job Press         |         11 |      10
   8 | Rate the Throne   |          8 |      14
  12 | Whiteboarding     |            |
  13 | Basketball        |            |
 (58 rows)

* Perform a left outer join between the tech table and the project_uses_tech table

select
  *
from
  tech
left outer join
  project_uses_tech on tech.id = project_uses_tech.tech_id;

  id |     name      | project_id | tech_id
 ----+---------------+------------+---------
   2 | JavaScript    |          1 |       2
   3 | HTML          |          1 |       3
   4 | CSS           |          1 |       4
   6 | MongoDB       |          1 |       6
   8 | Mongoose      |          1 |       8
   9 | AngularJS     |          1 |       9
  10 | Bootstrap     |          1 |      10
  11 | Node.js       |          1 |      11
  12 | Express       |          1 |      12
  11 | Node.js       |          2 |      11
  12 | Express       |          2 |      12
   2 | JavaScript    |          2 |       2
   3 | HTML          |          2 |       3
   4 | CSS           |          2 |       4
  13 | Socket.IO     |          2 |      13
  12 | Express       |          3 |      12
  11 | Node.js       |          3 |      11
   2 | JavaScript    |          3 |       2
   3 | HTML          |          3 |       3
   4 | CSS           |          3 |       4
   1 | jQuery        |          4 |       1
   2 | JavaScript    |          4 |       2
   3 | HTML          |          4 |       3
   4 | CSS           |          4 |       4
   2 | JavaScript    |          5 |       2
   3 | HTML          |          5 |       3
   4 | CSS           |          5 |       4
   9 | AngularJS     |          5 |       9
   5 | Python        |          6 |       5
   1 | jQuery        |          7 |       1
   2 | JavaScript    |          7 |       2
   3 | HTML          |          7 |       3
   4 | CSS           |          7 |       4
   1 | jQuery        |          8 |       1
   2 | JavaScript    |          8 |       2
   3 | HTML          |          8 |       3
   4 | CSS           |          8 |       4
   9 | AngularJS     |          8 |       9
  10 | Bootstrap     |          8 |      10
   2 | JavaScript    |          9 |       2
   3 | HTML          |          9 |       3
   4 | CSS           |          9 |       4
   9 | AngularJS     |          9 |       9
  10 | Bootstrap     |          9 |      10
   1 | jQuery        |         10 |       1
   2 | JavaScript    |         10 |       2
   3 | HTML          |         10 |       3
   4 | CSS           |         10 |       4
   9 | AngularJS     |         10 |       9
  10 | Bootstrap     |         10 |      10
   2 | JavaScript    |         11 |


* Perform a left outer join from the project table to the project_users_tech table and then left outer join again to the tech table.

select
  *
from
  project
left outer join
  project_uses_tech on project.id = project_uses_tech.project_id
left outer join
  tech on project_uses_tech.tech_id = tech.id;



id | project_id | tech_id |       name        |    name
----+------------+---------+-------------------+-------------
1 |          1 |       2 | Coffee Store      | JavaScript
1 |          1 |       3 | Coffee Store      | HTML
1 |          1 |       4 | Coffee Store      | CSS
1 |          1 |       6 | Coffee Store      | MongoDB
1 |          1 |       8 | Coffee Store      | Mongoose
1 |          1 |       9 | Coffee Store      | AngularJS
1 |          1 |      10 | Coffee Store      | Bootstrap
1 |          1 |      11 | Coffee Store      | Node.js
1 |          1 |      12 | Coffee Store      | Express
2 |          2 |      11 | Draw Together     | Node.js
2 |          2 |      12 | Draw Together     | Express
2 |          2 |       2 | Draw Together     | JavaScript
2 |          2 |       3 | Draw Together     | HTML
2 |          2 |       4 | Draw Together     | CSS
2 |          2 |      13 | Draw Together     | Socket.IO
3 |          3 |      12 | Wiki              | Express
3 |          3 |      11 | Wiki              | Node.js
3 |          3 |       2 | Wiki              | JavaScript
3 |          3 |       3 | Wiki              | HTML
3 |          3 |       4 | Wiki              | CSS
4 |          4 |       1 | Tic Tac Toe       | jQuery
4 |          4 |       2 | Tic Tac Toe       | JavaScript
4 |          4 |       3 | Tic Tac Toe       | HTML
4 |          4 |       4 | Tic Tac Toe       | CSS
5 |          5 |       2 | Todo List Angular | JavaScript
5 |          5 |       3 | Todo List Angular | HTML
5 |          5 |       4 | Todo List Angular | CSS
5 |          5 |       9 | Todo List Angular | AngularJS
6 |          6 |       5 | RPG Game          | Python
7 |          7 |       1 | Memory Game       | jQuery
7 |          7 |       2 | Memory Game       | JavaScript
7 |          7 |       3 | Memory Game       | HTML
7 |          7 |       4 | Memory Game       | CSS
8 |          8 |       1 | Rate the Throne   | jQuery
8 |          8 |       2 | Rate the Throne   | JavaScript
8 |          8 |       3 | Rate the Throne   | HTML
8 |          8 |       4 | Rate the Throne   | CSS
8 |          8 |       9 | Rate the Throne   | AngularJS
8 |          8 |      10 | Rate the Throne   | Bootstrap
9 |          9 |       2 | Sentimotion       | JavaScript
9 |          9 |       3 | Sentimotion       | HTML
9 |          9 |       4 | Sentimotion       | CSS
9 |          9 |       9 | Sentimotion       | AngularJS
9 |          9 |      10 | Sentimotion       | Bootstrap
10 |         10 |       1 | Sportakus         | jQuery
10 |         10 |       2 | Sportakus         | JavaScript
10 |         10 |       3 | Sportakus         | HTML
10 |         10 |       4 | Sportakus         | CSS
10 |         10 |       9 | Sportakus         | AngularJS
10 |         10 |      10 | Sportakus         | Bootstrap
11 |         11 |       2 | Job Press         | JavaScript
11 |         11 |       3 | Job Press         | HTML
11 |         11 |       4 | Job Press         | CSS
11 |         11 |       9 | Job Press         | AngularJS
11 |         11 |      10 | Job Press         | Bootstrap
8 |          8 |      14 | Rate the Throne   | Animate.css
12 |            |         | Whiteboarding     |
13 |            |         | Basketball        |
(58 rows)

Extra:

select
  project.id, project_uses_tech.project_id, project_uses_tech.tech_id, project.name
from
  project
left outer join
  project_uses_tech on project.id = project_uses_tech.project_id;

The left outer join has the access to the project_uses_tech table but not the tech table
The join has to start from some table so we have put from project.

id | project_id | tech_id |       name
----+------------+---------+-------------------
 1 |          1 |       2 | Coffee Store
 1 |          1 |       3 | Coffee Store
 1 |          1 |       4 | Coffee Store
 1 |          1 |       6 | Coffee Store
 1 |          1 |       8 | Coffee Store
 1 |          1 |       9 | Coffee Store
 1 |          1 |      10 | Coffee Store
 1 |          1 |      11 | Coffee Store
 1 |          1 |      12 | Coffee Store
 2 |          2 |      11 | Draw Together
 2 |          2 |      12 | Draw Together
 2 |          2 |       2 | Draw Together
 2 |          2 |       3 | Draw Together
 2 |          2 |       4 | Draw Together
 2 |          2 |      13 | Draw Together
 3 |          3 |      12 | Wiki
 3 |          3 |      11 | Wiki
 3 |          3 |       2 | Wiki
 3 |          3 |       3 | Wiki
 3 |          3 |       4 | Wiki
 4 |          4 |       1 | Tic Tac Toe
 4 |          4 |       2 | Tic Tac Toe
 4 |          4 |       3 | Tic Tac Toe
 4 |          4 |       4 | Tic Tac Toe
 5 |          5 |       2 | Todo List Angular
 5 |          5 |       3 | Todo List Angular
 5 |          5 |       4 | Todo List Angular
 5 |          5 |       9 | Todo List Angular
 6 |          6 |       5 | RPG Game
 7 |          7 |       1 | Memory Game
 7 |          7 |       2 | Memory Game
 contd..

* Perform a left outer join between the tech table and the project_uses_tech table
the count will show the total no of duplicate rows in Projects table.
tech_count takes care of the null values because of the sum function


select
  count (*), project.id, project.name,
  sum(case when tech.id is NULL then 0 else 1 end) as tech_count
from
  project
left outer join
  project_uses_tech on project.id = project_uses_tech.project_id
left outer join
  tech on project_uses_tech.tech_id = tech.id
group by project.id;


count | id |       name        | tech_count
-------+----+-------------------+------------
    1 |  6 | RPG Game          |          1
    7 |  8 | Rate the Throne   |          7
    1 | 12 | Whiteboarding     |          0
    9 |  1 | Coffee Store      |          9
    6 |  2 | Draw Together     |          6
    5 |  3 | Wiki              |          5
    6 | 10 | Sportakus         |          6
    5 | 11 | Job Press         |          5
    4 |  4 | Tic Tac Toe       |          4
    4 |  5 | Todo List Angular |          4
    1 | 13 | Basketball        |          0
    5 |  9 | Sentimotion       |          5
    4 |  7 | Memory Game       |          4
(13 rows)

* Rank each project by how many tech it uses

select
  count (*), tech.id, tech.name,
  sum(case when tech.id is NULL then 0 else 1 end) as project_count
from
  tech
left outer join
  project_uses_tech on tech.id = project_uses_tech.tech_id
left outer join
  project on project_uses_tech.project_id = project.id
group by tech.id
order by project_count desc;


count | id |     name      | project_count
-------+----+---------------+---------------
    1 |  7 | PostgreSQL    |             1
    1 |  8 | Mongoose      |             1
    1 | 17 | Java          |             1
    1 | 15 | Ruby          |             1
    1 | 18 | C++           |             1
    1 | 16 | Ruby on Rails |             1
    1 |  6 | MongoDB       |             1
    1 | 13 | Socket.IO     |             1
    1 |  5 | Python        |             1
    1 | 14 | Animate.css   |             1
    3 | 12 | Express       |             3
    3 | 11 | Node.js       |             3
    4 |  1 | jQuery        |             4
    5 | 10 | Bootstrap     |             5
    6 |  9 | AngularJS     |             6
   10 |  3 | HTML          |            10
   10 |  4 | CSS           |            10
   10 |  2 | JavaScript    |            10
(18 rows)


* Rank each project by how many tech it uses

select
  count (*), project.id, project.name,
  sum(case when tech.id is NULL then 0 else 1 end) as tech_count
from
  project
left outer join
  project_uses_tech on project.id = project_uses_tech.project_id
left outer join
  tech on project_uses_tech.tech_id = tech.id
group by project.id
order by tech_count desc;

count | id |       name        | tech_count
-------+----+-------------------+------------
    9 |  1 | Coffee Store      |          9
    7 |  8 | Rate the Throne   |          7
    6 |  2 | Draw Together     |          6
    6 | 10 | Sportakus         |          6
    5 |  9 | Sentimotion       |          5
    5 | 11 | Job Press         |          5
    5 |  3 | Wiki              |          5
    4 |  7 | Memory Game       |          4
    4 |  4 | Tic Tac Toe       |          4
    4 |  5 | Todo List Angular |          4
    1 |  6 | RPG Game          |          1
    1 | 13 | Basketball        |          0
    1 | 12 | Whiteboarding     |          0
(13 rows)

* Rank each tech by how many projects use it

count | id |     name      | project_count
-------+----+---------------+---------------
   10 |  2 | JavaScript    |            10
   10 |  3 | HTML          |            10
   10 |  4 | CSS           |            10
    6 |  9 | AngularJS     |             6
    5 | 10 | Bootstrap     |             5
    4 |  1 | jQuery        |             4
    3 | 11 | Node.js       |             3
    3 | 12 | Express       |             3
    1 |  5 | Python        |             1
    1 | 14 | Animate.css   |             1
    1 |  7 | PostgreSQL    |             1
    1 |  8 | Mongoose      |             1
    1 | 17 | Java          |             1
    1 | 15 | Ruby          |             1
    1 | 18 | C++           |             1
    1 | 16 | Ruby on Rails |             1
    1 |  6 | MongoDB       |             1
    1 | 13 | Socket.IO     |             1
(18 rows)

* Extra : Limit the top 5 projects based on number of techs used

select
  count (*), project.id, project.name,
  sum(case when tech.id is NULL then 0 else 1 end) as tech_count
from
  project
left outer join
  project_uses_tech on project.id = project_uses_tech.project_id
left outer join
  tech on project_uses_tech.tech_id = tech.id
group by project.id
order by tech_count desc
limit 5;

Limiting to 5 results

count | id |      name       | tech_count
-------+----+-----------------+------------
    9 |  1 | Coffee Store    |          9
    7 |  8 | Rate the Throne |          7
    6 | 10 | Sportakus       |          6
    6 |  2 | Draw Together   |          6
    5 |  3 | Wiki            |          5
(5 rows)

* What is the average number of techs used by a project?

select avg(tech_count)
from (
  select
  sum(case when tech.id is NULL then 0 else 1 end) as tech_count
from
  project
left outer join
  project_uses_tech on project.id = project_uses_tech.project_id
left outer join
  tech on project_uses_tech.tech_id = tech.id
group by project.id) as tech_avg;
