class Artist < ApplicationRecord
  belongs_to :song
  include Searchable
  searchable_scope ->(q){where("first_name || ' ' || last_name LIKE ?", "%#{q}%")}
end
