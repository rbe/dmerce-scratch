# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 10. März 2002 um 17:03
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_gt_immo`
# --------------------------------------------------------

#
# Tabellenstruktur für Tabelle `Contact`
#

CREATE TABLE Contact (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  FirstName int(1) NOT NULL default '0',
  Street int(1) NOT NULL default '0',
  ZipCode int(1) NOT NULL default '0',
  Phone int(1) NOT NULL default '0',
  Fax int(1) NOT NULL default '0',
  Wish int(1) NOT NULL default '0',
  Offer int(1) NOT NULL default '0',
  Other int(1) NOT NULL default '0',
  Picture varchar(255) NOT NULL default '',
  Email varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

#
# Daten für Tabelle `Contact`
#

INSERT INTO Contact VALUES (1, 0, '0.0000', 1, '1015579776.0000', 1, 1, 1, 1, 1, 0, 1, 1, 1, '1ci_klein_w.gif', 'support@1ci.de');

