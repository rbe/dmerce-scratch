<%@ Language=VBScript%>
<SCRIPT id=DebugDirectives runat=server language=javascript>
// Set these to true to enable debugging or tracing
@set @debug=false
@set @trace=false
</SCRIPT>
<% ' VI 6.0 Skript-Objektmodell aktiviert %>
<!--#include file="../../_ScriptLibrary/pm.asp"-->
<% if StartPageProcessing() Then Response.End() %>
<FORM name=thisForm action="editexit.asp" METHOD=post>
<html>
<head>
<title>Editor</title>
<link rel="stylesheet" href="../../skripte/style.css">
<script language="javascript" runat="Server">
function rseditor_onbeforeopen() {
	newSQL = "Select "+Request('field')+" as editfield from "+Request('table')+" where "+Request('fieldid')+" = "+Request('id')+"";
	rseditor.setSQLText(newSQL);
}

</script>

<script language="javascript" src="edit.js">
</script>

<style type="text/css">
h1, h2, h3, h4, h5, h6, p, ul, ol, dd
	{font-family: Arial, Helvetica, sans-serif;
	color: #21245F;
	font-size: 75%;
	font-style: normal;
	font-variant: normal;
	text-transform: none;
	text-decoration: none;
	text-indent: 0px;
	letter-spacing: normal;
	line-height: normal;
	margin: 2px 0px 5px 0px;
	}

td.editor {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 100%;
	font-weight: normal;
	color: #21245F;
	margin: 0px;
}

.test {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 100%;
	font-weight: bold;
	color: #21245F;
	margin: 0px;
}


</style>
<!--METADATA TYPE="DesignerControl" startspan
<OBJECT classid="clsid:9CF5D7C2-EC10-11D0-9862-0000F8027CA0" id=rseditor style="LEFT: 0px; TOP: 0px">
	<PARAM NAME="ExtentX" VALUE="12197">
	<PARAM NAME="ExtentY" VALUE="2090">
	<PARAM NAME="State" VALUE="(TCConn=\qr2office\q,TCDBObject_Unmatched=\qSQL\sStatement\q,TCDBObjectName_Unmatched=\qselect\stext\sas\seditfield\r\nfrom\skategorie\r\nwhere\skatid\s=\s'1'\r\n\q,TCControlID_Unmatched=\qrseditor\q,TCPPConn=\qr2office\q,TCPPDBObject=\qTables\q,TCPPDBObjectName=\qalt_menus\q,RCDBObject=\qRCSQLStatement\q,TCSQLStatement_Unmatched=\qselect\stext\sas\seditfield\r\nfrom\skategorie\r\nwhere\skatid\s=\s'1'\r\n\q,TCCursorType=\q3\s-\sStatic\q,TCCursorLocation=\q3\s-\sUse\sclient-side\scursors\q,TCLockType=\q3\s-\sOptimistic\q,TCCacheSize_Unmatched=\q10\q,TCCommTimeout_Unmatched=\q10\q,CCPrepared=0,CCAllRecords=1,TCNRecords_Unmatched=\q10\q,TCODBCSyntax_Unmatched=\q\q,TCHTargetPlatform=\q\q,TCHTargetBrowser_Unmatched=\qServer\s(ASP)\q,TCTargetPlatform=\qInherit\sfrom\spage\q,RCCache=\qRCBookPage\q,CCOpen=1,GCParameters=(Rows=0))">
	<PARAM NAME="LocalPath" VALUE="../../"></OBJECT>
-->
<!--#INCLUDE FILE="../../_ScriptLibrary/Recordset.ASP"-->
<SCRIPT LANGUAGE="JavaScript" RUNAT="server">
function _initrseditor()
{
	var DBConn = Server.CreateObject('ADODB.Connection');
	DBConn.ConnectionTimeout = Application('r2office_ConnectionTimeout');
	DBConn.CommandTimeout = Application('r2office_CommandTimeout');
	DBConn.CursorLocation = Application('r2office_CursorLocation');
	DBConn.Open(Application('r2office_ConnectionString'), Application('r2office_RuntimeUserName'), Application('r2office_RuntimePassword'));
	var cmdTmp = Server.CreateObject('ADODB.Command');
	var rsTmp = Server.CreateObject('ADODB.Recordset');
	cmdTmp.ActiveConnection = DBConn;
	rsTmp.Source = cmdTmp;
	cmdTmp.CommandType = 1;
	cmdTmp.CommandTimeout = 10;
	cmdTmp.CommandText = 'select text as editfield from kategorie where katid = \'1\' ';
	rsTmp.CacheSize = 10;
	rsTmp.CursorType = 3;
	rsTmp.CursorLocation = 3;
	rsTmp.LockType = 3;
	rseditor.setRecordSource(rsTmp);
	rseditor.open();
	if (thisPage.getState('pb_rseditor') != null)
		rseditor.setBookmark(thisPage.getState('pb_rseditor'));
}
function _rseditor_ctor()
{
	CreateRecordset('rseditor', _initrseditor, null);
}
function _rseditor_dtor()
{
	rseditor._preserveState();
	thisPage.setState('pb_rseditor', rseditor.getBookmark());
}
</SCRIPT>

