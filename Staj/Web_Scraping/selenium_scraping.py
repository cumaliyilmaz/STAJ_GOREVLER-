# from selenium import webdriver
# from selenium.webdriver.common.by import By

# driver = webdriver.Chrome()

# driver.get("https://quotes.toscrape.com/")

# print("Sayfa başlığı:", driver.title)

# quotes = driver.find_elements(By.CLASS_NAME, "text")

# for quote in quotes:
#     print(quote.text)

# driver.quit()

from selenium import webdriver
from selenium.webdriver.common.by import By

driver = webdriver.Chrome()

driver.get("https://quotes.toscrape.com/")

print("1. SAYFA")

quotes = driver.find_elements(By.CLASS_NAME, "text")

for quote in quotes:
    print(quote.text)

next_button = driver.find_element(By.CSS_SELECTOR, "li.next a")
next_button.click()

print("\n2. SAYFA")

quotes = driver.find_elements(By.CLASS_NAME, "text")

for quote in quotes:
    print(quote.text)

driver.quit()