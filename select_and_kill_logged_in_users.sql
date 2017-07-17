SELECT session_id
FROM sys.dm_exec_sessions
WHERE login_name = '<user>'

SELECT j.name
FROM msdb.dbo.sysjobs AS j
INNER JOIN sys.syslogins AS l ON j.owner_sid = l.sid
WHERE l.name = '<user>'

-- KILL 57

-- EXEC msdb.dbo.sp_delete_job
--    @job_name = N'<job>';