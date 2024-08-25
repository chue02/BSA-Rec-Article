WITH max_tgt_cte AS (
    SELECT "Tm", 
           MAX("Tgt") AS "Leader"
    FROM rec.rec19 -- Replace number with year you want retrieve
    GROUP BY "Tm"
)
SELECT 	r."Tm", 
	   	r."Tgt",
       	r."Rec", 
       	r."Player",  -- Additional columns you want to retrieve
       	r."Age",
       	r."Pos",
		r."Yds",
		r."TD",
		r."Ctch%"
FROM rec.rec19 r -- Don't forget to replace this
JOIN max_tgt_cte m ON r."Tm" = m."Tm" AND r."Tgt" = m."Leader";