Given /^We are on snackmagic homepage$/ do
  @snackmagic = Form.new(@browser)
   @snackmagic.visit
end
Then("fill user details and login") do
  @snackmagic.login
  sleep 3
  @snackmagic.start_an_order
  sleep 2
  @snackmagic.create_order
  sleep 5
end
Then("submit") do 
  sleep 2

end