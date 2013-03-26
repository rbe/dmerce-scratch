# phpMyAdmin MySQL-Dump
# version 2.2.2
# http://phpwizard.net/phpMyAdmin/
# http://phpmyadmin.sourceforge.net/ (download page)
#
# Host: localhost
# Erstellungszeit: 10. März 2002 um 18:33
# Server Version: 3.23.39
# PHP Version: 4.1.1
# Datenbank : `dmerce_gt_immo2`
# --------------------------------------------------------

#
# Tabellenstruktur für Tabelle `ObjectPicture`
#

CREATE TABLE ObjectPicture (
  ID int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedBy int(11) NOT NULL default '0',
  active int(1) NOT NULL default '1',
  Name varchar(255) NOT NULL default '',
  Picture varchar(255) NOT NULL default '',
  ObjectID int(11) NOT NULL default '0',
  Description text NOT NULL
) TYPE=MyISAM;

#
# Daten für Tabelle `ObjectPicture`
#

INSERT INTO ObjectPicture VALUES (1, '1015429415.390000', 1, '1015429467.730000', 1, 1, 'Blick auf die Strasse', '14197.jpg', 1, 'fsadfsadf\r\nsda\r\nf\r\ndsafdas');
INSERT INTO ObjectPicture VALUES (2, '1015429431.040000', 1, '1015429456.810000', 1, 1, 'Ihr Konforenzraum', '14131.jpg', 1, 'Sehr groß wie sie sehen !');
INSERT INTO ObjectPicture VALUES (3, '1015504288.210000', 1, '1015504288.210000', 1, 1, 'Ansicht Hof', 'house09.jpg', 2, 'Optisch ansprechende Fassade mit neuem Klinker und Fenstern.');
INSERT INTO ObjectPicture VALUES (4, '1015515979.800000', 1, '1015607294.130000', 1, 1, 'Vor dem Umbau', 'house09.jpg', 3, 'Ein früher Eindruck der Immobilie');
INSERT INTO ObjectPicture VALUES (5, '1015579018.030000', 1, '1015579018.030000', 1, 1, 'Ansicht von den Mitbewohnern', 'bully2.jpg', 5, 'Nette Leute im Haus, aktive Lebensgemeinschaft');

