module ApplicationHelper

	# Return a title on a per-page basis
	def title
		base_title = "Ruby on Rails Tutorial > Sample App"
		if @title.nil?
			# implicit return in Ruby!
			base_title
		else
			# implicit return again.
			"#{base_title} | #{@title}"
		end
	end

end
