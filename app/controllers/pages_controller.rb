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
  end

  def contact
  end

end
