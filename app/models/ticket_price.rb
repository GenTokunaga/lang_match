class TicketPrice
  PRICES = [
    { ticket_count: 1, price: 2000 },
    { ticket_count: 3, price: 5000 },
    { ticket_count: 5, price: 7500 },
  ].freeze

  class << self
    def all
      LIST
    end
  end
end
