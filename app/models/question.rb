class Question < ApplicationRecord
  belongs_to :manager_survey, optional: true
  has_many :options, dependent: :destroy

  accepts_nested_attributes_for :options, reject_if: :all_blank, allow_destroy: true
end
