# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 06. März 2002 um 10:04
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_shop2`
# --------------------------------------------------------

#
# Tabellenstruktur für Tabelle `Operator`
#

CREATE TABLE Operator (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  Company varchar(255) NOT NULL default '',
  ShowCompany int(1) NOT NULL default '0',
  LastName varchar(255) NOT NULL default '',
  ShowLastName int(1) NOT NULL default '0',
  FirstName varchar(255) NOT NULL default '',
  ShowFirstName int(1) NOT NULL default '0',
  Street varchar(255) NOT NULL default '',
  ShowStreet int(1) NOT NULL default '0',
  ZipCode varchar(255) NOT NULL default '',
  ShowZipCode int(1) NOT NULL default '0',
  City varchar(255) NOT NULL default '',
  ShowCity int(1) NOT NULL default '0',
  Country varchar(255) NOT NULL default '',
  ShowCountry int(1) NOT NULL default '0',
  Phone varchar(255) NOT NULL default '',
  ShowPhone int(1) NOT NULL default '0',
  Fax varchar(255) NOT NULL default '',
  ShowFax int(1) NOT NULL default '0',
  Mobile varchar(255) NOT NULL default '',
  ShowMobile int(1) NOT NULL default '0',
  Email varchar(255) NOT NULL default '',
  ShowEmail int(1) NOT NULL default '0',
  Url varchar(255) NOT NULL default '',
  ShowUrl int(1) NOT NULL default '0',
  Textfield longtext NOT NULL,
  ShowTextfield int(1) NOT NULL default '0',
  Picture varchar(255) NOT NULL default '',
  Head varchar(255) NOT NULL default '',
  LayoutID int(11) NOT NULL default '0',
  Logo varchar(255) NOT NULL default '',
  Headtext varchar(255) NOT NULL default '',
  HeadFontface varchar(255) NOT NULL default '',
  HeadFontsize varchar(255) NOT NULL default '',
  UnderConstruction int(1) NOT NULL default '0',
  UndConstText text NOT NULL,
  UndConstPic varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID),
  KEY ID_2 (ID),
  FULLTEXT KEY Mobile (Mobile)
) TYPE=MyISAM;

#
# Daten für Tabelle `Operator`
#

INSERT INTO Operator VALUES (1, 1, '0.0000', 1, '1015256640.0000', 'Ihr Firmenname', 1, 'Ihr Name', 0, 'Ihr Vorname', 0, 'Ihre Strasse', 0, 'Ihre PLZ', 0, 'Ihre Stadt', 0, 'Ihr Land', 0, 'Ihre Telefonnummer', 1, 'Ihre Faxnummer', 1, 'Ihre Mobiltelefonnummer', 0, 'Ihre Emailadresse', 1, 'Ihre URL', 1, '', 0, '', 'Impressum', 11, '', 'Ihr Logo', 'Arial', '+4', 0, 'Leider wurden für diese Webseite noch keine Inhalte hinterlegt.<br><br>Schauen Sie doch einfach später wieder rein.', '');

