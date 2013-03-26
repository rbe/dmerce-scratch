# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 05. März 2002 um 11:34
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_vers2`
# --------------------------------------------------------

#
# Tabellenstruktur für Tabelle `Agent`
#

CREATE TABLE Agent (
  ID int(11) NOT NULL auto_increment,
  CreatedDateTime double(16,4) NOT NULL default '0.0000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  active int(1) NOT NULL default '0',
  LastName varchar(255) NOT NULL default '',
  FirstName varchar(255) NOT NULL default '',
  Email varchar(255) NOT NULL default '',
  Login varchar(255) NOT NULL default '',
  passwd varchar(10) NOT NULL default '',
  LoginDisabled int(1) NOT NULL default '0',
  UXSI varchar(15) NOT NULL default '0.2',
  GruppenID int(11) NOT NULL default '0',
  KEY ID (ID)
) TYPE=MyISAM;

#
# Daten für Tabelle `Agent`
#

INSERT INTO Agent VALUES (1, '0.0000', 1, '0.0000', 1, 1, 'Demo', 'Demo', '', 'demo', 'demo', 0, '0.2', 0);

