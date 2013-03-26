# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 10. März 2002 um 18:32
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_gt_immo2`
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

INSERT INTO Contactwish VALUES (4, 1, '1015513088.0000', 1, '1015513088.0000', 1, 'Bitte um Informationsmaterial');
INSERT INTO Contactwish VALUES (8, 1, '1015579712.0000', 1, '1015579712.0000', 1, 'Bitte Faxen Sie mir weitere Angebote');
INSERT INTO Contactwish VALUES (6, 1, '1015513088.0000', 1, '1015513088.0000', 1, 'Bitte um Rückruf');
INSERT INTO Contactwish VALUES (7, 1, '1015513088.0000', 1, '1015513088.0000', 1, 'Bitte um Terminabsprache');

