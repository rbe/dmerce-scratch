# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 05. M�rz 2002 um 11:35
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_vers2`
# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `Layout`
#

CREATE TABLE Layout (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  ShortDescription varchar(255) NOT NULL default '',
  Description longtext NOT NULL,
  PRIMARY KEY  (ID),
  KEY ID_2 (ID)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `Layout`
#

INSERT INTO Layout VALUES (1, 1, '0.0000', 0, '0.0000', 1, 'Standard - Grau', 'Kopf-, Men� und Fu�zeile in einfachem Grau.');
INSERT INTO Layout VALUES (2, 1, '0.0000', 1, '0.0000', 1, 'Standard - T�rkis', 'Kopf-, Men� und Fu�zeile in einfachem T�rkis.');
INSERT INTO Layout VALUES (3, 1, '0.0000', 1, '0.0000', 1, 'Standard - Gelb', 'Kopf-, Men� und Fu�zeile in einfachem Gelb.');
INSERT INTO Layout VALUES (9999, 1, '0.0000', 1, '0.0000', 1, 'MySkin', 'Hier finden Sie Ihr aktuelles Layout.');
INSERT INTO Layout VALUES (20, 1, '0.0000', 0, '0.0000', 1, 'Water - Skin', 'Wasseroberfl�che als Hintergrund der Kopf- Men� und Fu�zeilen.');
INSERT INTO Layout VALUES (4, 1, '0.0000', 1, '0.0000', 1, 'Standard - Weiss', 'Das schlichte WEISS !');
INSERT INTO Layout VALUES (9, 1, '0.0000', 1, '0.0000', 1, 'Linien - Hellgrau', 'Feine Linienhintergr�nde mit unauff�lligen und dezenten Men�s.');
INSERT INTO Layout VALUES (30, 1, '0.0000', 1, '0.0000', 1, 'Turm - T�rkis', 'Kopfzeile mit Ornamenten. Das Layout ist in T�rkist�nen gehalten');
INSERT INTO Layout VALUES (5, 1, '0.0000', 1, '0.0000', 1, 'Standard - Schwarz', 'Einfach Schwarz');
INSERT INTO Layout VALUES (10, 1, '0.0000', 1, '0.0000', 1, 'Linien - Schwarz', 'Feine Linienhintergr�nde mit unauff�lligen und dezenten Men�s.');
INSERT INTO Layout VALUES (11, 1, '0.0000', 1, '0.0000', 1, 'Linien - Grau', 'Feine Linienhintergr�nde mit unauff�lligen und dezenten Men�s.');
INSERT INTO Layout VALUES (21, 1, '0.0000', 1, '0.0000', 1, 'Ocean - Blue', 'In Blaut�nen gehaltenens Layout');
INSERT INTO Layout VALUES (31, 1, '0.0000', 1, '0.0000', 1, 'Turm - Beige', 'Kopfzeile mit Ornamenten. Das Layout ist in Beiget�nen gehalten.');

