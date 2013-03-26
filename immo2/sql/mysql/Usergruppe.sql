# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 10. März 2002 um 18:34
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_gt_immo2`
# --------------------------------------------------------

#
# Tabellenstruktur für Tabelle `Usergruppe`
#

CREATE TABLE Usergruppe (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  active int(1) NOT NULL default '0',
  Description varchar(255) NOT NULL default ''
) TYPE=MyISAM;

#
# Daten für Tabelle `Usergruppe`
#


