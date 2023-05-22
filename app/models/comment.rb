class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype

  validatables :text, presence:true
end
