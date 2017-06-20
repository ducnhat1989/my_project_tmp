class ToDo < ApplicationRecord
  validates :title, presence: true, length: {maximum: 255}

  enum status: [:pending, :finish]

  before_create :force_pending, if: ->{status.nil?}

  private
  def force_pending
    self.status = :pending
  end
end
