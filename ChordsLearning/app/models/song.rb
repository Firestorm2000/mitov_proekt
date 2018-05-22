class Song < ApplicationRecord
	#sbelongs_to :user
  include PgSearch
  #has_many :chords
  multisearchable :against => [:name , :artist]
  def self.rebuild_pg_search_documents
   find_each { |record| record.update_pg_search_document }
 end
end
