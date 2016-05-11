# Classify

To access our tool visit: http://tranquil-springs-17384.herokuapp.com/

Classify aims to simplify enrollment decisions for high schoolers by providing them with more information
about the classes offered at their school. 

#####Testing: 
To see the results of our written tests, follow the following instructions:<br />
1.  Open up a terminal<br />
2. Clone our repo using **git clone https://github.com/ashleyHutton/eecs448-project3**<br />
3. navigate into the application folder titled "classify"<br />
4. run the command **rake test**

We used built in rails testing. Once running "rake test" a collection of '.', 'F', and 'E's is returned to the terminal. '.' represents a passed test, 'F' represents a failed test, 'E' represents an error in a test. So, the desired result is a line of '.'s.

Our test code is located in our app at test/models. Each file contains tests for the respective model. The names of the test methods represent exactly what the test is testing. For reference, these method signatures are listed below:
- test_should_not_save_course_with_no_name
- test_should_not_save_course_with_no_school_id
- test_should_not_save_if_duplicate_school_name
- test_should_not_save_if_no_address
- test_should_not_save_score_with_workload_rating_below_one
- test_should_not_save_score_with_workload_rating_above_five
- test_should_not_save_score_with_difficulty_rating_below_one
- test_should_not_save_score_with_difficulty_rating_above_five
- test_should_not_save_score_with_likeability_rating_below_one
- test_should_not_save_score_with_likeability_rating_above_five
- test_should_not_save_score_without_course_id
- test_should_not_save_score_without_creator_id

##### Documentation
We used rdoc for documentation. It can be accessed in our doc folder. To view it, open the **index.html** file in a browser.
The **index.html** page serves as a table of contents through which navigation for the rest of our app's documentation can be
accessed.
