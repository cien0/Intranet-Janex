class KonwersjaKont < ActiveRecord::Base
self.pluralize_table_names = false

def self.search(search)

if search

where('Rachunek LIKE ?', "%#{search}%")

else

all

end


end

end
