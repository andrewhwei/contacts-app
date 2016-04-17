class ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end

  def show
    @contact = Contact.find_by(id: params[:id])
  end

  def new
    
  end

  def create
    @contact = Contact.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])
    @contact.save
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.delete
  end
end
