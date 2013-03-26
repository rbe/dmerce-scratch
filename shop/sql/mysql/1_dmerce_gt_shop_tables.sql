# MySQL dump 8.14
#
# Host: localhost    Database: dmerce_gt_shop
#--------------------------------------------------------
# Server version	3.23.39
#
# Table structure for table 'AdditionalFields'
#
CREATE TABLE AdditionalFields (
  ID int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedBy int(11) NOT NULL default '0',
  active int(11) NOT NULL default '1',
  Name varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=ISAM PACK_KEYS=1;
#
# Dumping data for table 'AdditionalFields'
#
#
# Table structure for table 'Agent'
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
  KEY ID (ID)
) TYPE=MyISAM;
#
# Dumping data for table 'Agent'
#
#
# Table structure for table 'Article'
#
CREATE TABLE Article (
  ID int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedBy int(11) NOT NULL default '0',
  active int(11) NOT NULL default '1',
  HeadNavID int(11) NOT NULL default '0',
  SubNavID int(11) NOT NULL default '0',
  ArtNo varchar(200) NOT NULL default '',
  Name text NOT NULL,
  ShortDescription text NOT NULL,
  DetailDescription text NOT NULL,
  PriceNet float(10,2) NOT NULL default '0.00',
  TaxRate float(10,2) NOT NULL default '0.00',
  PriceGross float(10,2) NOT NULL default '0.00',
  ClassOfGoodsID int(11) NOT NULL default '0',
  Highlight int(1) NOT NULL default '0',
  New int(1) NOT NULL default '0',
  SpecialOffer int(1) NOT NULL default '0',
  SpecialOfferFrom double(16,6) NOT NULL default '0.000000',
  SpecialOfferTill double(16,6) NOT NULL default '0.000000',
  SpecialOfferPercent float(10,2) NOT NULL default '0.00',
  Picture varchar(255) NOT NULL default '',
  Width float(10,2) NOT NULL default '0.00',
  Height float(10,2) NOT NULL default '0.00',
  Depth float(10,2) NOT NULL default '0.00',
  Weight varchar(11) NOT NULL default '0.000',
  Producer varchar(255) NOT NULL default '',
  AddFieldsName1 varchar(255) NOT NULL default '',
  AddFieldsVal1 varchar(255) NOT NULL default '',
  AddFieldsName2 varchar(255) NOT NULL default '',
  AddFieldsVal2 varchar(255) NOT NULL default '',
  AddFieldsName3 varchar(255) NOT NULL default '',
  AddFieldsVal3 varchar(255) NOT NULL default '',
  AddFieldsName4 varchar(255) NOT NULL default '',
  AddFieldsVal4 varchar(255) NOT NULL default '',
  AddFieldsName5 varchar(255) NOT NULL default '',
  AddFieldsVal5 varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=ISAM PACK_KEYS=1;
#
# Dumping data for table 'Article'
#
#
# Table structure for table 'ArticlePicture'
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
#
# Dumping data for table 'ArticlePicture'
#
#
# Table structure for table 'BasketContents'
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
#
# Dumping data for table 'BasketContents'
#
#
# Table structure for table 'ClassOfGoods'
#
CREATE TABLE ClassOfGoods (
  ID int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  CreatedBy int(11) NOT NULL default '0',
  ChangedBy int(11) NOT NULL default '0',
  active int(11) NOT NULL default '1',
  Name varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=ISAM PACK_KEYS=1;
#
# Dumping data for table 'ClassOfGoods'
#
#
# Table structure for table 'Contact'
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
  PRIMARY KEY  (ID),
  KEY ID_2 (ID)
) TYPE=MyISAM;
#
# Dumping data for table 'Contact'
#
#
# Table structure for table 'Contactwish'
#
CREATE TABLE Contactwish (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  Name varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID),
  KEY ID_2 (ID)
) TYPE=MyISAM;
#
# Dumping data for table 'Contactwish'
#
#
# Table structure for table 'HeadNav'
#
CREATE TABLE HeadNav (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  WordlistID int(11) NOT NULL default '0',
  TextID int(11) NOT NULL default '0',
  NameDE varchar(255) NOT NULL default '',
  Name_en varchar(255) NOT NULL default '',
  Name_es varchar(255) NOT NULL default '',
  Name_fr varchar(255) NOT NULL default '',
  Name_it varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID),
  KEY ID_2 (ID)
) TYPE=MyISAM;
#
# Dumping data for table 'HeadNav'
#
#
# Table structure for table 'Imprintfields'
#
CREATE TABLE Imprintfields (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  Name varchar(255) NOT NULL default '',
  Value varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID),
  KEY ID_2 (ID)
) TYPE=MyISAM;
#
# Dumping data for table 'Imprintfields'
#
#
# Table structure for table 'Layout'
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
# Dumping data for table 'Layout'
#
#
# Table structure for table 'Navigation'
#
CREATE TABLE Navigation (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  WordlistID int(11) NOT NULL default '0',
  TextarticleID int(11) NOT NULL default '0',
  NameDE varchar(255) NOT NULL default '',
  Name_en varchar(255) NOT NULL default '',
  Name_fr varchar(255) NOT NULL default '',
  Name_es varchar(255) NOT NULL default '',
  Name_it varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID),
  KEY ID_2 (ID)
) TYPE=MyISAM;
#
# Dumping data for table 'Navigation'
#
#
# Table structure for table 'Operator'
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
  PRIMARY KEY  (ID),
  KEY ID_2 (ID),
  FULLTEXT KEY Mobile (Mobile)
) TYPE=MyISAM;
#
# Dumping data for table 'Operator'
#
#
# Table structure for table 'OrderInfo'
#
CREATE TABLE OrderInfo (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,6) NOT NULL default '0.000000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,6) NOT NULL default '0.000000',
  active int(1) NOT NULL default '0',
  FirstName varchar(255) NOT NULL default '',
  LastName varchar(255) NOT NULL default '',
  Street varchar(100) NOT NULL default '',
  ZipCode varchar(10) NOT NULL default '',
  City varchar(255) NOT NULL default '',
  Phone varchar(255) NOT NULL default '',
  Telefax varchar(255) NOT NULL default '',
  Mobile varchar(255) NOT NULL default '',
  Email varchar(255) NOT NULL default '',
  TermsOfPayment varchar(255) NOT NULL default '',
  SessionId varchar(255) NOT NULL default '',
  BasketSum float(16,2) NOT NULL default '0.00',
  Comment text NOT NULL,
  URL varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID)
) TYPE=MyISAM;
#
# Dumping data for table 'OrderInfo'
#
#
# Table structure for table 'SubNav'
#
CREATE TABLE SubNav (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  HeadNavID int(11) NOT NULL default '0',
  NameDE varchar(255) NOT NULL default '',
  Name_en varchar(255) NOT NULL default '',
  Name_fr varchar(255) NOT NULL default '',
  Name_es varchar(255) NOT NULL default '0',
  Name_it varchar(255) NOT NULL default '',
  TextID int(11) NOT NULL default '0',
  PRIMARY KEY  (ID),
  KEY ID_2 (ID)
) TYPE=MyISAM;
#
# Dumping data for table 'SubNav'
#
#
# Table structure for table 'Subnavigation'
#
CREATE TABLE Subnavigation (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  NavigationID int(11) NOT NULL default '0',
  TextarticleID int(11) NOT NULL default '0',
  RelatedTextarticleID int(11) NOT NULL default '0',
  NameDE varchar(255) NOT NULL default '',
  Name_en varchar(255) NOT NULL default '',
  Name_fr varchar(255) NOT NULL default '',
  Name_es varchar(255) NOT NULL default '',
  Name_it varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID),
  KEY ID_2 (ID)
) TYPE=MyISAM;
#
# Dumping data for table 'Subnavigation'
#
#
# Table structure for table 'TermsOfPayment'
#
CREATE TABLE TermsOfPayment (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime double(16,6) NOT NULL default '0.000000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime double(16,6) NOT NULL default '0.000000',
  active int(1) NOT NULL default '1',
  Name varchar(255) NOT NULL default ''
) TYPE=MyISAM;
#
# Dumping data for table 'TermsOfPayment'
#
#
# Table structure for table 'Textarticle'
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
  PRIMARY KEY  (ID),
  KEY active (active)
) TYPE=MyISAM;
#
# Dumping data for table 'Textarticle'
#
#
# Table structure for table 'Wordlist'
#
CREATE TABLE Wordlist (
  ID int(11) NOT NULL default '0',
  CreatedBy int(11) NOT NULL default '0',
  CreatedDateTime float(16,4) NOT NULL default '0.0000',
  ChangedBy int(11) NOT NULL default '0',
  ChangedDateTime float(16,4) NOT NULL default '0.0000',
  active int(1) NOT NULL default '0',
  NameDE varchar(255) NOT NULL default '',
  Name_en varchar(255) NOT NULL default '',
  Name_fr varchar(255) NOT NULL default '',
  Name_es varchar(255) NOT NULL default '',
  Name_it varchar(255) NOT NULL default '',
  PRIMARY KEY  (ID),
  KEY ID_2 (ID)
) TYPE=MyISAM;
#
# Dumping data for table 'Wordlist'
#
