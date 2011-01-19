class Company < ActiveRecord::Base
	has_attached_file :logo, :styles => { :medium => "159x61>" }
end
