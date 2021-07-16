class HomeController < ApplicationController
  def index
  end
  def user_updated
  end
  def privacy_policy
  end
  def listing_search
    input_text = "https://www.ebay.com/itm/174843195223?hash=item28b5776f57:g:7hAAAOSwIlVg8YjH"
    @heart = `python lib/assets/python/ebay_scraper.py "#{input_text}"`
    input = "MAKE|MODEL|ZIPCODE"
    input = "Lamborghini|Huracan|60045"
    @liver = `python lib/assets/python/ebay_search_scraper.py "#{input}"`
  end
  def terms_of_service
  end
  def community
    @collections = Collection.all
    @listings = Listing.all
  end
  def community_listings
    @listings = Listing.all
  end
  def community_collections
    @collections = Collection.all
  end
  def archived_listingbase
    @listings = Listing.all
  end
  def community_listingbase
     @listings = Listing.all
  end
end
