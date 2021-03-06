Feature: H-E-B Cart page feature

@Priority2 @Recipe @TC01_RECI_CU
Scenario: Recipe_Cold_User verify user can search a valid recipe in recipe search bar
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe	
	# 1. Navigation bar should be titled as "Recipes"
	# 2. Hamburger icon should appear in the left-hand corner of action bar
	# 3. Recipe box icon should appear in the right-hand corner of action bar
	# 4. Search bar should be displayed below action bar
	# 5. Search bar should be displayed with default text as "Search or Scan Products" 
	# 6. Content image should be displayed below search bar
	# 7. "Quick Recipe Finder" button should be displayed at the bottom of the page.
	
@Priority2 @Recipe @TC02_RECI_CU
Scenario: Recipe_Cold_User verify user can search a valid recipe in recipe search bar
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Recipe
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of recipes list page
	# 1. Recipes as the Navigation bar title
	# 2. Hamburger icon in the left hand corner of navigation bar
	# 3. Recipe box in the right hand corner of navigation bar		
	# 4. Below navigation bar display red area, with "<#> recipes for <searched term>"  
	#    displayed correctly in the left side of the red section 
	# 5. Refine button in the right area should be displayed	
	# 6. Displayed with search results as: <recipe image> and <recipe name> <ratings(if any)>

@Priority2 @Recipe @TC03_RECI_CU
Scenario: Recipe_Cold_User verify user can navigate to Search text field
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I click search term within search text field 	
	Then I should see Search screen
	# Includes verification of Search screen page
	# 1. Page should be displayed with Search text field and Cancel button
	# 2. Scan Product button should be displayed
	# 3. Keyboard at bottom of the screen should be displayed
	
@Priority2 @Recipe @TC04_RECI_CU
Scenario: Recipe_Cold_User verify user can navigate to Search text field
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I click search term within search text field 	
	Then I should see Search screen
	# Includes verification of Search Recipe screen
	When I click "X" icon in the search bar
	Then I should see Recipes page
	# Include verify the hamburger icon
	When I select hamburger icon
	Then I should Left-hand navigation menu slides
	# Include verification of labels in the navigation slides
	# 1. "Home"
	# 2. "Weekly Ad"
	# 3. "Coupons"
	# 4. "Products"
	# 5. "Shopping Lists"
	# 6. "Mobile Wallet"(if store has faeture)
	# 7. "Recipes"
	# 8. "Pharmacy"
	# 9. "Store Locator"
	# 10. Static Cold User Text
	# 11. Settings

@Priority1 @Recipe @TC05_RECI_CU
Scenario: Recipe_Cold_User verify user can select background image on recipe landing screen
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	And I verify Content image
	# Includes verifying Content image
	# 1. Content image should be displayed as configured (in BCC) on Recipes Landing page
	When I select background image on Landing page
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar
	
@Priority2 @Recipe @TC06_RECI_CU
Scenario: Recipe_Cold_User can navigate to Quick Recipe Finder
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page
	# Includes verification of Quick Recipe Finder page
	# 1. Screen should be displayed with Quick Finder and Advanced segment buttons below navigation bar
	# 2. Quick Finder should be selected as default (button should be displayed in red)
	# 3. Find button should appear in right-hand corner of navigation bar
	# 4. Find button should be displayed (displaying a toast in Android, as this is a default behaviour with android)	
	# 5. The search criteria should be displayed below navigation bar in three rows
	# a. Row 1 Label: "I want to make:"
	# b. Row 2 Label: "with:"
	# c. Row 3 Label: "in:"
	When I select device back button
	Then I should see previous page
	
@Priority2 @Recipe @TC07_RECI_CU
Scenario: Recipe_Cold_User can navigate to Advanced search
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I click Quick Recipe Finder button 
	Then I should see the Find Recipes page	
	When I click Advanced button
	Then I should see Find Recipes Advanced List Page
	# Includes verification of Advanced Find Recipes page
	# 1. Segment button should be displayed in selected state(button should be displayed in red)
	# 2. Hamburger icon should appear in left-hand corner of navigation bar
	# 3. Find button should appear in right-hand corner of navigation bar
	# 4. Find button should be displayed (displaying a toast in Android, as this is a default behaviour with android)
	# 5. Search criteria should have : <category header> and <search term> (row for each term within category)	
	When I select device back button
	Then I should see previous page
	
@Priority1 @Recipe @TC08_RECI_CU
Scenario: 011 Recipe_Cold_User can Scan Product in recipe search
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I type Product catlog or direct product search 
	Then I should see Search Results page	
	# Includes verification of title Recipe in the navigation bar
	
@Priority3 @Recipe @TC09_RECI_CU
Scenario: Recipe_Cold_User can find the ingredients in the recipe detail page
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verification of Image below navigation bar
	And I verify ingredients details
	# Include verification of ingredients details
	# 1. Label text "Ingredients" should be displayed below segmented tabs
	# 2. Recipe ingredients should be displayed preceeded with an empty checkbox field
	# 3. Blue check mark should appears upon selection.
	# 4. Select all button should be displayed below ingredients
	# 5. Add to List button should be displayed to the right	of Select all button
	# 6. Below Select All button, label Reviews should be displayed
	# 7. Reviews followed by the number of reviews(if any) should be displayed for selected recipe
	# 8. Each review should be displayed with <review title>,<rating>,<reviewer name>
	# <Reviewed on Date>,<review body text> and "Read more" enabled text	

