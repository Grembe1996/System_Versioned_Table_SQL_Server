update
    [Employee]
set
    Gehalt = 55000
where
    PerNo = 1

update
    [Employee]
set
    Gehalt = 58000
where
    PerNo = 1
    
delete from
    [Employee]
where
    PerNo = 2