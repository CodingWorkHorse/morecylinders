import sys
import requests
from bs4 import BeautifulSoup

user_input = sys.argv[1]

end_index_of_make = user_input.find("|")
make = user_input[0 : end_index_of_make]
end_index_of_model = user_input.find("|", end_index_of_make + 1)
model = user_input[end_index_of_make + 1 : end_index_of_model]
zip_code = user_input[end_index_of_model + 1 :]
#make = "Ferrari"
#model = "California"
#zip_code = "60045"

#URL = "https://www.ebay.com/sch/i.html?&_sacat=6001&makeval=Aston%20Martin&modelval=DB9&LH_ItemCondition=3000%7C1000%7C2500&_stpos=60045&_nkw=Aston%20Martin%20DB9"
URL = "https://www.ebay.com/sch/i.html?&_sacat=6001&makeval=" + make + "&modelval=" + model + "&LH_ItemCondition=3000%7C1000%7C2500&_stpos=" + zip_code + "&_nkw=" + make + "%20"+ model
print(URL)

headers = {"User-Agent": 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Safari/605.1.15'}



page = requests.get(URL, headers=headers)

soup = BeautifulSoup(page.content, 'html.parser')

listing_elements = soup.find_all('li', class_= 's-item')

for x in listing_elements:
	title_elem = x.find('h3', class_= 's-item__title')
	if(title_elem != None):
		title_elem = title_elem.get_text()
		if("New Listing" in title_elem):
			title_elem = title_elem.replace('New Listing', '')
	print(title_elem)
	price_elem = x.find('span', class_= 's-item__price')
	if(price_elem != None):
		price_elem = price_elem.get_text()
	print(price_elem)
	condition_elem = x.find('span', class_= 'SECONDARY_INFO')
	if(condition_elem != None):
		condition_elem = condition_elem.get_text()
	print(condition_elem)

#title = soup.find(id="itemTitle").get_text()

#title = title[15:]

#title = title.strip()


# price = soup.find(id="prcIsum").get_text()

# location_of_dollar_sign = price.find('$')

# price_string_format = price[(location_of_dollar_sign + 1):]

# price_string_format = price_string_format.replace(',','')

# converted_price = float(price_string_format)

# condition = soup.find(id="vi-itm-cond").get_text()

# print(title)
# print(condition)
# print(converted_price)

#Below Are a Few URLs Generated For Search on Ebay Motors
#https://www.ebay.com/sch/i.html?&_sacat=6001&makeval=Aston%20Martin&modelval=DB9&LH_ItemCondition=3000%7C1000%7C2500&_stpos=60045&_nkw=Aston%20Martin%20DB9
#https://www.ebay.com/sch/i.html?&_sacat=6001&makeval=Mercedes-Benz&modelval=E63%20AMG%20S&LH_ItemCondition=3000%7C1000%7C2500&_stpos=60045&_nkw=Mercedes-Benz%20E63%20AMG%20S
#https://www.ebay.com/sch/i.html?&_sacat=6001&makeval=Lamborghini&modelval=Aventador&LH_ItemCondition=3000%7C1000%7C2500&_stpos=60045&_nkw=Lamborghini%20Aventador
#https://www.ebay.com/sch/i.html?&_sacat=6001&makeval=MAKE&modelval=MODEL&LH_ItemCondition=3000%7C1000%7C2500&_stpos=ZIPCODE&_nkw=MAKE%20MODEL



