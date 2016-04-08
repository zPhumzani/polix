class Admin::ApplicationController < ApplicationController
  before_action :authenticate_user!
  def index
  	@total_orders = Order.count
  end
end
