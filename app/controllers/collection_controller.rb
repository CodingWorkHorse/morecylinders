class CollectionController < ApplicationController
  def index
  	@listings = Listing.order(:title)
  end

    def archived
  	@listings = Listing.order(:title)
  end

end
