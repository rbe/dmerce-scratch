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
# Tabellenstruktur für Tabelle `Subnavigation`
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
# Daten für Tabelle `Subnavigation`
#

INSERT INTO Subnavigation VALUES (3, 1, '1015495488.0000', 1, '1015495488.0000', 1, 3, 0, 0, 'Miet mich !', '', '', '', '');
INSERT INTO Subnavigation VALUES (4, 1, '1015513408.0000', 1, '1015513408.0000', 1, 3, 0, 0, 'Nutzungsbedingungen', '', '', '', '');
INSERT INTO Subnavigation VALUES (6, 1, '1015699008.0000', 1, '1015699008.0000', 1, 3, 0, 0, 'Kontakt', '', '', '', '');

