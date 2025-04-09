
-- Get all questions in a category
-- :catid - category id
-- Moodle 4.4.1 (Build: 20240610)
-- @modified 2025-03-26 11:32:57

SELECT q.id AS questionid, 
q.name, q.qtype, q.defaultmark, c.id AS categoryid, 
v.id AS versionid, v.version, v.status, v.questionbankentryid AS entryid FROM `mdl_question` q 
JOIN `mdl_question_versions` v ON q.id = v.questionid 
JOIN `mdl_question_bank_entries` e on e.id = v.questionbankentryid 
JOIN `mdl_question_categories` c ON c.id = e.questioncategoryid 
WHERE c.id = :catid


-- Warning: This will delete all questions in the category and cannot be undone.
-- Use with caution! Make sure to backup your database before running this query.
-- Delete all questions in a category
-- :catid - category id
-- Moodle 4.4.1 (Build: 20240610)
-- @modified 2025-04-01 16:51:22

DELETE q 
FROM `mdl_question` q
JOIN `mdl_question_versions` v ON q.id = v.questionid
JOIN `mdl_question_bank_entries` e ON e.id = v.questionbankentryid
JOIN `mdl_question_categories` c ON c.id = e.questioncategoryid
WHERE c.id = :catid

