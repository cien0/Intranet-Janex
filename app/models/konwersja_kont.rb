class KonwersjaKont < ActiveRecord::Base
self.pluralize_table_names = false
searchkick match: :word_start, searchable: [:Rachunek, :Konto_ma_plus]
def search_data
    {
      
    }
end
end
