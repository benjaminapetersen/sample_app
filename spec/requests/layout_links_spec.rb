require 'spec_helper'

describe "LayoutLinks" do
	
	# test for Home page title
	it "should have a Home page at '/'" do
		get '/'
		response.should have_selector('title', :content => "Home")
	end

	# test for Contact page title
	it "should have a Contact page at '/contact'" do
		get '/contact'
		response.should have_selector('title', :content => "Contact")
	end

	# test for About page title
	it "should have an About page at '/about'" do
		get '/about'
		response.should have_selector('title', :content => "About")
	end

	# test for Help page title
	it "should have a Help page at '/help'" do
		get '/help'
		response.should have_selector('title', :content=> "Help")
	end

	# test for Signup page
	# Users/new with a different route
	it "should have a signup page at '/signup'" do
		get '/signup'
		response.should have_selector('title', :content => "Sign up")
	end

end
