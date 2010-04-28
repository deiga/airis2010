# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_airedale_session',
  :secret      => 'dc37c5da7b4696f596f49acfd8c46638fbf330ee2c8fadf2f515e80615219a8b0f6594338a527dd6130398f5e8b2b0d5906b6116d7c8e8020f364a80cb0919ad'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
