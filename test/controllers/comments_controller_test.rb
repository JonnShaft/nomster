require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
   test "add comment" do
    user = FactoryGirl.create(:user)
	sign_in user

	place = FactoryGirl.create(:place)
	
	assert_difference 'Comment.count' do
			post :create, :place_id => place.id, :comment => {
				:rating => '3_stars',
				:message => 'test, test, test'
			}
	end

	assert_equal 1, place.comments.count
	assert_redirected_to place_path(place)
   end

end
