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
# Tabellenstruktur für Tabelle `Contactwish`
#

CREATE TABLE Contactwish (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  Name varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

#
# Daten für Tabelle `Contactwish`
#

INSERT INTO Contactwish VALUES (2, 1, '1016290816.0000', 1, '1016290816.0000', 1, 'Bitte rufen Sie mich an');
INSERT INTO Contactwish VALUES (3, 1, '1016290880.0000', 1, '1016290880.0000', 1, 'Bitte übersenden Sie mir Informationsmaterial');
INSERT INTO Contactwish VALUES (4, 1, '1016290880.0000', 1, '1016290880.0000', 1, 'Bitte um Terminabsprache');
INSERT INTO Contactwish VALUES (5, 1, '1016290880.0000', 1, '1016290880.0000', 1, 'Bitte beachten Sie die folgenden Angaben');

