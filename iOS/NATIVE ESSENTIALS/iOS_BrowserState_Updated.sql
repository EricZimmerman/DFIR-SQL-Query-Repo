SELECT
DATETIME(LAST_VIEWED_TIME+978307200,'UNIXEPOCH','LOCALTIME') AS "LAST_VIEWED_TIME",
TABS.ID,
UUID,
TITLE,
URL,
USER_VISIBLE_URL,
ORDER_INDEX,
PRIVATE_BROWSING,
OPENED_FROM_LINK,
SESSION_DATA
FROM TABS
LEFT JOIN tab_sessions ON TABS.ID == tab_sessions.id
ORDER BY LAST_VIEWED_TIME
