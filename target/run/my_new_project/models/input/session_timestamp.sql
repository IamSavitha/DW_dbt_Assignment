
  
    

        create or replace transient table user_db_swan.analytics.session_timestamp
         as
        (WITH session_timestamp AS(
    SELECT
        sessionId,
        ts
    FROM USER_DB_SWAN.raw.session_timestamp
    )
    SELECT *
    FROM session_timestamp
    WHERE sessionId IS NOT NULL
        );
      
  