# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 06. März 2002 um 10:05
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_shop2`
# --------------------------------------------------------

#
# Tabellenstruktur für Tabelle `Textarticle`
#

CREATE TABLE Textarticle (
  ID int(11) NOT NULL auto_increment,
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedBy int(11) NOT NULL default '1',
  ChangedBy int(11) NOT NULL default '1',
  NavigationID int(11) NOT NULL default '0',
  SubnavID int(11) NOT NULL default '0',
  TextarticleGroup int(11) NOT NULL default '0',
  Head varchar(255) NOT NULL default '',
  Subhead varchar(255) NOT NULL default '',
  Excerpt text,
  Text longtext,
  active int(1) NOT NULL default '1',
  Date float(16,4) NOT NULL default '0.0000',
  Picture varchar(255) NOT NULL default '',
  GruppenID int(11) NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY active (active)
) TYPE=MyISAM;

#
# Daten für Tabelle `Textarticle`
#

INSERT INTO Textarticle VALUES (1, '1015235519.580000', '0.000000', 1, 1, 0, 0, 0, 'Willkommen beim VIP Testshop', 'VIP --> Besonderere Bereiche für spezielle Kunden', '', '<P>Bitte hier Ihren Begrüßungstext eingeben.</P>', 1, '0.0000', '', 0);
INSERT INTO Textarticle VALUES (2, '1015404991.950000', '1006342508.960000', 1, 1, 0, 0, 0, 'Geben Sie hier bitte Ihre AGB ein', '', NULL, '§ 1 Hier bitte Ihre AGB eingeben\r\n<P>&nbsp;</P>', 1, '0.0000', '', 0);

