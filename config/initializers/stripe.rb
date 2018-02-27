Rails.configuration.stripe = {
  :stripe_key => ENV['stripe_key'],
  :secret_key      => ENV['stripe_secret']
}

Stripe.api_key = ENV["stripe_secret"]
