# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 18. März 2002 um 10:06
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_gt_vers`
# --------------------------------------------------------

#
# Tabellenstruktur für Tabelle `Navigation`
#

CREATE TABLE Navigation (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '1',
  WordlistID int(11) NOT NULL default '0',
  TextarticleID int(11) NOT NULL default '0',
  NameDE varchar(255) NOT NULL default '',
  NameEN varchar(255) NOT NULL default '',
  NameFR varchar(255) NOT NULL default '',
  NameES varchar(255) NOT NULL default '',
  NameIT varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

#
# Daten für Tabelle `Navigation`
#

INSERT INTO Navigation VALUES (3, 1, '1016287744.0000', 1, '1016287872.0000', 1, 0, 5, 'Willkommen', '', '', '', '');

