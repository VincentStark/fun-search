# Be sure to restart your server when you modify this file.

#FunSearch::Application.config.session_store :cookie_store, key: '_' + Settings.appdomain + '_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
#FunSearch::Application.config.session_store :active_record_store

# Use MongoDB
FunSearch::Application.config.session_store :mongoid_store

# Session Expiration
FunSearch::Application.config.expire_after = 2.hours
