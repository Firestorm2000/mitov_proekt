class Song < ApplicationRecord
  belongs_to :user
  include Searchable
  searchable_scope ->(q){where("name || ' ' || artist LIKE ?", "%#{q}%")}
end