@Priority3 @Recipe @TC10_RECI_CU
Scenario: Recipe_Cold_User can navigate to the instructions tab in the recipe detail page
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar	
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verification of Image below navigation bar
	When I click on Instructions button
	Then I should see Instructions details
	# Include verification of instructions details
	# 1. Instructions tab should be selected as (red background)
	# 2. Below segmented tabs, label text "Instructions" should be displayed
	# 3. Below instructions, the Reviews followed by (#) should be displayed
	# 4. Where # is the number of reviews of displayed recipe.(if no reviews, do not display)
	# 5. Each review should be displayed with <review title>,<rating>,<reviewer name>
	#    <Reviewed on Date>,<review body text> and "Read more" enabled text

@Priority3 @Recipe @TC11_RECI_CU
Scenario: Recipe_Cold_User can navigate to the nutrition view tab
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verification of Image below navigation bar
	When I click Nutrition Info button
	Then I should see nutritions informations
	# Include verification of nutrition tab
	# 1. Nutrition Info tab should be selected with (red background)
	# 2. Segmented tab should be displayed with label as Nutrition info
	# 3. Below nutrition info Reviews label followed by the number of reviews (if any) should be  displayed
	# 4. Each review should be displayed with <review title>,<rating>,<reviewer name>
	#    <Reviewed on Date>,<review body text> and "Read more" enabled text
	
@Priority1 @Recipe @TC12_RECI_CU
Scenario: Recipe_Cold_User No results error in advanced search
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	When I click Quick Recipe Finder button 
	Then I should see screen is displayed with Quick Finder and Advanced segment buttons
	When I click Advanced segment button
	Then I should see Advanced search options page	
	# Includes verification of Advanced button should be displayed in selected state in red
	When I select one advanced filter by selecting within filter row
	Then I should see selected filters are displayed as checked
	# Include validation before selection
	# 1. user should only be allowed to select a single filter within each category
	# 2. Categories are meal, ingredient, etc. 
	When I click Find button
	Then I should see pop up message
	# Include the pop up message should contain
	# 1. If no results are available, Search Results page should display pop up with message 
	# :"No results matched search terms. Please try again."
	 
@Priority2 @Recipe @TC13_RECI_CU
Scenario: Recipe_Cold_User can log in from recipe detail page
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	When I select within a recipe row
	Then I should see Recipe Details page
	# Include verifying Log in button is available
	# 1. "Log in" button should be displayed below recipe image
	When I click Log in button
	Then I should see the Login/Registration page
	
@Priority1 @Recipe @TC14_RECI_CU
Scenario: Recipe_Cold_User from recipe box create an account 
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	When I click recipe box icon
	Then I should see My Recipe Box page
	# Include Verification of title as My Recipe Box in the navigation bar
	When I click Create an account
	Then I should see the registration screen
	When I click device back button twice
	Then I should see pop-up cancel registration
	When I click Yes in pop-up
	Then I should see Previously viewed recipe box page
	# Include verifying Log in
	# 1. Log in button should be displayed below image
	When I click Log in button
	Then I should see Login pop up dialog
	# Include validation of button
	# 1. Login pop up dialog appears with cancel and Login button
	
@Priority3 @Recipe @TC15_RECI_CU
Scenario: Recipe_Cold_User can navigate to recipe box 
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page	
	When I click recipe box icon
	Then I should see My Recipe Box page
	# Include Verification of title as My Recipe Box in the navigation bar
	When I click device back button
	Then I should see the previously viewed screen
	
@Priority3 @Recipe @TC16_RECI_CU
Scenario: Recipe_Cold_User can find the review comments below ingredients in the recipe detail page
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	# Include verification of Title - Receipe
	When I type valid search term within search text field 
	And I select click search button in keyboard
	Then I validate all the properties in Recipes List page
	# Includes verification of title Recipe in the navigation bar
	When I select recipe image within the recipe row
	Then I should see recipe details page
	# Include verification of Image below navigation bar
	And I verify ingredients details
	# Include verification of ingredients tab as default
	When I click on review button
	Then I should see the reviews
	# Include verificaion of review information
	# 1. Reviews followed by the number of reviews should be displayed for selected recipe	
	# 2. Each review should be displayed with <review title>,<rating>,<reviewer name>
	# <Reviewed on Date>,<review body text> and "Read more" enabled text
	When I click device back button
	Then I should see search results page is displayed as previously viewed
	 
@Priority1 @Recipe @TC17_RECI_CU
Scenario: Recipe_Cold_User from My Recipe box page 
	Given I am a cold user
	# Include steps Open App,
	# 1. Click "Continue without registering" button
	# 2. Verifying the Cold User Home page
	When I click Recipes from aisle
	Then I should see Recipes page
	When I click recipe box icon
	Then I should see My Recipe Box page
	# Include Verification of My Recipe Box page
	# 1. Recipe Box page should be displayed
	# 1a. Telling them to Log in or Create an account
	# 2. Navigation bar should be titled as My Recipe Box
	# 3. Hamburger icon should appear in left-hand corner of navigation bar
	# 4. Below navigation bar, Image should be displayed in gray folder image
	# 5. Below gray image the label Save and organize your favorite recipes should be displayed
	# 6. Labeled text display a button with label name as Create an account
	# 7. Create an account button display a image having zigzag line at the bottom
	# 8. Page should contain Log In button
	