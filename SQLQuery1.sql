--DROP DATABASE HomeAffairs;

CREATE DATABASE HomeAffairs ON PRIMARY ( NAME = HomeAffairs_dat, FILENAME = 'C:\HomeAffairsdat.mdf', SIZE=10MB,MAXSIZE=50MB,FILEGROWTH=5%);
GO
