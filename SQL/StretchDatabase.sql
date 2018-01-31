
EXEC sp_configure 'remote data archive', '1'
GO
RECONFIGURE
GO


-- check the migration status
SELECT * FROM sys.dm_db_rda_migration_status

-- check space used
sp_spaceused tableName

sp_spaceused tableName, @mode='LOCAL_ONLY'

sp_spaceused tableName, @mode='REMOTE_ONLY'