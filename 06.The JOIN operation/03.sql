SELECT player,goal.teamid,stadium, mdate
  FROM game JOIN goal ON (game.id=goal.matchid)
WHERE goal.teamid='GER'