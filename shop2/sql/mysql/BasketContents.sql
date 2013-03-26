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
# Tabellenstruktur für Tabelle `BasketContents`
#

CREATE TABLE BasketContents (
  ID int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedBy int(11) NOT NULL default '0',
  active int(1) NOT NULL default '0',
  SessionId varchar(200) NOT NULL default '',
  ArtID int(11) NOT NULL default '0',
  Qty float(10,2) NOT NULL default '0.00',
  PriceNet float(10,2) NOT NULL default '0.00',
  TaxRate float(10,2) NOT NULL default '0.00',
  PriceGross float(10,2) NOT NULL default '0.00',
  SpecialOffer int(1) NOT NULL default '0',
  SpecialOfferPercent float(10,2) NOT NULL default '0.00'
) TYPE=MyISAM;

