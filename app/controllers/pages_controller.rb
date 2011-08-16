class PagesController < ApplicationController

# the Pages controller is not following REST conventions,
# unlike other controllers we generate with rails.

  def home
		# does nothing!
		# PagesController inherits from ApplicationController,
		# This essentially means in Rails language:
			# - run code in "home" action
			# - render view corresponding to the action.
			# - since we have no code, Rails goes straight to view.
		@title = "Home"
  end

  def contact
		@title = "Contact"
  end

	def about
		@title = "About"
	end

end
