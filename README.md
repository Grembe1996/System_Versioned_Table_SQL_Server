# System_Versioned_Table_SQL_Server
Implementation of a System-Versioned Table on SQL Server

Zunächst erfolgt die Definition der Haupttabelle „Employee“, in der die aktuellen Daten gespeichert werden. Diese Tabelle nutzt das System-Versioning-Feature von SQL:2011, wodurch jede Änderung an einem Datensatz versioniert wird. Historische Versionen der Datensätze werden automatisch in der History-Tabelle „EmployeeHistory“ gespeichert, was durch den Zusatz „WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.EmployeeHistory))“ definiert wird. Die Spalten Sys_Start und Sys_End dienen dazu, den Zeitraum zu definieren, in dem ein Datensatz gültig war. Abschließend werden verschiedene Möglichkeiten des Datenzugriffs aufzeigt.

Die Strukturierung dieses Repositories ist dabei wie folgt:

1) CREATE_System_Versioned_Table beschreibt die Erstellung der Tabelle
2) INSERT_System_Versioned_Table beschreibt die Befüllung der Tabelle mit Daten
3) UPDATE_System_Versioned_Table beschreibt ausgeführte Update-Operationen auf die Tabelle und der damit verbundenen Historisierung in die "EmployeeHistory"-Tabelle
4) SELECT_System_Versioned_Table zeigt exemplarisch verschiedene Möglichkeiten für den Datenzugriff
    