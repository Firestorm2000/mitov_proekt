class Song < ApplicationRecord
  belongs_to :user
  include Searchable
  search ->(q){where("name || ' ' || artist LIKE ?", "%#{q}%")}
end
