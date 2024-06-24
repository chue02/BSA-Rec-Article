WITH max_rec_cte AS (
    SELECT "Tm", 
           MAX("Rec") AS "Leader"
    FROM rec.rec18 -- Replace number with year you want retrieve
    GROUP BY "Tm"
)
SELECT r."Tm", 
       r."Rec", 
       r."Player",  -- Additional columns you want to retrieve
       r."Age",
       r."Pos",
	   r."Tgt",
	   r."Yds",
	   r."TD",
	   r."Ctch%"
FROM rec.rec18 r
JOIN max_rec_cte m ON r."Tm" = m."Tm" AND r."Rec" = m."Leader";
