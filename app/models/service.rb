class Service < ApplicationRecord
  has_many :service_users
  has_many :users, through: :service_users

  scope :by_longitude, -> (min, max) { min && max ? where('longitude >= :min AND longitude <= :max', min: min, max: max) : all }
  scope :by_latitude, -> (min, max) { min && max ? where('latitude >= :min AND latitude <= :max', min: min, max: max) : all }

  API_RESULTS_LIMIT = 100

  def self.search(min_lat:, max_lat:, min_lng:, max_lng:)
    by_latitude(min_lat, max_lat).
      by_longitude(min_lng, max_lng).
      limit(API_RESULTS_LIMIT)
  end

  def self.search_by_category(category)
    Service.all.select { |s| s.name == category}
  end

end