<!--METADATA TYPE="DesignerControl" endspan-->
</head>
<body bgcolor="#c0c0c0" onload="initEditor()">
<input type="hidden" name="inputtxt" >
<input type="hidden" name="outputtxt" value='<%=rseditor.fields.getValue("editfield")%>'>
<script language="javascript">
	var OriginalData = document.thisForm.outputtxt.value;
	function Save() {
		document.thisForm.inputtxt.value = Editor.document.body.innerHTML;
		document.thisForm.submit();
	}
</script>
<center>
<table bgColor="silver" border="0" cellPadding="0" cellSpacing="0" width="100%">
  <tbody>
    <tr>
		<td><IMG height=24 src="icon/shifter.gif" width=8></td>
        <td></td>
        <td></td>
        <td></td>
        <td><input id="btSave" onclick="Save()" style="BACKGROUND-IMAGE: url(icon/save.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Speichern" type="button"></td>
        <td></td>
        <td></td>
        <td></td>
        <td><IMG height=24 src="icon/shifter1.gif" width=6></td>
        <td><input id="btCut" onclick="ExecCommand('Cut','')" style="BACKGROUND-IMAGE: url(icon/cut.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Ausschneiden" type="button"></td>

        <td><input id="btCopy" onclick="ExecCommand('Copy','')" style="BACKGROUND-IMAGE: url(icon/copy.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Kopieren" type="button"></td>

        <td><input id="btPaste" onclick="ExecCommand('Paste','')" style="BACKGROUND-IMAGE: url(icon/paste.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Einf&uuml;gen" type="button"></td>        

        <td><IMG height=24 src="icon/shifter1.gif" width=6></td>

        <td><input id="btUnformat" onclick="ExecCommand('RemoveFormat','')" style="BACKGROUND-IMAGE: url(icon/aunformat.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Unformat" type="button"></td>        

        <td><input id="Bold" onclick="ExecCommand('Bold','')" style="BACKGROUND-IMAGE: url(icon/abold.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Fett" type="button"></td>

        <td><input id="btItalic" onclick="ExecCommand('Italic','')" style="BACKGROUND-IMAGE: url(icon/aitalic.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Kursiv" type="button"></td>

        <td><input id="btUnderline" onclick="ExecCommand('UnderLine','')" style="BACKGROUND-IMAGE: url(icon/aunderline.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Unterstrichen" type="button"></td>

        <td></td>

        <td></td>

        <td>&nbsp;</td>

        <td><select id ="select1" name="cmbFontSize" onclick="DoNotCheckFormat()" onchange="ExecCommand('FontSize' , cmbFontSize.value)" title="Font Size">
                    <option selected value="">
                    <option value="1">1
                    <option value="2">2
                    <option value="3">3
                    <option value="4">4
                    <option value="5">5
                    <option value="6">6
                    <option value="7">7
                    <option value=""></select>
 
        </td>
        <td>&nbsp;</td>
        <td><select id ="select2" name="cmbFontName" onclick="DoNotCheckFormat()" onblur="CheckFormat()" onchange="ExecCommand('FontName',cmbFontName.value)" title="Font Face">
			<option selected value="">
			<option value="Arial,Geneva,Sans-Serif">Arial
			<option value="Courier,Monospace">Courier
            <option value="Monospace,Courier New">Monospace
            <option value="Sans-Serif">Sans-Serif
            <option value="Serif">Serif      
            <option value="Symbol">Symbol
			<option value="Times New Roman, Serif">Times New Roman                                                         
			<option value="Verdana,Arial,Geneva,Sans-Serif">Verdana
			<option value="Webdings">Webdings                                                                        
            <option value="Wingdings">Wingdings                                        
            </select>
 
        </td>
        <td>&nbsp;</td>
        <td><input id="btLeft" onclick="ExecCommand('JustifyLeft','')" style="BACKGROUND-IMAGE: url(icon/left.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Linksb&uuml;ndig" type="button"></td>
		
        <td><input id="btCenter" onclick="ExecCommand('JustifyCenter','')" style="BACKGROUND-IMAGE: url(icon/center.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Zentriert" type="button"></td>
		
        <td><input id="btRight" onclick="ExecCommand('JustifyRight','')" style="BACKGROUND-IMAGE: url(icon/right.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Rechtsb&uuml;ndig" type="button"></td>
		
        <td><IMG height=24 src="icon/shifter1.gif" width=6></td>

        <td><input id="btTabMinus" onclick="TabMinus()" style="BACKGROUND-IMAGE: url(icon/tabminus.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Einzug verkleinern" type="button"></td>        

        <td><input id="btTabPlus" onclick="TabPlus()" style="BACKGROUND-IMAGE: url(icon/tabplus.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Einzug vergr&ouml;&szlig;ern" type="button"></td>        

        <td><IMG height=24 src="icon/shifter1.gif" width=6></td>

        <td><input id="btList" onclick="ExecCommand('InsertUnorderedList','')" style="BACKGROUND-IMAGE: url(icon/list.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Aufz&auml;hlungszeichen" type="button"></td>

        <td><input id="btNum" onclick="ExecCommand('InsertOrderedList','')" style="BACKGROUND-IMAGE: url(icon/num.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Numerierung" type="button"></td>        

        <td><IMG height=24 src="icon/shifter1.gif" width=6></td>

        <td><input id="btForeColor" onclick="SetColor('EditorSetForeColor')" style="BACKGROUND-IMAGE: url(icon/forecolor.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Schriftfarbe" type="button"></td>

        <td><input id="btBackColor" onclick="SetColor('EditorSetBackColor')" style="BACKGROUND-IMAGE: url(icon/backcolor.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Hervorheben" type="button"></td>

        <td><IMG height=24 src="icon/shifter1.gif" width=6></td>

		<td><input id="btUnlink" onclick="ExecCommand('Unlink','')" style="BACKGROUND-IMAGE: url(icon/unlink.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Link entfernen" type="button"></td>                

        <td><input id="btInsertLink" onclick="DialogInsertLink()" style="BACKGROUND-IMAGE: url(icon/hyperlink.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Hyperlink einf&uuml;gen" type="button"></td>        

        <td></td>        

        <td><IMG height=24 src="icon/shifter1.gif" width=6></td>

        <td><input id="btInsertImage" onclick="InsertImage()" style="BACKGROUND-IMAGE: url(icon/image.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Bild einf&uuml;gen/bearbeiten" type="button"></td>              
        <td width="100%"></td>
    </tr>
  </tbody>
