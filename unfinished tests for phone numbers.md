



Update the expectation in the controller spec to specify that you get redirected to the phone number’s person after destroy
Fix the controller to redirect to the phone number’s person after destroy
Fix the resulting spec failure in the controller spec


::::::::DONE::::::::
Write a test that looks for a delete link for each phone number (NOT SURE THE TEST WAS WRITTEN PROPERLY)
Modify the partial to have that link
Try it in your browser and destroy a phone number






TASK TO DO --- writing an integration test:

Write an integration test that destroys one of the phone numbers then ensure’s that it’s really gone from the database. You’ll need to use Capybara features like…

page.click_link to activate the destroy link
expect(current_path).to == to ensure you arrive at the show page
then check that the object is gone (one idea: verify that there is no delete link).