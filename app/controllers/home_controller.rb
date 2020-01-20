class HomeController < ApplicationController
  def index
  end
  def user_updated
  end
  def privacy_policy
  end
  def listing_search
    input_text = "https://www.ebay.com/itm/2017-Lamborghini-Aventador-SV-Roadster/124043556928?hash=item1ce1927840:g:ETwAAOSwfzJd86yf"
    @heart = `python lib/assets/python/ebay_scraper.py "#{input_text}"`
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
