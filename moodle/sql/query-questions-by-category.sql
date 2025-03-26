
-- Get all questions in a category
-- :categoryid - category id
-- Moodle 4.4.1 (Build: 20240610)
-- @modified 2025-03-26 11:32:57

SELECT q.id AS questionid, q.name, q.qtype, q.defaultmark, c.id AS categoryid, v.id AS versionid, v.version, v.status, v.questionbankentryid AS entryid FROM `mdl_question` q JOIN `mdl_question_versions` v ON q.id = v.questionid JOIN `mdl_question_bank_entries` e on e.id = v.questionbankentryid JOIN `mdl_question_categories` c ON c.id = e.questioncategoryid WHERE c.id = :catetoryid