module Api
  module V1
    class ContactsController < ApplicationController
      def index
        contacts = Contact.order('created_at DESC');
        render json: {status: 'SUCCESS', messege:'Loaded Contacts', data:contacts }, status: :ok
      end
    end
  end
end
