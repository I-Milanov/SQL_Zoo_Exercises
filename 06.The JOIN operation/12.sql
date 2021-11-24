SELECT matchid,mdate, COUNT(*)
  FROM game JOIN goal ON matchid = id 
 WHERE  goal.teamid='GER'
GROUP BY matchid,mdate
