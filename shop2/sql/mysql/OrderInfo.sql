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
# Tabellenstruktur für Tabelle `OrderInfo`
#

CREATE TABLE OrderInfo (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,6) NOT NULL default '0.000000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,6) NOT NULL default '0.000000',
  active int(1) NOT NULL default '0',
  FirstName varchar(255) NOT NULL default '',
  LastName varchar(255) NOT NULL default '',
  Street varchar(100) NOT NULL default '',
  ZipCode varchar(10) NOT NULL default '',
  City varchar(255) NOT NULL default '',
  Phone varchar(255) NOT NULL default '',
  Telefax varchar(255) NOT NULL default '',
  Mobile varchar(255) NOT NULL default '',
  Email varchar(255) NOT NULL default '',
  SessionId varchar(255) NOT NULL default '',
  BasketSum float(16,2) NOT NULL default '0.00',
  Comment text NOT NULL,
  URL varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

