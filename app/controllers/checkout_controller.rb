class CheckoutController < ApplicationController
  def create
    @session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        price: 'price_1LjS1UGwlInU1VC0KX5cyxil',
        quantity: 1,
      }],
      mode: 'subscription',
      success_url: posts_url,
      cancel_url: pricing_url,
    })

    respond_to do |format|
      format.js
    end
  end
end
