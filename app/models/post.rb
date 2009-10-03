class Post < ActiveRecord::Base
  validates_presence_of :name, :title
  validates_length_of :title, :minimum => 5
  has_many :comments
  has_many :tags
  validates_format_of :title, :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed"
  validates_confirmation_of :email
  validates_presence_of :email_confirmation

  accepts_nested_attributes_for :tags, :allow_destroy => :true  ,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end