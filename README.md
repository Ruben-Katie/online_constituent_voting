#FIRST STEP

Build the ERD Diagram

#SECOND STEP

Make it so that the staff person can:

* create bills
* mark past bills with voting results of the congressperson

Any website visitor can:

* see the voting results of the congressperson by each bill

--some of our tests ended up happening with Scaffold magic, so we wrote two to test our methods for converting the booleans in Bills

--got things pushed up to Heroku

#THIRD STEP

Any website visitor can vote on a bill.  All votes are displayed underneath each bill.

--we cannot, for the life of us, figure out how to test the hidden field params when creating a new vote.  The controller test you suggested has been scaffolded for us!  So, moving on.

--we were going for #shipit here, but in trying to get our back buttons working, we spent over an hour in a very odd place where it would try to pass in the current vote's id for the bill's id.  After a lot of despair, we fixed it somehow...still not feeling too certain about it.

--Made it so that the Congressperson's vote doesn't show if the vote is upcoming.  Made the "New (constituent's opinion) vote" button disappear from a bill's show page if the Congressperson's vote has passed.


#AND THEN

--we had some weird bugs yesterday, and by the time we sorted those/made what seemed like several small cosmetic adjustments, we finally (perhaps after too long a time)  ran our tests. 5 were broken.  The odd thing was, they were the little scaffoldy tests for votes, which had created themselves, identical copies of the ones which worked fine for the bills.  We had a suspicion that the tests were expecting the typical scaffold format, but something about the way that we structured new votes to come from their own bill pages got the tests confused.  Mae worked with us FOREVER today, and it came down to the back buttons on the pages that went back to the bill pages.  The difference between @vote.bill.id and @vote.bill_id was the source of all our misery.  It took a lot of digging, and we learned how fragile and picky tests and fixtures can be.

--then, the test that we knew we broke was the good old yes_no method test.  When we originally wrote it, yes and no were the only options.  But then, we decided to have a 3rd case in which that field is blank if the status of the vote is still upcoming.  It worked well, and we thought that was cleaner code than if we left it as it was, and put another method on top of that to hide it when needed.  So, we ended up just changing the expected test results to include the blank space as expected.  But, we were still uncertain in general about: if you write a simple little test, and then you make a method more complicated, what is the best way to go in and rewrite that test so that it is still meaningful?  

#SO NOW

--in the hour left of RubenKatie, we are going to tackle an Integration Test!

A person creates a bill.  Then, several people vote on it, and their collective opinion is displayed on the bill's page.  Finally, the election is passed, and the bill is marked with the congressperson's vote.

-- Well, that was our vision.  But we are past the 10 hour mark, and we really struggled with that silly little integration test.  We ran into tons of problems trying to recreate a bill being saved.  First, we tried to just make it with a variable, like bill = Bill.create, assert bill.save.  That worked, but then we weren't able to get its id out for the assert_redirected_to bill_path(bill.id)  Then, we tried to copy the exact same way that the controller test for creating a bill did it.  We kept getting a "Bad URI" error.  In the bowels of the internet, we discovered that integration tests can't understand that kind of route syntax.  Gee whiz, great!  Thanks, integration tests.  But nowhere could we find the right kind of syntax for a specific thing....root_path works, but a path with a specific param, forget it.  We tried "/bills/create"  and whatnot, and we concluded, as time over 10 hours ticked swiftly by, that we give up for now, and we really hope integration tests will be discussed more in class.  Pushing up to Heroku, and out!
