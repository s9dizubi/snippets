<?php

/*
* @modified: 2025-04-08 15:06:51 
*/

// Fetch all question categories for a given course category
// Assuming we have $course Object available
$course_categoryid = $course->category;
$category_contextid = context_coursecat::instance($course_categoryid)->id;
$question_categories = $DB->get_records('question_categories', array('contextid' => $category_contextid));