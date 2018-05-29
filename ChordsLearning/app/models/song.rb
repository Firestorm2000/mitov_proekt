class Song < ApplicationRecord
  belongs_to :user
  include Searchable
  searchable_scope ->(q){where("first_name || ' ' || last_name LIKE ?", "%#{q}%")}
end
