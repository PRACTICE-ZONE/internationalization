class CheckoutController < ApplicationController
  def create
    session = Stripe::Checkout::Session.create({
      payment_method_types: ['card'],
      line_items: [{
        price: 'price_1J3c3qK9Xy6Pfj4J4M4g4o2e',
        quantity: 1,
      }],
      mode: 'payment',
      success_url: checkout_success_url,
      cancel_url: checkout_cancel_url,
    })
    render json: { id: session.id }
  end
end
