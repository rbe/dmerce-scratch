# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 18. März 2002 um 10:07
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_gt_vers`
# --------------------------------------------------------

#
# Tabellenstruktur für Tabelle `Wordlist`
#

CREATE TABLE Wordlist (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  NameDE varchar(255) NOT NULL default '',
  Name_en varchar(255) NOT NULL default '',
  Name_fr varchar(255) NOT NULL default '',
  Name_es varchar(255) NOT NULL default '0',
  Name_it varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

#
# Daten für Tabelle `Wordlist`
#

INSERT INTO Wordlist VALUES (1, 1, '0.0000', 3, '1010149696.0000', 1, 'Informationen', '', '', '', '');
INSERT INTO Wordlist VALUES (2, 1, '0.0000', 1, '1014202432.0000', 1, 'Angebote', '', '', '', '');
INSERT INTO Wordlist VALUES (3, 1, '0.0000', 1, '1010757824.0000', 1, 'Suchen', '', '', '', '');
INSERT INTO Wordlist VALUES (4, 1, '0.0000', 1, '1007050368.0000', 1, 'Kontakt', '', '', '', '');
INSERT INTO Wordlist VALUES (5, 1, '0.0000', 1, '1010757888.0000', 1, 'Home', '', '', '', '');
INSERT INTO Wordlist VALUES (50, 0, '0.0000', 1, '1016290816.0000', 0, '1ci_klein_w.gif', '', '', '', '');
INSERT INTO Wordlist VALUES (7, 0, '0.0000', 1, '1014048704.0000', 1, 'abschicken', '', '', '', '');
INSERT INTO Wordlist VALUES (6, 0, '0.0000', 1, '1015427136.0000', 1, 'TEST', '', '', '', '');
INSERT INTO Wordlist VALUES (8, 0, '0.0000', 1, '1014202560.0000', 1, 'Impressum', '', '', '', '');
INSERT INTO Wordlist VALUES (9, 0, '0.0000', 0, '0.0000', 1, 'Service', 'Service', 'Service', 'Service', 'Service');

