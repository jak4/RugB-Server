# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Server::Application.config.secret_key_base = '492dee6470e6827c408482f9c73599ee1862e87fff915f738bd27388c5ecd453f99790c0a11732e80005286daa4de5983d18fd91b978ee385fe2d37adb9b3df1'
