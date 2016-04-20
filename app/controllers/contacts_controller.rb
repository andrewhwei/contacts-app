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
    @contact = Contact.new(first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], bio: params[:bio], address: params[:address])
    @contact.save
    latitude = @contact.get_coordinates(@contact.address)[0]
    longitude = @contact.get_coordinates(@contact.address)[1]
    @contact.update(latitude: latitude, longitude: longitude)
    redirect_to "/contacts/#{@contact.id}"
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(first_name: params[:first_name], middle_name: params[:middle_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number], bio: params[:bio], address: params[:address])
    latitude = @contact.get_coordinates(@contact.address)[0]
    longitude = @contact.get_coordinates(@contact.address)[1]
    @contact.update(latitude: latitude, longitude: longitude)
    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.delete
    redirect_to "/contacts"
  end

  def all_johns
    @johns = Contact.find_johns
  end
end
