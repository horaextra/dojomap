# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_banheiro_session',
  :secret      => 'd21b1eee642c1ad3e49e063b823599977dd36a16b6062972005ba2af27c05d03fb925ebadc0256f9d5a0121a1fe8c8f6ade3dd2c6ba6031c727fc2dd9e37220a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
