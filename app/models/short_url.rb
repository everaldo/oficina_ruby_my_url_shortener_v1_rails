class ShortUrl < ApplicationRecord
  using ::CreateHashRefinement

  before_validation :create_hash

  validates :url, format: { with: /\Ahttp[s]?:\/\/.+/ }
  validates :url, :code, presence: true, uniqueness: true
  validates :code, length: { is: 6 }


  private

  def create_hash
    return true unless new_record?
    self.code = url.create_hash
  end
end
