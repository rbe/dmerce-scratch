# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 06. März 2002 um 10:03
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_shop2`
# --------------------------------------------------------

#
# Tabellenstruktur für Tabelle `ArticlePicture`
#

CREATE TABLE ArticlePicture (
  ID int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedBy int(11) NOT NULL default '0',
  active int(1) NOT NULL default '1',
  Name varchar(255) NOT NULL default '',
  Picture varchar(255) NOT NULL default '',
  ArticleID int(11) NOT NULL default '0',
  Description text NOT NULL
) TYPE=MyISAM;

