class ServicesController < ApplicationController
    # def index
    #     services = Service.search(search_params.to_h.symbolize_keys)
    #     render json: services
    # end

    def index
        services = Service.all 
        render json: services     
    end

    
      private
    
    #   def search_params
    #     params.permit(:min_lng, :max_lng, :min_lat, :max_lat)
    #   end
end
