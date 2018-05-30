class Chord < ApplicationRecord
	include Searchable
  searchable_scope ->(q){where("chord LIKE ?", "%#{q}%")}
end
