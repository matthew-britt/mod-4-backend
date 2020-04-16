class User < ApplicationRecord
    has_many :service_users, dependent: :destroy
    has_many :services, through: :service_users, dependent: :destroy

    def history
      self.services
    end
end
