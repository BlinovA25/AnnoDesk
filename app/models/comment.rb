class Comment < ApplicationRecord
  #include Visible

  belongs_to :announcement
  #belongs_to :user
end
