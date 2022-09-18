class StaticPagesController < ApplicationController
  def index
  end

  def pricing
    @pricing = Stripe::Price.list(lookup_keys: ["good_year", "good_month"], expand: ["data.product"])
  end
end
