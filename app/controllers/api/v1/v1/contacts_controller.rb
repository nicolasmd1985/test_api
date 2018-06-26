module Api
  module V1
    class ContactsController < ApplicationController
      def index
        contacts = Contact.order('created_at DESC');
        render json: {status: 'SUCCESS', messege:'Loaded Contacts', data:contacts }, status: :ok
      end

      def show
        contact = Contact.find(params[:id])
        render json: {status: 'SUCCESS', messege:'Loaded Contact', data:contact  }, status: :ok
      end

      def create
        contact = Contact.new(contact_params)

        if contact.save
          render json: {status: 'SUCCESS', messege:'Saved Contact', data:contact }, status: :ok
        else
          render json: {status: 'ERROR', messege:'Contact not save', data:contact.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        contact = Contact.find(params[:id])
        contact.destroy
        render json: {status: 'SUCCESS', messege:'Deleted Contact', data:contact }, status: :ok
      end

      def update
        contact = Contact.find(params[:id])
        if contact.update_attributes(contact_params)
          render json: {status: 'SUCCESS', messege:'Update Contact', data:contact }, status: :ok
        else
          render json: {status: 'ERROR', messege:'Contact not update', data:contact.errors }, status: :unprocessable_entity
        end
      end

      private

      def contact_params
        params.permit(:name,:surname,:phone,:mail,:address)
      end

    end
  end
end
