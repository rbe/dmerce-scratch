# MySQL dump 8.14
#
# Host: localhost    Database: dmerce_job
#--------------------------------------------------------
# Server version	3.23.39
#
# Table structure for table 'Agent'
#
CREATE TABLE Agent (
  ID int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedBy int(11) NOT NULL default '0',
  Login varchar(250) NOT NULL default '',
  passwd varchar(8) binary NOT NULL default '',
  Name varchar(255) NOT NULL default '',
  Vorname varchar(30) NOT NULL default '',
  EMail varchar(255) NOT NULL default '',
  ProjectID int(11) NOT NULL default '0',
  Nickname varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=ISAM PACK_KEYS=1;
#
# Dumping data for table 'Agent'
#
#
# Table structure for table 'Job'
#
CREATE TABLE Job (
  ID int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedBy int(11) NOT NULL default '0',
  active int(1) NOT NULL default '0',
  Titel varchar(255) NOT NULL default '',
  Description text NOT NULL,
  Status int(11) NOT NULL default '0',
  Statuscomment varchar(255) NOT NULL default '',
  Start varchar(5) NOT NULL default '',
  Until varchar(5) NOT NULL default '',
  Length int(3) NOT NULL default '0',
  Customer varchar(255) NOT NULL default '',
  ProjectID int(11) NOT NULL default '0',
  Orderflag int(1) NOT NULL default '0',
  Gflag int(11) NOT NULL default '0'
) TYPE=MyISAM;
#
# Dumping data for table 'Job'
#
#
# Table structure for table 'Project'
#
CREATE TABLE Project (
  ID int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedBy int(11) NOT NULL default '0',
  active int(1) NOT NULL default '0',
  Name varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;
#
# Dumping data for table 'Project'
#
#
# Table structure for table 'temp'
#
CREATE TABLE temp (
  ID int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedBy int(11) NOT NULL default '0',
  active int(1) NOT NULL default '1',
  User int(11) NOT NULL default '0',
  t int(11) NOT NULL default '0'
) TYPE=MyISAM;
#
# Dumping data for table 'temp'
#
