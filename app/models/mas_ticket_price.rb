class MasTicketPrice < ApplicationRecord
  def self.cached_all
    Rails.cache.fetch('mas_ticket_price/all', expires_in: 12.hours) do
      all.to_a
    end
  end
end
