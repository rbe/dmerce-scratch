# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 10. M�rz 2002 um 17:00
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_gt_immo`
# --------------------------------------------------------

#
# Tabellenstruktur f�r Tabelle `Agent`
#

CREATE TABLE Agent (
  ID int(11) NOT NULL default '0',
  CreateDateTime double(16,4) NOT NULL default '0.0000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,4) default NULL,
  ChangedBy int(11) NOT NULL default '0',
  active int(1) NOT NULL default '1',
  LastName varchar(255) NOT NULL default '',
  FirstName varchar(255) NOT NULL default '',
  Email varchar(255) NOT NULL default '',
  Login varchar(255) NOT NULL default '',
  passwd varchar(10) NOT NULL default '',
  LoginDisabled int(1) NOT NULL default '0',
  VALIDUNTIL double(16,6) NOT NULL default '0.000000',
  KEY ID (ID)
) TYPE=MyISAM;

#
# Daten f�r Tabelle `Agent`
#

INSERT INTO Agent VALUES (1, '0.0000', 0, NULL, 0, 1, '', '', '', 'demo', 'demo', 0, '0.000000');

