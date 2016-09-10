Given(/^User goes to pancard form page$/) do
	puts visit('http://www.applypanindia.in/form49a.html')
end

Then(/^User in form filling page$/) do
  checking_page
end


# Scenario: USER ENTERS APPLICANT NAME

Then(/^User selects title$/) do
  find(:xpath, '/html/body/form/div[2]/div/div/button').click
  find(:xpath, '/html/body/form/div[2]/div/div/ul/li[2]/a').click
end

Then(/^User enter special char and number as first name "([^"]*)"$/) do |arg1|

  find(:xpath, '/html/body/form/div[3]/span[1]/input').set(arg1)
end

Then(/^User should see the error message$/) do
	sleep 2
	expect(page).to have_content "Please enter the correct characters"
end

Then(/^User enter string as first name "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[3]/span[1]/input').set("")
 find(:xpath, '/html/body/form/div[3]/span[1]/input').set(arg1)
end

Then(/^User enter special char and number as middle name "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[3]/span[2]/input').set(arg1)
   sleep 2
end

Then(/^User enter string as middle name "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[3]/span[2]/input').set("")
  find(:xpath, '/html/body/form/div[3]/span[2]/input').set(arg1)
end

Then(/^User enter special char and number as last name "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[3]/span[3]/input').set(arg1)
   sleep 2
end

Then(/^User enter string as last name "([^"]*)"$/) do |arg1|
	find(:xpath, '/html/body/form/div[3]/span[3]/input').set("")
  find(:xpath, '/html/body/form/div[3]/span[3]/input').set(arg1)
end

Then(/^User select date "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[4]/input').set(arg1)
  find(:xpath, '/html/body/form/div[4]/input').click
end

# Scenario: USER ENTERS FATHER'S NAME


Then(/^User enter special char and number as father's first name "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[5]/span[1]/input').set(arg1)
  sleep 2
end

Then(/^User enter string as father's first name "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[5]/span[1]/input').set("")
  find(:xpath, '/html/body/form/div[5]/span[1]/input').set(arg1)
end

Then(/^User enter special char and number as father's middle name "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[5]/span[2]/input').set(arg1)
  sleep 2
end

Then(/^User enter string as father's middle name "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[5]/span[2]/input').set("")
  find(:xpath, '/html/body/form/div[5]/span[2]/input').set(arg1)
end

Then(/^User enter special char and number as father's last name "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[5]/span[3]/input').set(arg1)
  sleep 2
end

Then(/^User enter string as father's last name "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[5]/span[3]/input').set("")
  find(:xpath, '/html/body/form/div[5]/span[3]/input').set(arg1)
end


# Scenario: USER SELECT GENDER


Then(/^User select gender as male$/) do
  find(:xpath, '/html/body/form/div[6]/div[1]/label/input').click
end

Then(/^User selects i have any other name as No$/) do
  find(:xpath, '/html/body/form/div[7]/div[2]/label/input').click
end


# Scenario: USER HAVE ANOTHER NAME


Then(/^User selects i have any other name as Yes$/) do
  find(:xpath, '/html/body/form/div[7]/div[1]/label/input').click
end

Then(/^User enter special char and number as another first name "([^"]*)"$/) do |arg1|
  find(:xpath, '//*[@id="oname"]/span[1]/input').set(arg1)
  sleep 2
end

Then(/^User enter string as another first name "([^"]*)"$/) do |arg1|
  find(:xpath, '//*[@id="oname"]/span[1]/input').set("")
  find(:xpath, '//*[@id="oname"]/span[1]/input').set(arg1)
end

Then(/^User enter special char and number as another middle name "([^"]*)"$/) do |arg1|
  find(:xpath, '//*[@id="oname"]/span[2]/input').set(arg1)
  sleep 2
end

Then(/^User enter string as another middle name "([^"]*)"$/) do |arg1|
  find(:xpath, '//*[@id="oname"]/span[2]/input').set("")
  find(:xpath, '//*[@id="oname"]/span[2]/input').set(arg1)
end

Then(/^User enter special char and number as another last name "([^"]*)"$/) do |arg1|
  find(:xpath, '//*[@id="oname"]/span[3]/input').set(arg1)
  sleep 2
