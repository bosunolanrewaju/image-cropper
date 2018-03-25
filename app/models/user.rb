class User < ApplicationRecord
  has_many :images, inverse_of: :user, dependent: :destroy

  accepts_nested_attributes_for :images, reject_if: proc { |attributes| attributes[:avatar].blank? }, allow_destroy: true
end
