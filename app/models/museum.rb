class Museum < ApplicationRecord
  has_many :artworks

  def self.recently_created
    Museum.order(created_at: :desc)
  end


  def moma?
    if name.downcase == "the museum of modern art"
      return true
    elsif floors == 5
      return true
    elsif exhibits.downcase == "post-impressionism"
      return true
    elsif can_fit_more_art == true && occupancy == 3
      return true
    else 
      return false
    end
  end

end