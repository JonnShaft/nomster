FactoryGirl.define do

	factory :user do
		sequence :email do |n|
			"ajamal#{n}@gmail.com"
		end
		password "akjakjakj321321"
		password_confirmation "akjakjakj321321"
	end

	factory :place do
		name "Test Bar 1"
		description "Beer."
		address "248 Palm Trace Ave., Las Vegas, NV 89148"
		association :user
	end

	factory :comment do
		message "Test, test, test."
		rating "3_stars"
		association :user
		association :place
	end
end