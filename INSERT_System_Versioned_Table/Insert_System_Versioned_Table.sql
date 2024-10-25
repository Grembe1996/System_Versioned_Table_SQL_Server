insert into
    Employee (
        [PerNo],
        [Vorname],
        [Nachname],
        [Position],
        [Abteilung],
        [Gehalt]
    )
    
select
    1,
    'Max',
    'Mustermann',
    'Software Engineer',
    'IT',
    50000
go

insert into
    Employee (
        [PerNo],
        [Vorname],
        [Nachname],
        [Position],
        [Abteilung],
        [Gehalt]
    )

select
    2,
    'Markus',
    'Mueller',
    'Data Scientist',
    'Analytics',
    52000
go

insert into
    Employee (
        [PerNo],
        [Vorname],
        [Nachname],
        [Position],
        [Abteilung],
        [Gehalt]
    )
select
    3,
    'Sabine',
    'Klein',
    'UX Desginerin',
    'Design',
    48000