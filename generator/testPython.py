#! python3
import os, json
menuJson = open('menu.json', 'r', encoding='utf-8')
menuText = json.load(menuJson)
print("hello")
for title in menuText:
    print(title)
menuJson.close()