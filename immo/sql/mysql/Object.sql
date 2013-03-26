# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 10. März 2002 um 17:04
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_gt_immo`
# --------------------------------------------------------

#
# Tabellenstruktur für Tabelle `Object`
#

CREATE TABLE Object (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime double(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '1',
  HeadNavID int(11) NOT NULL default '0',
  SubNavID int(11) NOT NULL default '0',
  OfferNo varchar(255) NOT NULL default '0',
  ForPrivate int(1) NOT NULL default '0',
  ForRent int(1) NOT NULL default '0',
  Name varchar(255) NOT NULL default '',
  Street varchar(255) NOT NULL default '',
  ZipCode varchar(10) NOT NULL default '',
  City varchar(255) NOT NULL default '',
  Country varchar(255) NOT NULL default '',
  ShortDescription varchar(255) NOT NULL default '',
  DetailDescription text NOT NULL,
  Rent1 float(10,2) NOT NULL default '0.00',
  Rent2 float(10,2) NOT NULL default '0.00',
  ExtraCharges float(10,2) NOT NULL default '0.00',
  Brokerage varchar(255) NOT NULL default '',
  Courtage varchar(255) NOT NULL default '',
  LivingSpace float(10,2) NOT NULL default '0.00',
  CommercialSpace float(10,2) NOT NULL default '0.00',
  FloorSpace float(10,2) NOT NULL default '0.00',
  RentSpace float(10,2) NOT NULL default '0.00',
  RealtySpace float(10,2) NOT NULL default '0.00',
  TotalSpace float(10,2) NOT NULL default '0.00',
  Rooms int(11) NOT NULL default '0',
  Level varchar(255) NOT NULL default '',
  LevelAlltogether int(11) NOT NULL default '0',
  Elevator int(1) NOT NULL default '0',
  Garden int(1) NOT NULL default '0',
  GardenUse int(1) NOT NULL default '0',
  BalconyTerrace int(1) NOT NULL default '0',
  Basement int(1) NOT NULL default '0',
  BasementDescription varchar(255) NOT NULL default '',
  Heating varchar(255) NOT NULL default '',
  GarageParking int(1) NOT NULL default '0',
  ParkingLots int(11) NOT NULL default '0',
  ParkingRent float(10,2) NOT NULL default '0.00',
  ParkingPrice float(10,2) NOT NULL default '0.00',
  Extras varchar(255) NOT NULL default '',
  Pets int(1) NOT NULL default '0',
  ConstructionYear int(4) NOT NULL default '0',
  WBSNeeded int(1) NOT NULL default '0',
  Visit varchar(255) NOT NULL default '',
  RentFrom varchar(255) NOT NULL default '',
  Caution varchar(255) NOT NULL default '',
  Configuration varchar(255) NOT NULL default '',
  Location varchar(255) NOT NULL default '',
  Price float(10,2) NOT NULL default '0.00',
  BuildingType varchar(255) NOT NULL default '',
  ObjectStatus varchar(255) NOT NULL default '',
  RentReturns float(10,2) NOT NULL default '0.00',
  WalkBusMin int(11) NOT NULL default '0',
  TrainMin int(11) NOT NULL default '0',
  AutobahnMin int(11) NOT NULL default '0',
  Misc text NOT NULL,
  RefNo varchar(255) NOT NULL default '',
  Phone varchar(255) NOT NULL default '',
  ContactPerson varchar(255) NOT NULL default '',
  Picture varchar(255) NOT NULL default '0',
  Highlight int(11) NOT NULL default '0',
  Yield varchar(255) NOT NULL default '',
  ReserveFunds float(10,2) NOT NULL default '0.00',
  Caretaker int(1) NOT NULL default '0',
  PropertyManagement varchar(255) NOT NULL default '',
  FittedKitchen int(1) NOT NULL default '0',
  Floor varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

#
# Daten für Tabelle `Object`
#

INSERT INTO Object VALUES (2, 1, '1015502573.6800', 0, '1015773617.8600', 1, 0, 2, '4578-568', 1, 1, 'Aaseestadt-Garten', 'Aaseeblick 24', '48153', 'Senden', '', 'Loggia, Bad neu, Laminatboden, Einbauküche, Keller', 'Loggia mit Markise, alle Räume mit Kabelfernsehen und Telefonanschluß, neues Bad mit Duschwanne und Fenster, Wohn- und Schlafzimmer helles Laminat, Flur und Küche terracotta Fliesen, neue Einbauküche mit allen Geräten, gr. Keller und Fahrradkeller', '630.00', '0.00', '120.00', '2.50', '', '85.00', '0.00', '0.00', '0.00', '0.00', '0.00', 3, 1, 2, 2, 2, 1, 1, 1, '', 'Gasetagenheizung', 1, 0, '35.00', '0.00', '', 2, 0, 2, 'nach Vereinbarung', 'sofort', '3 Mieten', '', 'MS-Süd, 3 Gehminuten zum Aasee, 5 Gehminuten zur Innenstadt, Busverbindung vor der Tür', '0.00', 'Mehrfamilienhaus', '', '0.00', 1, 10, 5, '', '48153-AA1502', '0123/1234567', 'Herr Muster', 'house08.jpg', 2, '', '0.00', 2, '', 3, '');
INSERT INTO Object VALUES (3, 1, '1015504081.6000', 1, '1015774624.8300', 1, 0, 3, '1234567', 1, 1, 'MS Südviertel 2 ZKDBB', 'Musterstr. 109', '48155', 'Münster', '', 'Geräumige Stadtwohnung mit Einbauküche, Diele und Bad', 'Heller Empfangsbereich mit Garderobe, Glastüren und Parkettboden. Sehr gepflegtes Haus mit Gartenbenutzung.<br>', '450.00', '0.00', '150.00', '0.00', '', '88.00', '0.00', '0.00', '0.00', '0.00', '0.00', 2, 2, 4, 1, 0, 1, 1, 1, '', 'Gasetagenheizung', 1, 0, '25.00', '0.00', '', 1, 0, 0, 'jederzeit', 'sofort', '0', '', 'Stadtmitte - Südviertel<br>Zentrale Lage mit Blick auf den Stadtpark', '0.00', 'Mehrfamilienhaus', '', '0.00', 5, 15, 15, '', '15877', '0123/78945', 'Her Muster', 'house14.jpg', 1, '', '0.00', 2, '', 0, '');

