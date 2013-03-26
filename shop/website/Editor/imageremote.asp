<%@ Language=VBScript %>
<HTML>
<HEAD>
<LINK rel=stylesheet type="text/css" href="stylesheets/ioStyleSheet.css">	
	<META HTTP-EQUIV="Expires" CONTENT="0">
	<TITLE>Bildauswahl vom Server</TITLE>
</HEAD>
<BODY bgColor="#c0c0c0" onLoad="window.resizeTo(300,430)">
<FONT face=Arial size=2>
<form name="formimageremote">
<CENTER>
Verzeichnis: 
<select name="FolderTitle" onChange="subselect();">
<option value=""></option>
<%
Sub subfolderlist(spec)
Dim fs, f, fl, s, sf

Set fs = CreateObject("Scripting.FileSystemObject")
Set f = fs.GetFolder(spec)
Set sf = f.SubFolders

For Each fl in sf
	s = s & "<option value='" & fl.name &"'" 
	if (Request("ord") = fl.name) then
	s = s & "selected"
	end if
	s = s & ">" & fl.name & "</option>"
Next

Response.Write(s)
End Sub
fol = "c:\inetpub\wwwroot\r2content50\images\"
subfolderlist(fol)
%>
<select id=select1 name=select1>
<select name="FileTitle" size="16" onChange="CheckSelection();" style="WIDTH: 250px;">
<%
Sub showfolderlist(folderspec)
Dim fs, f, fl, fc, s, i

Set fs = CreateObject("Scripting.FileSystemObject")
Set f = fs.GetFolder(folderspec)
Set fc = f.Files

For Each fl in fc
	s = s & "<option value='/images/"
	if (Request("ord") = "") then
	else
	s = s & Request("ord") &"/"
	end if
	s = s & fl.name &"'>" & fl.name & "</option>"
Next

Response.Write(s)
End Sub
folder = "c:\inetpub\wwwroot\r2content50\images\"&Request("ord")
showfolderlist(folder)
Response.Write("<p></p>")
%>

</select>
</CENTER>
<BR>
&nbsp;&nbsp;<INPUT type="checkbox" name="chkImagePreview">&nbsp;&nbsp;Preview<TD>
<CENTER>
<P>
<INPUT type=button onClick="InsertImage()" value="  OK  " name=btSave>
&nbsp;
<INPUT type=button onClick="window.close()" value=" Cancel " name=btCancel>
</CENTER>
</FORM>
</FONT>
</BODY>
</HTML>
<SCRIPT language="javascript">
	var objWindow=null;
	var ImagePath="";
	
	function CloseWindow()	
		{
			if (objWindow != null) objWindow.close(); 
		}
		
	function subselect() {
		location.href ="imageremote.asp?ord="+document.formimageremote.FolderTitle.options[document.formimageremote.FolderTitle.selectedIndex].value;
		}

	function CheckSelection()
		{var fClosed=false;		 
		 var URL=escape(ImagePath + document.formimageremote.FileTitle.options[document.formimageremote.FileTitle.selectedIndex].value);
			
			if (document.formimageremote.chkImagePreview.checked)
				{
					if (objWindow != null)
						{
							objWindow.close(); 
 							while (fClosed != objWindow.closed)
 							  {
 							    fClosed = objWindow.closed;
 							  }					
 						} 						
					objWindow=window.open(URL,"_blank","fullscreen=no, scrollbars=yes, resizable=yes, left=0, top=0, width=200, height=200"); 							
					objWindow.document.title="Preview";	
				}
		}
		
	function InsertImage()
		{var objRange=window.opener.document.frames("Editor").document.selection.createRange();		 
		 var RangeHtmlText=objRange.htmlText;			 
		 var URL=ImagePath + document.formimageremote.FileTitle.options[document.formimageremote.FileTitle.selectedIndex].value; 				

		 var objElt=objRange.parentElement();
		 		 
			RangeHtmlText='<IMG src="' + URL + '" border="0">';					
			objElt.innerHTML=objElt.innerHTML + RangeHtmlText;
			//objRange.pasteHTML(RangeHtmlText);			
			window.close();		
		}
		
</SCRIPT>