end

Then(/^User enter string as another last name "([^"]*)"$/) do |arg1|
  find(:xpath, '//*[@id="oname"]/span[3]/input').set("")
  find(:xpath, '//*[@id="oname"]/span[3]/input').set(arg1)
end

Then(/^User enter name want to printed as "([^"]*)"$/) do |arg1|
  find(:xpath, '/html/body/form/div[9]/input').set(arg1)
end


# Scenario: USER ENTER COMMUNICATION DETAILS RESIDENCE


Then(/^User selects i have Residence address$/) do
	find(:xpath, '//*[@id="rdbr"]').click
end


Then(/^User enter block special char and number as "([^"]*)"$/) do |arg1|
  	find(:xpath, '/html/body/form/div[11]/span[1]/input').set(arg1)
end


Then(/^User enter building name as "([^"]*)"$/) do |arg1|
  	find(:xpath, '/html/body/form/div[11]/span[2]/input').set(arg1)
end

Then(/^User enter Street name as "([^"]*)"$/) do |arg1|
  	find(:xpath, '/html/body/form/div[11]/span[3]/input').set(arg1)
end


Then(/^User enter area name as "([^"]*)"$/) do |arg1|
  	find(:xpath, '/html/body/form/div[11]/span[4]/input').set(arg1)
end


Then(/^User enter state name as Tamil Nadu$/) do 
	sleep 2
  	find(:xpath, '/html/body/form/div[11]/span[5]/select').find(:xpath, '/html/body/form/div[11]/span[5]/select/option[32]').select_option
end

Then(/^User enter city name as "([^"]*)"$/) do |arg1|
  	find(:xpath, '/html/body/form/div[11]/span[6]/input').set(arg1)
end

Then(/^User enter pincode name as "([^"]*)"$/) do |arg1|
  	find(:xpath, '/html/body/form/div[11]/span[7]/input').set(arg1)
end



# Scenario: USER ENTER COMMUNICATION DETAILS OFFICE


Then(/^User selects i have office address$/) do
	find(:xpath, '//*[@id="rdboffice"]').click
end

Then(/^User selects proof address as Employer Certificate carrying Office Address$/) do 
	find(:xpath, '//*[@id="poao"]').find(:xpath, '//*[@id="poao"]/option[4]').select_option
end


Then(/^User enter name of office as "([^"]*)"$/) do |arg1|
  	find(:xpath, '//*[@id="oflat"]').set(arg1)
end


Then(/^User enter office building name as "([^"]*)"$/) do |arg1|
  	find(:xpath, '//*[@id="oa"]/span[2]/input').set(arg1)
end

Then(/^User enter office Street name as "([^"]*)"$/) do |arg1|
  	find(:xpath, '//*[@id="oa"]/span[3]/input').set(arg1)
end


Then(/^User enter office area name as "([^"]*)"$/) do |arg1|
  	find(:xpath, '//*[@id="oa"]/span[4]/input').set(arg1)
end


Then(/^User enter office state name as Tamil Nadu$/) do
  find(:xpath, '//*[@id="oa"]/span[5]/select').find(:xpath, '//*[@id="oa"]/span[5]/select/option[32]').select_option
end

Then(/^User enter office city name as "([^"]*)"$/) do |arg1|
  	find(:xpath, '//*[@id="oa"]/span[6]/input').set(arg1)
end

Then(/^User enter office pincode name as "([^"]*)"$/) do |arg1|
  	find(:xpath, '//*[@id="oa"]/span[7]/input').set(arg1)
end


# Scenario: USER ENTER CONTACT DETAILS


Then(/^User enter area code as special character "([^"]*)"$/) do |arg1|
  	find(:xpath, '/html/body/form/div[13]/span[1]/input').set(arg1)
    sleep 2
end

Then(/^User should see the error message Please enter the correct value$/) do
    expect(page).to have_content "Please enter the correct value"
end

Then(/^User enter area code as character "([^"]*)"$/) do |arg1|
    find(:xpath, '/html/body/form/div[13]/span[1]/input').set("")
    find(:xpath, '/html/body/form/div[13]/span[1]/input').set(arg1)
    sleep 2
end


