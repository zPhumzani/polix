class PagesController < ApplicationController
  def index
  	@products = Product.order("created_at DESC").limit(8)
  end
end