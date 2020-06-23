-- Begin Demographic Criteria
SELECT @indexId as index_id, e.person_id, e.event_id
FROM @eventTable e
JOIN global_temp.person P ON P.person_id = e.person_id
@whereClause
GROUP BY e.person_id, e.event_id
-- End Demographic Criteria
