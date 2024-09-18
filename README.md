# [How Much Do Top Receivers Contribute to Their QB’s Stats?](https://www.bruinsportsanalytics.com/post/how-top-receivers-contribute-qb-stats)

This project analyzes the numbers from the top QBs in the NFL in relation to the stats with their top receiving target by isolating the QB's numbers from the numbers from their top receiving target.

For instance, during the 2023 season was Dak Prescott a legitimate Second-team All-Pro QB or was he merely a CeeDee Lamb merchant? How many passing yards does Dak Prescott lose after you subtract the yards CeeDee Lamb receieved throughout the season? What happens if we apply a similar process to other notable quarterbacks in the league? Will Dak lose more yards than average? For instance, how many more yards does Dak lose than Patrick Mahomes when one discounts Travis Kelce's numbers from Mahomes's?

The results from this project helps answers the questions such as the ones in the example above.

# Repo Explanation

The `regressions.ipynb` was my attempt of making an MLM to make predictions of quarterback stats, although I abandoned that task quickly. The `visuals.ipynb` file is where I wrote code to generate the graphs via Jupyter-Notebook. The `HTML` files display the code and graphics without you needing to open the `IPYNB` files. `recProject.md` is where I wrote the report, which was rendered via `PanDoc` as the `PDF` file in the repo. 

The `Data` folder contains all the stats I used in the project. All stats were acquired from [Pro Football Reference.](https://www.pro-football-reference.com/) The `Images` folder contains the graphs and visuals my code generated. The visuals are all saved as `PNG` files.

# Potential Improvements
- Compare the QB's top target in each position group (i.e. WR, TE, RB) rather than just the top target per team. This helps us see if a QB is a product of a *system* of weapons rather than one weapon (e.g. is Purdy a product of having *multiple* elite weapons?)
- Take previous seasons' data to create an MLM to see what a quarterback's passer rating should be after discounting stats from top receivers. For instance, if a quarterback should have an expected passer rating of *90* even after you subtract the passing stats gained from his top target's stats, yet his actual passer rating is *85* after the adjustment, what does that indicate about the quarterback? Does this mean his efficiency relies significantly on the prowess of his top target?
