class Song < ApplicationRecord
  belongs_to :user
	include PgSearch
	multisearhable :against => [:name,:artist]
	def self.rebuild_pg_search_documents
		find_each {|record| record.update_pg_search_document}
end
end
