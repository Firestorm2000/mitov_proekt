class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :songs
  include Searchable
  searchable_scope ->(q){where("first_name || ' ' || last_name LIKE ?", "%#{q}%")}
end
