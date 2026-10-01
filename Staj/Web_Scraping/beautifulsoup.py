import requests
from bs4 import BeautifulSoup

url = "https://quotes.toscrape.com/"

response = requests.get(url)

print("Durum kodu:", response.status_code)

soup = BeautifulSoup(response.text, "html.parser")

quotes = soup.select(".quote")

for quote in quotes:
    text = quote.select_one(".text").get_text(strip=True)
    author = quote.select_one(".author").get_text(strip=True)

    tags = []
    for tag in quote.select(".tag"):
        tags.append(tag.get_text(strip=True))

    print("\nAlıntı:", text)
    print("Yazar:", author)
    print("Etiketler:", tags)