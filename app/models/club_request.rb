class ClubRequest < ApplicationRecord
  belongs_to :organization
  belongs_to :user
  has_many :activities, as: :target, dependent: :destroy

  enum status: {pending: 0, joined: 1, reject: 2}
  enum club_type: {sport: 1, game: 2, education: 3, music: 4,
    entertainment: 5, confidential: 6, junket: 7, other: 0}

  validates :name, presence: true, uniqueness: true,
    length: {maximum: Settings.club_request.max_name_length}
  validates :description, presence: true,
    length: {minimum: Settings.club_request.min_description_length,
      maximum: Settings.club_request.max_description_length}

  delegate :full_name, to: :user, allow_nil: :true

  scope :order_date_desc, -> {order created_at: :desc}

  delegate :full_name, to: :user, allow_nil: :true

  mount_uploader :logo, ImageUploader
end
