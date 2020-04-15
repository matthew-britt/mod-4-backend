class ServicesController < ApplicationController
    # def index
    #     services = Service.search(search_params.to_h.symbolize_keys)
    #     render json: services
    # end

    def index
        services = Service.all 
        render json: services     
    end

    def show
        service = Service.find(params[:id])
        render json: service 
    end

    def create
        service = Service.create(service_params)
        render json: service 
    end

    def update
        @service = Service.find(params[:id])
        @service.update(service_params)
        render json: @service
    end

    def destroy
        @service = Service.find(params[:id])
        @service.destroy    
        render json: {message: "Service no longer available."}
    end

    
    private

    def service_params
        params.permit(:name, :price, :longitude, :latitude, :provided_by, :phone, :email)
    end

    # def set_service
    #     @service = Service.find(params[:id])
    # end

    
    #   def search_params
    #     params.permit(:min_lng, :max_lng, :min_lat, :max_lat)
    #   end
end
