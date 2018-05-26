class Chord < ApplicationRecord
include PgSearch
	multisearhable :against => :chord
	def self.rebuild_pg_search_documents
		find_each {|record| record.update_pg_search_document}
end
end
