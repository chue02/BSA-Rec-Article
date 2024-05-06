from bs4 import BeautifulSoup
import requests
import pandas as pd

# Webscrape tm defensive stats from years 18-23
# ProFootballReference only lets you webscrape the first couple of tables in a given page as
# it uses JavaScript to limit how much of a page a bot can access.

years = [18, 19, 20, 21, 22, 23]
data_scraped = '/passing.htm' # Change this to whatever url you want scraped, e.g. '/receiving_advanced.htm'
                                         # You MUST include / before the url name

for year in years:
    url = "https://www.pro-football-reference.com/years/20" + str(year) + data_scraped
    df = pd.read_html(url)[0] # For advanced passing, in the function you must use
    # header = [1], otherwise the header row will be info about the stats and not the actual stats. 
    # Also, if you want to use a different table, change the index after the function from [0] to [1], [2], etc.

    # TODO: Sanatize inputs by removing "*" and other symbols in names
    print(df.head())

    df.to_csv("pass" + str(year) + ".csv")
