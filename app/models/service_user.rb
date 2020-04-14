class ServiceUser < ApplicationRecord
  belongs_to :user
  belongs_to :service
end