</table>

<table bgColor="silver" border="0" cellPadding="0" cellSpacing="0" width="100%">
	<tbody>
		<tr>
			<td colspan="28"><IMG height=2 src="icon/3dline.gif" width=100%></td>
		<tr>
		<tr>
			<td><IMG height=24 src="icon/shifter.gif" width=8></td>		
			
			<td><input id="btInsertTable" onclick="DialogInsertTable()" style="BACKGROUND-IMAGE: url(icon/table.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Tabelle einf&uuml;gen" type="button"></td>        				

	        <td><input id="btFormatTable" onclick="DialogFormatTable()" style="BACKGROUND-IMAGE: url(icon/tableformat.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Tabelle bearbeiten" type="button"></td>        

	        <td><IMG height=24 src="icon/shifter1.gif" width=6></td>

			<td><input id="btInsertTableRowBefore" onclick="InsertTableRow(0)" style="BACKGROUND-IMAGE: url(icon/insertrowbefore.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Zeile einf&uuml;gen vor Auswahl" type="button"></td>        

			<td><input id="btInsertTableRowAfter" onclick="InsertTableRow(1)" style="BACKGROUND-IMAGE: url(icon/insertrowafter.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Zeile einf&uuml;gen hinter Auswahl" type="button"></td>        

			<td><input id="btDeleteTableRow" onclick="DeleteTableRow()" style="BACKGROUND-IMAGE: url(icon/deleterow.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Zeile l&ouml;schen" type="button"></td>       

	        <td><IMG height=24 src="icon/shifter1.gif" width=6></td>

			<td><input id="btInsertTableColumnBefore" onclick="InsertTableColumn(0)" style="BACKGROUND-IMAGE: url(icon/insertcolumnbefore.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Spalte einf&uuml;gen vor Auswahl" type="button"></td>        				

			<td><input id="btInsertTableColumnAfter" onclick="InsertTableColumn(1)" style="BACKGROUND-IMAGE: url(icon/insertcolumnafter.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Spalte einf&uuml;gen hinter Auswahl" type="button"></td>        				

			<td><input id="btDeleteTableColumn" onclick="DeleteTableColumn()" style="BACKGROUND-IMAGE: url(icon/deletecolumn.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Spalte l&ouml;schen" type="button"></td>        				

	        <td><IMG height=24 src="icon/shifter1.gif" width=6></td>

			<td><input id="btInsertTableCellBefore" onclick="InsertTableCell(0)" style="BACKGROUND-IMAGE: url(icon/insertcellbefore.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Zelle einf&uuml;gen vor Auswahl" type="button"></td>        				

			<td><input id="btInsertTableCellAfter" onclick="InsertTableCell(1)" style="BACKGROUND-IMAGE: url(icon/insertcellafter.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Zelle einf&uuml;gen hinter Auswahl" type="button"></td>        				

			<td><input id="btDeleteTableCell" onclick="DeleteTableCell()" style="BACKGROUND-IMAGE: url(icon/deletecell.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Zelle l&ouml;schen" type="button"></td>        				

			<td><IMG height=24 src="icon/shifter1.gif" width=6></td>				
											
			<td><input id="btInsertHR1" onclick="SetHeadingStyle('H1')" style="BACKGROUND-IMAGE: url(icon/h1.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="&Uuml;berschrift 1" type="button"></td>        				

			<td><input id="btInsertHR2" onclick="SetHeadingStyle('H2')" style="BACKGROUND-IMAGE: url(icon/h2.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="&Uuml;berschrift 2" type="button"></td>        				

			<td><input id="btInsertHR3" onclick="SetHeadingStyle('H3')" style="BACKGROUND-IMAGE: url(icon/h3.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="&Uuml;berschrift 3" type="button"></td>        				

			<td><input id="btInsertHR4" onclick="SetHeadingStyle('H4')" style="BACKGROUND-IMAGE: url(icon/h4.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="&Uuml;berschrift 4" type="button"></td>        				

			<td><input id="btInsertHR5" onclick="SetHeadingStyle('H5')" style="BACKGROUND-IMAGE: url(icon/h5.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="&Uuml;berschrift 5" type="button"></td>        				

			<td><input id="btInsertHR6" onclick="SetHeadingStyle('H6')" style="BACKGROUND-IMAGE: url(icon/h6.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="&Uuml;berschrift 6" type="button"></td>        				

	        <td><IMG height=24 src="icon/shifter1.gif" width=6></td>

	        <td><input id="btInsertHR" onclick="ExecCommand('InsertHorizontalRule','')" style="BACKGROUND-IMAGE: url(icon/hr.gif); BACKGROUND-REPEAT: no-repeat; HEIGHT: 22px; WIDTH: 22px" title="Horizontale Linie einf&uuml;gen" type="button"></td>        				

			<td><IMG height=24 src="icon/shifter1.gif" width=6></td>				

			<td></td>        

			<td width="1650"></td>
		</tr>		
	</tbody>
