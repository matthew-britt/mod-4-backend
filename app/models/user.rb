class User < ApplicationRecord
    has_many :service_users
    has_many :services, through: :service_users

    def history
      self.services
    end
end
