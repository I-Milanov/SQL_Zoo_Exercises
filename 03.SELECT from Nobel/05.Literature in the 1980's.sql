SELECT yr, subject, winner
FROM nobel
WHERE subject = 'Literature' 
AND yr>=1980
AND yr<=1989