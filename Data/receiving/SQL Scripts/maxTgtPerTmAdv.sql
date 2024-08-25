WITH max_tgt_cte AS (
    SELECT "Tm", 
           MAX("Tgt") AS "Leader"
    FROM advrec.advrec18 -- Replace number with year you want retrieve
    GROUP BY "Tm"
)
SELECT 	r."Tm",
	    r."Player",  -- Additional columns you want to retrieve
	    r."Pos",
	    r."Age",
	   	r."Tgt",
       	r."Rec", 
		r."Yds",
		r."TD",
		r."Int",
		r."Rat"
FROM advrec.advrec18 r -- Don't forget to replace this
JOIN max_tgt_cte m ON r."Tm" = m."Tm" AND r."Tgt" = m."Leader";