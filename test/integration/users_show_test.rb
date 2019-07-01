require 'test_helper'

class UsersShowTest < ActionDispatch::IntegrationTest
  
   	def setup
			@admin = users(:michael)
			@non_authenticated_user = users(:malory)
		end

		test "does not show non-authenticated users" do
			log_in_as(@admin)
			get user_path(@non_authenticated_user)
			assert_redirected_to root_url
		end
end
