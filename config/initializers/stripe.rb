Rails.configuration.stripe = {
  :stripe_key => ENV['stripe_key'],
  :api_key      => ENV['stripe_secret']
}
Stripe.api_key = ENV["stripe_secret"]
