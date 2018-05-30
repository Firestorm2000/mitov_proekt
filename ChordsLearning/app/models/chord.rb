class Chord < ApplicationRecord
	include Searchable
  search ->(q){where("chord LIKE ?", "%#{q}%")}
end
