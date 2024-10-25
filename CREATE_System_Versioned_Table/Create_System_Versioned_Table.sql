CREATE TABLE dbo.Employee (
  [PerNo] int NOT NULL PRIMARY KEY CLUSTERED,
  [Vorname] nvarchar(50) NOT NULL,
  [Nachname] nvarchar(50) NOT NULL,
  [Position] varchar(40) NOT NULL,
  [Abteilung] varchar(40) NOT NULL,
  [Gehalt] decimal (10, 2) NOT NULL,
  [Sys_Start] datetime2 GENERATED ALWAYS AS ROW START,
  [Sys_End] datetime2 GENERATED ALWAYS AS ROW
END,
PERIOD FOR SYSTEM_TIME (Sys_Start, Sys_End)
) WITH (
  SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.EmployeeHistory)
);

select *
from [dbo].[Employee]

select *
from [dbo].[EmployeeHistory]
