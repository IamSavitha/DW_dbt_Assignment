WITH user_session_channel AS (
    SELECT
        userId,
        sessionId,
        channel
    FROM {{ source('raw', 'user_session_channel') }}
)
SELECT * FROM user_session_channel
WHERE sessionId IS NOT NULL

