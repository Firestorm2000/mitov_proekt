class Artist < ApplicationRecord
  belongs_to :song
  include Searchable
  search ->(q){where("name  LIKE ?", "%#{q}%")}
end
