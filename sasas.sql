--Yelp Dataset Profiling and Understanding

--1. Profile the data by finding the total number of records for each of the tables below:

  --Sql Code :

            select 
                (select count (id) from business) as businessrec,
                (select count (business_id) from hours) as hoursrec,
                (select count (business_id) from category) as categoryrec,
                (select count (business_id) from attribute) as attributerec,
                (select count (id) from review) as reviewrec,
                (select count (business_id) from checkin) as checkinrec,
                (select count (id) from photo) as photorec,
                (select count (business_id) from tip) as tiprec,
                (select count (id) from user) as userrec,
                (select count (user_id) from friend) as friendrec,
                (select count (user_id) from elite_years) as elite_yearsrec

  
/* Output :
  +-------------+----------+-------------+--------------+-----------+------------+----------+--------+---------+-----------+----------------+
  | businessrec | hoursrec | categoryrec | attributerec | reviewrec | checkinrec | photorec | tiprec | userrec | friendrec | elite_yearsrec |
  +-------------+----------+-------------+--------------+-----------+------------+----------+--------+---------+-----------+----------------+
  |       10000 |    10000 |       10000 |        10000 |     10000 |      10000 |    10000 |  10000 |   10000 |     10000 |          10000 |
  +-------------+----------+-------------+--------------+-----------+------------+----------+--------+---------+-----------+----------------+   */


--2. Find the total distinct records by either the foreign key or primary key for each table. 

-- SQL Code:
      select 
          (select count (distinct (id)) from business) as business_dis_rec,
          (select count (distinct (business_id)) from hours) as hours_dis_rec,
          (select count (distinct (business_id)) from category) as category_dis_rec,
          (select count (distinct (business_id)) from attribute) as attribute_dis_rec,
          (select count (distinct (id)) from review) as review_dis_rec,
          (select count (distinct (business_id)) from checkin) as checkin_dis_rec,
          (select count (distinct (id)) from photo) as photo_dis_rec,
          (select count (distinct (business_id)) from tip) as tip_dis_rec,
          (select count (distinct (id)) from user) as user_dis_rec,
          (select count (distinct (user_id)) from friend) as friend_dis_rec,
          (select count (distinct (user_id)) from elite_years) as elite_years_dis_rec

/* Output:
+------------------+---------------+------------------+-------------------+----------------+-----------------+---------------+-------------+--------------+----------------+---------------------+
| business_dis_rec | hours_dis_rec | category_dis_rec | attribute_dis_rec | review_dis_rec | checkin_dis_rec | photo_dis_rec | tip_dis_rec | user_dis_rec | friend_dis_rec | elite_years_dis_rec |
+------------------+---------------+------------------+-------------------+----------------+-----------------+---------------+-------------+--------------+----------------+---------------------+
|            10000 |          1562 |             2643 |              1115 |          10000 |             493 |         10000 |        3979 |        10000 |             11 |                2780 |
+------------------+---------------+------------------+-------------------+----------------+-----------------+---------------+-------------+--------------+----------------+---------------------+ */


--3. Are there any columns with null values in the Users table? Indicate "yes," or "no."

--Answer: No,there arent
	
--SQL code:
        select count(*) as null_counter
        from user
        where id is null or
              name is null or
              review_count is null or
              yelping_since is null or
              useful is null or
              funny is null or
              cool is null or
              fans is null or
              average_stars is null or
              compliment_hot is null or
              compliment_more is null or
              compliment_profile is null or
              compliment_cute is null or
              compliment_list is null or 
              compliment_note is null or
              compliment_plain is null or 
              compliment_cool is null or
              compliment_funny is null or
              compliment_writer is null or
              compliment_photos is null

	/* Output:
	+--------------+
  | null_counter |
  +--------------+
  |            0 |
  +--------------+ */

	
4. For each table and column listed below, display the smallest (minimum), largest (maximum), and average (mean) value for the following fields:

	i. Table: Review, Column: Stars
	
		min:		max:		avg:
		
	
	ii. Table: Business, Column: Stars
	
		min:		max:		avg:
		
	
	iii. Table: Tip, Column: Likes
	
		min:		max:		avg:
		
	
	iv. Table: Checkin, Column: Count
	
		min:		max:		avg:
		
	
	v. Table: User, Column: Review_count
	
		min:		max:		avg:
		


5. List the cities with the most reviews in descending order:

	SQL code used to arrive at answer:
	
	
	Copy and Paste the Result Below:
	

	
6. Find the distribution of star ratings to the business in the following cities:

i. Avon

SQL code used to arrive at answer:


Copy and Paste the Resulting Table Below (2 columns â€“ star rating and count):


ii. Beachwood

SQL code used to arrive at answer:


Copy and Paste the Resulting Table Below (2 columns â€“ star rating and count):
		


7. Find the top 3 users based on their total number of reviews:
		
	SQL code used to arrive at answer:
	
		
	Copy and Paste the Result Below:
		


8. Does posing more reviews correlate with more fans?

	Please explain your findings and interpretation of the results:
	

	
9. Are there more reviews with the word "love" or with the word "hate" in them?

	Answer:

	
	SQL code used to arrive at answer:

	
	
10. Find the top 10 users with the most fans:

	SQL code used to arrive at answer:
	
	
	Copy and Paste the Result Below:

	
		

Part 2: Inferences and Analysis

1. Pick one city and category of your choice and group the businesses in that city or category by their overall star rating. Compare the businesses with 2-3 stars to the businesses with 4-5 stars and answer the following questions. Include your code.
	
i. Do the two groups you chose to analyze have a different distribution of hours?


ii. Do the two groups you chose to analyze have a different number of reviews?
         
         
iii. Are you able to infer anything from the location data provided between these two groups? Explain.

SQL code used for analysis:

		
		
2. Group business based on the ones that are open and the ones that are closed. What differences can you find between the ones that are still open and the ones that are closed? List at least two differences and the SQL code you used to arrive at your answer.
		
i. Difference 1:
         
         
ii. Difference 2:
         
         
         
SQL code used for analysis:

	
	
3. For this last part of your analysis, you are going to choose the type of analysis you want to conduct on the Yelp dataset and are going to prepare the data for analysis.

Ideas for analysis include: Parsing out keywords and business attributes for sentiment analysis, clustering businesses to find commonalities or anomalies between them, predicting the overall star rating for a business, predicting the number of fans a user will have, and so on. These are just a few examples to get you started, so feel free to be creative and come up with your own problem you want to solve. Provide answers, in-line, to all of the following:
	
i. Indicate the type of analysis you chose to do:
         
         
ii. Write 1-2 brief paragraphs on the type of data you will need for your analysis and why you chose that data:
                           
                  
iii. Output of your finished dataset:
         
         
iv. Provide the SQL code you used to create your final dataset:
