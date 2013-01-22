# == Schema Information
#
# Table name: templates
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Template < ActiveRecord::Base
  # attr_accessible :title, :body
end
