Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["client_id"], ENV["client_secret"], {
    :name => "google",
    :scope => ['contacts','plus.login','plus.me', 'userinfo.email'],
    :prompt => "select_account",
    :image_aspect_ratio => "square",
    :image_size => 50,
    :access_type => 'offline'
  }
end
