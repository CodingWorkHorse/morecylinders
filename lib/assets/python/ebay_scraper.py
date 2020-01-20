import sys
import requests
from bs4 import BeautifulSoup

URL = sys.argv[1]

headers = {"User-Agent": 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Safari/605.1.15'}
page = requests.get(URL, headers=headers)

soup = BeautifulSoup(page.content, 'html.parser')

title = soup.find(id="itemTitle").get_text()

title = title[15:]

title = title.strip()


price = soup.find(id="prcIsum").get_text()

location_of_dollar_sign = price.find('$')

price_string_format = price[(location_of_dollar_sign + 1):]

price_string_format = price_string_format.replace(',','')

converted_price = float(price_string_format)

condition = soup.find(id="vi-itm-cond").get_text()

print title

print converted_price

print condition