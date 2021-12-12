class JobPayment < ApplicationRecord
  attr_accessor :initiating_party
  attr_accessor :tradesman_email
  attr_accessor :customer_email
  attr_accessor :job_cost
  attr_accessor :short_description
  attr_accessor :tradesmen_mobile

  monetize :amount_cents, allow_nil: false


end
