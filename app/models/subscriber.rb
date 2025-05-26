class Subscriber < ApplicationRecord
  belongs_to :product

  # generates a signed token containing the purpose, a timestamp, a cryptographic signature, and the subscribers id
  # the token is not stored
  generates_token_for :unsubscribe
end
