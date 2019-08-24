class HomeController < ApplicationController
  def index
  end
  def user_updated
  end
  def privacy_policy
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