Then(/^User enter area code "([^"]*)"$/) do |arg1|
    find(:xpath, '/html/body/form/div[13]/span[1]/input').set("")
    find(:xpath, '/html/body/form/div[13]/span[1]/input').set(arg1)
end


Then(/^User enter mobile number as special character "([^"]*)"$/) do |arg1|
  	find(:xpath, '/html/body/form/div[13]/span[2]/input').set(arg1)
    sleep 2
end


Then(/^User enter mobile number as character "([^"]*)"$/) do |arg1|
    find(:xpath, '/html/body/form/div[13]/span[2]/input').set("")
    find(:xpath, '/html/body/form/div[13]/span[2]/input').set(arg1)
    sleep 2
end


Then(/^User enter mobile number as "([^"]*)"$/) do |arg1|
    find(:xpath, '/html/body/form/div[13]/span[2]/input').set("")
    find(:xpath, '/html/body/form/div[13]/span[2]/input').set(arg1)
end

Then(/^User enter email id as special character "([^"]*)"$/) do |arg1|
    find(:xpath, '/html/body/form/div[13]/span[3]/input').set(arg1)
    sleep 2
end


Then(/^User enter email id as character "([^"]*)"$/) do |arg1|
    find(:xpath, '/html/body/form/div[13]/span[3]/input').set("")
    find(:xpath, '/html/body/form/div[13]/span[3]/input').set(arg1)
    sleep 2
end

Then(/^User enter email id "([^"]*)"$/) do |arg1|
    find(:xpath, '/html/body/form/div[13]/span[3]/input').set("")
  	find(:xpath, '/html/body/form/div[13]/span[3]/input').set(arg1)
end

Then(/^User enter aadhar no as special character "([^"]*)"$/) do |arg1|
  	find(:xpath, '/html/body/form/div[13]/span[4]/input').set(arg1)
    sleep 2
end

Then(/^User enter aadhar no as character "([^"]*)"$/) do |arg1|
    find(:xpath, '/html/body/form/div[13]/span[4]/input').set("")
    find(:xpath, '/html/body/form/div[13]/span[4]/input').set(arg1)
    sleep 2
end


Then(/^User enter aadhar no "([^"]*)"$/) do |arg1|
    find(:xpath, '/html/body/form/div[13]/span[4]/input').set("")
    find(:xpath, '/html/body/form/div[13]/span[4]/input').set(arg1)
end


# Scenario: USER ENTER DOCUMENT DETAILS


Then(/^User selects proof of date of birth Passport$/) do
  	find(:xpath, '/html/body/form/div[14]/div/select').find(:xpath, '/html/body/form/div[14]/div/select/option[8]').select_option
end

Then(/^User selects proof of identity Passport$/) do 
  	find(:xpath, '/html/body/form/div[15]/div/select').find(:xpath, '/html/body/form/div[15]/div/select/option[13]').select_option
end


# Scenario: USER ENTER INCOME DETAILS


Then(/^User selects salary$/) do
	find(:xpath, '//*[@id="chksal"]').click
	sleep 3
	page.evaluate_script('window.confirm = function() { return true; }')
end

Then(/^User selects business or profession$/) do
	find(:xpath, '/html/body/form/div[17]/div/label[2]/input').click
end


Then(/^User selects income from house property$/) do
	find(:xpath, '/html/body/form/div[17]/div/label[3]/input').click
end

Then(/^User selects capital gains$/) do
	find(:xpath, '/html/body/form/div[17]/div/label[4]/input').click
end

Then(/^User selects income from other sources$/) do
	find(:xpath, '/html/body/form/div[17]/div/label[5]/input').click
end


Then(/^User selects business or profession as "([^"]*)"$/) do |arg1|
	sleep 2
  	find(:xpath, '/html/body/form/div[18]/div/span/select').find(:xpath, '/html/body/form/div[18]/div/span/select/option[3]').select_option
end


Then(/^User selects i agree$/) do
	find(:xpath, '/html/body/form/div[19]/div/label/input').click
end



def checking_page
	fill_text = find(:xpath, '/html/body/form/h2[1]/span')
	if fill_text.text != "Fill Your Personal Details"
		raise "page not found"
	else
		puts "user in form filling page"
		
	end
end