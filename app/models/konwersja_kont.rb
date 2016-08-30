class KonwersjaKont < ActiveRecord::Base
self.pluralize_table_names = false

def self.search(params)
if params[:search]
KonwersjaKont.where('Rachunek LIKE ?', "%#{params[:search]}%")
else
all
end
end

end
