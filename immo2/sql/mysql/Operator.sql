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
# Tabellenstruktur für Tabelle `Operator`
#

CREATE TABLE Operator (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  Company varchar(255) NOT NULL default '',
  ShowCompany int(1) NOT NULL default '0',
  LastName varchar(255) NOT NULL default '',
  ShowLastName int(1) NOT NULL default '0',
  FirstName varchar(255) NOT NULL default '',
  ShowFirstName int(1) NOT NULL default '0',
  Street varchar(255) NOT NULL default '',
  ShowStreet int(1) NOT NULL default '0',
  ZipCode varchar(255) NOT NULL default '',
  ShowZipCode int(1) NOT NULL default '0',
  City varchar(255) NOT NULL default '',
  ShowCity int(1) NOT NULL default '0',
  Country varchar(255) NOT NULL default '',
  ShowCountry int(1) NOT NULL default '0',
  Phone varchar(255) NOT NULL default '',
  ShowPhone int(1) NOT NULL default '0',
  Fax varchar(255) NOT NULL default '',
  ShowFax int(1) NOT NULL default '0',
  Mobile varchar(255) NOT NULL default '',
  ShowMobile int(1) NOT NULL default '0',
  Email varchar(255) NOT NULL default '',
  ShowEmail int(1) NOT NULL default '0',
  Url varchar(255) NOT NULL default '',
  ShowUrl int(1) NOT NULL default '0',
  Textfield longtext NOT NULL,
  ShowTextfield int(1) NOT NULL default '0',
  Picture varchar(255) NOT NULL default '',
  Head varchar(255) NOT NULL default '',
  LayoutID int(11) NOT NULL default '0',
  Logo varchar(255) NOT NULL default '',
  Headtext varchar(255) NOT NULL default '',
  HeadFontface varchar(255) NOT NULL default '',
  HeadFontsize varchar(255) NOT NULL default '',
  UnderConstruction int(1) NOT NULL default '0',
  UndConstText text NOT NULL,
  UndConstPic varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;

#
# Daten für Tabelle `Operator`
#

INSERT INTO Operator VALUES (1, 0, '0.0000', 1, '1015773824.0000', 'MusterImmo GbR', 1, 'Muster', 0, 'Peter', 0, 'Musterstr. 109', 1, '12345', 1, 'Musterhausen', 1, 'Germany', 0, '0251/52092-0', 1, '0251/52092-100', 1, '', 1, 'support@1ci.de', 1, 'www.immo.demo.1ci.de', 1, '<P><FONT face=Arial,Geneva,Sans-Serif size=2>MUSTERTEXT</FONT></P>\r\n<P><FONT face=Arial,Geneva,Sans-Serif size=2>Die auf den Webseiten zur Verfügung gestellten Informationen werden unter Beachtung größter Sorgfalt laufend aktualisiert und ergänzt. Dennoch kann keine Garantie für die Richtigkeit und Vollständigkeit der angegebenen Daten übernommen werden, da eine zwischenzeitlich eingetretene Änderung nicht gänzlich auszuschließen ist. Dies gilt ebenso für sämtliche Webseiten Dritter, auf die durch einen Hyperlink verwiesen wird. Dort enthaltene Informationen stehen im alleinigen Verantwortungsbereich ihres Herstellers bzw. Verwenders. <BR><BR>Mit Urteil vom 12. Mai 1998 - 312 O 85/98 - "Haftung für Links" hat das Landgericht Hamburg entschieden, dass man durch die Ausbringung eines Links die Inhalte der gelinkten Seite ggf. mitzuverantworten hat. Dies kann - so das LG - nur dadurch verhindert werden, dass man sich ausdrücklich von diesen Inhalten distanziert. <BR><BR>Wir haben auf verschiedenen Seiten dieser Website Links zu anderen Seiten im Internet gelegt. Wir möchten ausdrücklich betonen, dass wir keinerlei Einfluss auf die Gestaltung und die Inhalte der gelinkten Seiten haben. Deshalb distanzieren wir uns hiermit ausdrücklich von allen Inhalten aller gelinkten Seiten auf unserer Website und machen uns ihre Inhalte nicht zueigen. Diese Erklärung gilt für alle auf unserer Website existierenden Links.<BR><BR><STRONG>Wir schließen demnach jegliche Haftung im oben genannten Zusammenhang aus.<BR><BR></STRONG>Inhalt und Gestaltung der Webseiten sind urheberrechtlich geschützt und dürfen ausschließlich von autorisierten Personen geändert oder ergänzt werden. Die Vervielfältigung der enthaltenen Daten und Informationen bedarf der vorherigen schriftlichen Zustimmung des Betreibers. Dies gilt insbesondere für die Vervielfältigung, Übersetzung oder die Verwendung in elektronischen Systemen.<BR><BR>©&nbsp; Alle Rechte vorbehalten.</FONT></P>', 0, '', 'I M P R E S S U M', 9, 'kopf1.jpg', '', 'Arial', '0', 0, 'Für diese Homepage wurden noch keine Inhalte hinterlegt.<br><br>Schauen Sie doch zu einem späteren Zeitpunkt noch einmal vorbei.<br><br>Als Betreiber der Homepage müssen Sie sich erst als Administrator anmelden und Inhalte hinterlegen.', '');