</table>


<table border="0" cellPadding="0" cellSpacing="0" width="100%">
	<tr>
		<td width="100%" colspan="6">
		
		<iframe style="font-Family:Arial;" frameBorder="1" height="462" id="Editor" width="100%"></iframe>

		<iframe width="0" scrolling="no" frameBorder="0" frameSpacing="0" height="0" id="imageremote" src="imageremote.asp"></iframe>
		<iframe width="0" scrolling="no" frameBorder="0" frameSpacing="0" height="0" id="imageselect" src="imageselect.html"></iframe>
		<iframe width="0" scrolling="no" frameBorder="0" frameSpacing="0" height="0" id="table" src="table.html"></iframe>
		<iframe width="0" scrolling="no" frameBorder="0" frameSpacing="0" height="0" id="tablefeature" src="tablefeature.html"></iframe>
		<iframe width="0" scrolling="no" frameBorder="0" frameSpacing="0" height="0" id="link" src="link.html"></iframe>
		<iframe width="0" scrolling="no" frameBorder="0" frameSpacing="0" height="0" id="tablecolor" src="tablecolor.html"></iframe>
		<iframe width="0" scrolling="no" frameBorder="0" frameSpacing="0" height="0" id="imagefeature" src="imagefeature.html"></iframe>
		<iframe width="0" scrolling="no" frameBorder="0" frameSpacing="0" height="0" id="properties" src="properties.html" ></iframe>
            		
		</td>
	</tr>
	<tr>
		<td height="9"></td>
	</tr>	
</table>
</center>
</body>
<% ' VI 6.0 Skript-Objektmodell aktiviert %>
<% EndPageProcessing() %>
</FORM>
</html>
