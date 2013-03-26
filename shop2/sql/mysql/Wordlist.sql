# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 06. März 2002 um 10:06
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_shop2`
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
  GruppenID int(11) NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY ID_2 (ID)
) TYPE=MyISAM;

#
# Daten für Tabelle `Wordlist`
#

INSERT INTO Wordlist VALUES (1, 1, '0.0000', 1, '1015235264.0000', 1, 'Informationen', '', '', '', '', 0);
INSERT INTO Wordlist VALUES (2, 1, '0.0000', 1, '1015254976.0000', 1, 'Produkte', '', '', '', '', 0);
INSERT INTO Wordlist VALUES (3, 1, '0.0000', 1, '1010757824.0000', 1, 'Suchen', '', '', '', '', 0);
INSERT INTO Wordlist VALUES (4, 1, '0.0000', 1, '1007050368.0000', 1, 'Kontakt', '', '', '', '', 0);
INSERT INTO Wordlist VALUES (5, 1, '0.0000', 1, '1010757888.0000', 1, 'Home', '', '', '', '', 0);
INSERT INTO Wordlist VALUES (50, 0, '0.0000', 3, '1010486464.0000', 0, '', '', '', '', '', 0);
INSERT INTO Wordlist VALUES (7, 0, '0.0000', 1, '1010426368.0000', 1, 'absenden !', '', '', '', '', 0);
INSERT INTO Wordlist VALUES (6, 0, '0.0000', 0, '0.0000', 1, 'Überschrift bitte ändern', '', '', '', '', 0);
INSERT INTO Wordlist VALUES (8, 0, '0.0000', 1, '1007372864.0000', 1, 'Impressum', '', '', '', '', 0);
INSERT INTO Wordlist VALUES (9, 0, '0.0000', 0, '0.0000', 1, 'Service', 'Service', 'Service', 'Service', 'Service', 0);

