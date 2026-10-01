# import requests

# url = "https://jsonplaceholder.typicode.com/posts"

# response = requests.get(url)

# print("Durum kodu:", response.status_code)

# data = response.json()

# print("Toplam veri:", len(data))

# for post in data[:5]:
#     print("\nID:", post["id"])
#     print("Başlık:", post["title"])
#     print("İçerik:", post["body"])


import requests

url = "https://jsonplaceholder.typicode.com/posts"

params = {
    "userId": 1
}

response = requests.get(url, params=params)

print("Durum kodu:", response.status_code)

data = response.json()

print("Gelen veri sayısı:", len(data))

for post in data:
    print("\nID:", post["id"])
    print("Başlık:", post["title"])