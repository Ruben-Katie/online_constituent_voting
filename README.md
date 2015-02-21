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
