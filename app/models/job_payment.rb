class JobPayment < ApplicationRecord

  has_one :link

  monetize :amount_cents, allow_nil: false
end
