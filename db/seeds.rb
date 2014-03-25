# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Country.create([
{:name => 'Sri Lanka'},
])

Province.create([
{:name => 'Central'},
{:name => 'Eastern'},
{:name => 'North Central'},
{:name => 'Northern'},
{:name => 'North Western'},
{:name => 'Sabaragamuwa'},
{:name => 'Southern'},
{:name => 'Western'},
{:name => 'Uva'}
])


City.create([
{:name => 'Colombo', :province_id => 8},
{:name => 'Dehiwala', :province_id => 8},
{:name => 'Mount Lavinia', :province_id => 8},
{:name => 'Moratuwa', :province_id => 8},
{:name => 'Sri Jayawardenapura Kotte', :province_id => 8},
{:name => 'Negombo', :province_id => 8},
{:name => 'Kandy', :province_id => 1},
{:name => 'Kalmunai', :province_id => 2},
{:name => 'Vavuniya', :province_id => 4},
{:name => 'Galle', :province_id => 7},
{:name => 'Trincomalee', :province_id => 2},
{:name => 'Batticaloa', :province_id => 2},
{:name => 'Jaffna', :province_id => 4},
{:name => 'Katunayake', :province_id => 8},
{:name => 'Dambulla', :province_id => 1},
{:name => 'Kolonnawa', :province_id => 8},
{:name => 'Anuradhapura', :province_id => 3},
{:name => 'Ratnapura', :province_id => 6},
{:name => 'Badulla', :province_id => 9},
{:name => 'Matara', :province_id => 7},
{:name => 'Puttalam', :province_id => 5},
{:name => 'Chavakacheri', :province_id => 4},
{:name => 'Kattankudy', :province_id => 2},
{:name => 'Matale', :province_id => 1},
{:name => 'Kalutara', :province_id => 8},
{:name => 'Mannar', :province_id => 4},
{:name => 'Panadura', :province_id => 8},
{:name => 'Beruwala', :province_id => 8},
{:name => 'Ja-Ela', :province_id => 8},
{:name => 'Point Pedro', :province_id => 4},
{:name => 'Kelaniya', :province_id => 8},
{:name => 'Peliyagoda', :province_id => 8},
{:name => 'Kurunegala', :province_id => 5},
{:name => 'Wattala', :province_id => 8},
{:name => 'Gampola', :province_id => 1},
{:name => 'Nuwara Eliya', :province_id => 1},
{:name => 'Valvettithurai', :province_id => 4},
{:name => 'Chilaw', :province_id => 5},
{:name => 'Eravur', :province_id => 2},
{:name => 'Avissawella', :province_id => 8},
{:name => 'Weligama', :province_id => 7},
{:name => 'Ambalangoda', :province_id => 7},
{:name => 'Ampara', :province_id => 2},
{:name => 'Kegalle', :province_id => 6},
{:name => 'Hatton', :province_id => 1},
{:name => 'Nawalapitiya', :province_id => 1},
{:name => 'Balangoda', :province_id => 6},
{:name => 'Hambantota', :province_id => 7},
{:name => 'Tangalle', :province_id => 7},
{:name => 'Moneragala', :province_id => 9},
{:name => 'Gampaha', :province_id => 8},
{:name => 'Horana', :province_id => 8},
{:name => 'Wattegama', :province_id => 9},
{:name => 'Minuwangoda', :province_id => 8},
{:name => 'Bandarawela', :province_id => 9},
{:name => 'Kuliyapitiya', :province_id => 5},
{:name => 'Haputale', :province_id => 9},
{:name => 'Talawakele', :province_id => 1},
{:name => 'Harispattuwa', :province_id => 1},
{:name => 'Kadugannawa', :province_id => 1},
{:name => 'Embilipitiya', :province_id => 6},
{:name => 'Sigiriya', :province_id => 1}
])

Classification.create([
{:name => 'Accounting'},
{:name => 'Administration & Office Support'},
{:name => 'Banking & Financial Services'},
{:name => 'Call Centre Services'},
{:name => 'General & Executive Management'},
{:name => 'Construction'},
{:name => 'Education & Training'},
{:name => 'Engineering'},
{:name => 'Farming & Animal Husbandry'},
{:name => 'Governement & Defence'},
{:name => 'Healthcare & Medical'},
{:name => 'Hospitality & Tourism'},
{:name => 'Information Technology'},
{:name => 'International Jobs'},
{:name => 'Insurance & Legal'},
{:name => 'Manufacturing & Transport'},
{:name => 'Marketing'},
{:name => 'Media & Advertising'},
{:name => 'Real Estate & Property'},
{:name => 'Retail & Sales Services'},
{:name => 'Science & Technology'},
{:name => 'Trade Services'}
])


Worktype.create([
{:name => 'Full Time'},
{:name => 'Part Time'},
{:name => 'Casual'},
{:name => 'Trainee'},
{:name => 'Voluntary'},

])

Careerlevel.create([
{:name => 'Student'},
{:name => 'Graduate'},
{:name => 'Post Graduate'},
{:name => 'Doctorate'},
{:name => 'Manager'},
{:name => 'Executive'},
{:name => 'Senior Executive'},
{:name => 'Board Member'},

])

Experiencelevel.create([
{:name => '< 1 year'},
{:name => '1-3 years'},
{:name => '4-8 years'},
{:name => '9-15 years'},
{:name => '> 15 years'},

])

Salary.create([
{:salaryrange => '< 29K Rs/mth'},
{:salaryrange => '30K - 79K Rs/mth'},
{:salaryrange => '80K- 150K Rs/mth'},
{:salaryrange => '> 150K Rs/mth'},
{:salaryrange => 'Negotiable'},
{:salaryrange => 'Unpaid/Voluntary'},
{:salaryrange => 'Confidential'},

])


JobPostType.create([
{:jobtype => 'Hot Job Post'},
{:jobtype => 'Premium Job Post'},

])

PaymentMethod.create([
{:name => 'Paypal'},
{:name => 'Bank Transfer'},
{:name => 'Wire Transfer'},
{:name => 'Credit Card'},
{:name => 'Free Job Post'},
])



Job.create([{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 2},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 2},
	{:title => "Pharmacist", :tags => "Singh Khyber", :companyemail => "Huwa", :city_id => 4},
	{:title => "Worker", :tags => "Punjab", :companyemail => "Newlook", :city_id => 5},
	{:title => "Designer", :tags => "web photoshop", :companyemail => "Usama", :city_id => 3},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "adobe", :city_id => 4},
	{:title => "Styler", :tags => "colombo", :companyemail => "ntobe", :city_id => 5},
	{:title => "phonegap", :tags => "mardan", :companyemail => "adobe", :city_id => 6},
	{:title => "Dreamweaver designer", :tags => "karachi", :companyemail => "microsoft", :city_id => 7},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Achara", :city_id => 8},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Pakistan", :city_id => 9},
	{:title => "Engineer", :tags => "Singh", :companyemail => "Hyderabad", :city_id => 11},
	{:title => "Engineer", :tags => "Baluchistan", :companyemail => "Usama", :city_id => 9},
	{:title => "Engineer", :tags => "Peshawar", :companyemail => "Usama", :city_id => 14},
	{:title => "Engineer", :tags => "Sarhad", :companyemail => "Usama", :city_id => 10},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 9},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 3},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 4},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 4},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 7},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 7},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 8},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 10},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 11},
	{:title => "Engineer", :tags => "Singh Baluchistan", :companyemail => "Usama", :city_id => 17}
	])