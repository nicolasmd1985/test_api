module Api
  module V1
    class ExtrasController < ApplicationController
      def index
        extras = Extra.order('created_at DESC');
        render json: {status: 'SUCCESS', messege:'Loaded Extras', data:extras }, status: :ok
      end

      def show
        extra = Extra.find(params[:id])
        render json: {status: 'SUCCESS', messege:'Loaded Contact', data:extra  }, status: :ok
      end

      def create
        extra = Extra.new(extra_params)

        if extra.save
          render json: {status: 'SUCCESS', messege:'Saved Contact', data:extra }, status: :ok
        else
          render json: {status: 'ERROR', messege:'Contact not save', data:extra.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        extra = Extra.find(params[:id])
        extra.destroy
        render json: {status: 'SUCCESS', messege:'Deleted Contact', data:extra }, status: :ok
      end

      def update
        extra = Extra.find(params[:id])
        if extra.update_attributes(extra_params)
          render json: {status: 'SUCCESS', messege:'Update Contact', data:extra }, status: :ok
        else
          render json: {status: 'ERROR', messege:'Contact not update', data:extra.errors }, status: :unprocessable_entity
        end
      end

      private

      def extra_params
        params.permit(:movie,:music,:art,:contact_id)
      end

    end
  end
end
