class Subscription < ActiveRecord::Base
  attr_accessible :email, :fullname, :issubscribed, :subscribedtags
end
