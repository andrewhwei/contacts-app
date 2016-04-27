class Contact < ActiveRecord::Base
  belongs_to :user

  def friendly_updated_at
    updated_at.strftime("%b %e, %l:%M %p")
  end

  def full_name
    full_name = "#{first_name} #{middle_name} #{last_name}"
  end

  def add_japanese_prefix
    japanese_prefix_phone_number = "+81 #{phone_number}"
  end

  def self.find_johns
    Contact.where(first_name: "John")
  end

  def get_coordinates(address)
    Geocoder.coordinates(address)
  end
end
