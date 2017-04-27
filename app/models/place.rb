class Place < ApplicationRecord
  belongs_to :user

  def self.search(place, page)
  if place
    where('name LIKE ?', "%#{place}%").paginate(page: page, per_page: 5).order('id')
  else
    paginate(page: page, per_page: 5).order('id') 
  end
end
end
