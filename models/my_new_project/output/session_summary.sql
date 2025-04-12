-- models/output/session_summary.sql
WITH user_session_channel AS (
    SELECT 
        sessionId,
        userId,
        channel
    FROM {{ ref('user_session_channel') }}
), 
session_timestamp AS (
    SELECT 
        sessionId,
        ts
    FROM {{ ref('session_timestamp') }}
)
SELECT
     u.userId,
     u.sessionId, 
     u.channel, 
     st.ts
FROM user_session_channel u
JOIN session_timestamp st ON u.sessionId = st.sessionId
