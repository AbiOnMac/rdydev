class Student < ActiveRecord::Base
  belongs_to :title
  validates :first_name, :last_name, :email, :birth_date, :gender, presence: true
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, uniqueness: true

  def full_name
    [title.to_s.presence, first_name, middle_name, last_name].compact.join(" ")
  end
end
