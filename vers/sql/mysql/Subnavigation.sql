# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 18. M�rz 2002 um 10:07
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_gt_vers`
# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `Subnavigation`
#

CREATE TABLE Subnavigation (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  NavigationID int(11) NOT NULL default '0',
  TextarticleID int(11) NOT NULL default '0',
  RelatedTextarticleID int(11) NOT NULL default '0',
  NameDE varchar(255) NOT NULL default '',
  Name_en varchar(255) NOT NULL default '',
  Name_fr varchar(255) NOT NULL default '',
  Name_es varchar(255) NOT NULL default '',
  Name_it varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `Subnavigation`
#

INSERT INTO Subnavigation VALUES (2, 1, '1016287744.0000', 1, '1016287744.0000', 1, 3, 0, 0, 'Miet mich !', '', '', '', '');
INSERT INTO Subnavigation VALUES (3, 1, '1016287936.0000', 1, '1016287936.0000', 1, 3, 0, 0, 'Nutzungsbedingungen', '', '', '', '');
INSERT INTO Subnavigation VALUES (4, 1, '1016287936.0000', 1, '1016287936.0000', 1, 3, 0, 0, 'Preise', '', '', '', '');

