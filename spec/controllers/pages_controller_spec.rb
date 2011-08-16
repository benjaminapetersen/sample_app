require 'spec_helper'

# RSpec uses a language very similar to English
# for describing the tests
describe PagesController do



	# Render views, not just test actions
	render_views	



	# RSpec does not care what you put in the first line,
	# describe literally lets you describe... so "GET 'home'" is 
	# what we use to say "this is a get request for a home page."
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
			response.should be_success
		end

		it "should have the right title" do
			get 'home'
			# have_selector can be a string, or any substring in the given element
      response.should have_selector("title",
					 :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end



  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
		
		it "should have the right title" do
			get 'contact'
			response.should have_selector("title",
				:content => "Contact")
		end	
  end



	# the failing test we write
	describe "GET 'about'" do
		it "should be successful" do
			get 'about'
			response.should be_successful
		end
		
		it "should have the right title" do
			get 'about'
			response.should have_selector("title",
				:content => "About")
		end
	end
end
