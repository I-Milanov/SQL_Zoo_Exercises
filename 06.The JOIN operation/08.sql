SELECT DISTINCT  player 
  FROM game JOIN goal ON matchid = id 
    WHERE  (team1='GER' AND goal.teamid!='GER') OR
 (team2='GER' AND goal.teamid!='GER')
