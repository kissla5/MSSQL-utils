-- Rename db files

ALTER DATABASE <db> SET OFFLINE
GO

ALTER DATABASE <db> MODIFY FILE (NAME =<db>, FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\<db>_old.mdf')
GO

ALTER DATABASE  <db> MODIFY FILE (NAME = <db>_log, FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\<db>_old_log.ldf')
GO

ALTER DATABASE <db> SET ONLINE
GO