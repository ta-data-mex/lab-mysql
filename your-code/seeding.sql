insert into Malware (MalwareID, MalwareType, MalwareName, Lang, Peso, YearOfAppereance, TargetOS, IsActive) 
values (default,'Ransomware', 'WannaCry', 'C', 5, '2017', "Windows", True);

insert into Malware (MalwareID, MalwareType, MalwareName, Lang, Peso, YearOfAppereance, TargetOS, IsActive) 
values (default,'CryptoJacker', 'Dridex', 'Java', 7, '2018', "Linux", True);
    
insert into Malware (MalwareID, MalwareType, MalwareName, Lang, Peso, YearOfAppereance, TargetOS, IsActive) 
values (default,'Trojan', 'Cerberus', 'Delphi', 3, '2016', "Windows", True);

insert into ThreatActor (ActorID, ActorName, CountryOfOrigin, YearOfAppereance, TargetSector, TargetRegions, 
MainMalwareWeapon, IsActive, ReportedMonetaryDamage)
values (default, 'Lazarus', 'North Korea', '2017', 'Financial', 'USA', 'WannaCry', True, null);

insert into ThreatActor (ActorID, ActorName, CountryOfOrigin, YearOfAppereance, TargetSector, TargetRegions, 
MainMalwareWeapon, IsActive, ReportedMonetaryDamage)
values (default, 'APT33', 'Iran', '2016', 'Financial', 'USA', 'Dridex', True, 100000000);

insert into ThreatActor (ActorID, ActorName, CountryOfOrigin, YearOfAppereance, TargetSector, TargetRegions, 
MainMalwareWeapon, IsActive, ReportedMonetaryDamage)
values (default, 'FancyBear', 'Russia', '2015', 'Financial', 'Europe', 'Cerberus', True, 5250000);

insert into CyberAttacks(AttackID, AttackedEntity, Sector, CountryOfAttackedEntity, AttackDate, MonetaryDamages)
values (default, 'Bank of America', 'Financial', 'USA', '2017', null); 

insert into CyberAttacks(AttackID, AttackedEntity, Sector, CountryOfAttackedEntity, AttackDate, MonetaryDamages)
values (default, 'Central Bank of Ukraine', 'Financial', 'Ukraine', '2019', 5250000);

insert into CyberAttacks(AttackID, AttackedEntity, Sector, CountryOfAttackedEntity, AttackDate, MonetaryDamages)
values (default, 'JP Morgan', 'Financial', 'USA', '2018', null);

show tables;