from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

'''
The purpose of this script is to scrape pages that can't be scraped normally
via BeautifulSoup (e.g. table is dynamically rendered). What this script does
is go to a pro-football-reference-page, click on the "Share & Export" to 
"Get table as CSV" then download the HTML page. This makes it easier for me
to get the CSV, as instead of having to try to parse through a quasi HTML
table I can already have the table converted as a CSV.
'''

# Start a web browser session (e.g., Chrome)
driver = webdriver.Chrome()

# TODO: Add years to be scraped

# TODO: Implement
# Open the webpage
driver.get("https://example.com")

# Find the button you want to click by its CSS selector, XPath, etc.
button = WebDriverWait(driver, 10).until(
    EC.element_to_be_clickable((By.CSS_SELECTOR, "button.your-button-class"))
)

# Click on the button
button.click()

# TODO: Find way to then scrape data

# Close the browser session
driver.quit()