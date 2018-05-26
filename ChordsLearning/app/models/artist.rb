class Artist < ApplicationRecord
  belongs_to :song
	include PgSearch
	multisearhable :against => :name
	def self.rebuild_pg_search_documents
		find_each {|record| record.update_pg_search_document}
end
end
