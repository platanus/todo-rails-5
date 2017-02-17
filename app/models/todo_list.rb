class TodoList < ApplicationRecord

  validates :title, :description,  presence: true
  has_attached_file :image, styles: { medium: "1200x500>", thumb: "300x120>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

# == Schema Information
#
# Table name: todo_lists
#
#  id                 :integer          not null, primary key
#  title              :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#
