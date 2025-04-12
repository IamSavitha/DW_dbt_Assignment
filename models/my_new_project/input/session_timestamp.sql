WITH session_timestamp AS(
    SELECT
        sessionId,
        ts
    FROM USER_DB_SWAN.raw.session_timestamp
    )
    SELECT *
    FROM session_timestamp
    WHERE sessionId IS NOT NULL