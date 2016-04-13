class PagesController < ApplicationController

  def contacts
    @contact = []
    @contact = Contact.all
  end

end
