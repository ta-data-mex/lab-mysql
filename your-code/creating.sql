create database cyber_threats;
use cyber_threats;

CREATE TABLE IF NOT EXISTS Malware (
    MalwareID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    MalwareType VARCHAR(15) NOT NULL,
    MalwareName VARCHAR(15) NOT NULL UNIQUE,
    Lang VARCHAR(15) NOT NULL,
    Peso INT,
    YearOfAppereance YEAR,
    IsActive BOOL NOT NULL,
    TargetOS VARCHAR(15)
);

CREATE TABLE IF NOT EXISTS ThreatActor (
    ActorID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ActorName VARCHAR(15) NOT NULL UNIQUE,
    CountryOfOrigin VARCHAR(15),
    YearOfAppereance YEAR,
    TargetSector VARCHAR(15),
    TargetRegions VARCHAR(15),
    MainMalwareWeapon VARCHAR(15),
    IsActive BOOL NOT NULL,
    ReportedMonetaryDamage INT
);

CREATE TABLE IF NOT EXISTS CyberAttacks (
    AttackID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    AttackedEntity VARCHAR(35) NOT NULL,
    Sector VARCHAR(15) NOT NULL,
    CountryOfAttackedEntity VARCHAR(15) NOT NULL,
    AttackDate YEAR NOT NULL,
    MonetaryDamages INT
);
    
