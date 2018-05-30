class Artist < ApplicationRecord
  belongs_to :song
  include Searchable
  searchable_scope ->(q){where("name  LIKE ?", "%#{q}%")}
end
