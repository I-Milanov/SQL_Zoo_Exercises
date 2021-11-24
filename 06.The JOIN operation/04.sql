SELECT team1, team2,  player
  FROM game JOIN goal ON (game.id=goal.matchid)
WHERE player LIKE 'Mario%'