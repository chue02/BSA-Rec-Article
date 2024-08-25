SELECT "Tm", 
       "Rec",
       "Player",
       "Age",
       "Pos"
	"Tgt", 
	       "Yds",
	       "TD",
	       "Ctch%"
FROM (
    SELECT "Tm", 
           "Rec",
           "Player",
           "Age",
           "Pos",
	       "Tgt",
	       "Yds",
	       "TD",
	       "Ctch%",
           ROW_NUMBER() OVER (PARTITION BY "Tm" ORDER BY "Rec" DESC) AS row_num
    FROM rec.rec18
) AS ranked
WHERE row_num <= 3;
