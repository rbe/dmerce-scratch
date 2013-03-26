
	var sAppVersion=String(top.clientInformation.appVersion);
	var fIE5=(sAppVersion.indexOf("MSIE 5")>-1);	
//	var objEditorDoc = Editor.document;
	var objRange=null;
//	var OriginalData= rseditor.fields.getValue("editfield");
	var OriginalHtmlData="";
	var HtmlMode="";
	var objDialogWindow=null;	
	var objTableCell=null;
	var objTable=null;
	var SelFontFamily="Arial";	
	var SelFontSize="";	
	var SelFontColor="#000000";	
	var objImage=null;
	var ScreenWidth=window.screen.width;
	var ScreenHeight=window.screen.height;
	var FlatStyle=false;
	var fCheckFormat=true;
	var iTextSize=0;	
	var objBaseFont=null;	
	var TempBuffer="";
	var InterV1=0;
	var InterV2=0;
								
	onerror=null;

	function initEditor() {
		Editor.document.designMode = "On";
		Editor.document.open();
		Editor.document.write(OriginalData);
		Editor.document.close();

		}


	function SetFocus()
		{
			frames.Editor.focus();					
		}

	function DoNotCheckFormat()
		{
			fCheckFormat=false;
		}
			
	function CheckFormat()
		{
			fCheckFormat=true;
		}

	

	function ExecCommand(sCommand, sValue)		
		{						 	
			fCheckFormat=true;
			if (sCommand == "FontName")
				{
					SelFontFamily=sValue;		 			
				}						

			if (sCommand == "Paste" && fIE5)
				{
					objRange=Editor.document.selection.createRange();		 
					objRange.text=window.clipboardData.getData("Text");
				}
			else
				{
					if (Editor.document.selection.type != "Control")
						{
							if (sCommand == "Unlink")
								{objRange=Editor.document.selection.createRange();
								var objParentElement=objRange.parentElement();
								 var sText=objParentElement.innerText;	
								 
									if (sText.slice(0,1) == "#")
										{
											objParentElement.innerText=sText.slice(1);
										}
								}
						}
					if (sCommand == "RemoveFormat")
						{objRange=Editor.document.selection.createRange();
						var objParentElement=null;
						 var sText=objRange.text;							 
						 var sCheckText="";
														
							objParentElement=objRange.parentElement();
							
  	 					while (sCheckText.indexOf(sText) == -1)
 								{
 									sCheckText=objParentElement.innerText;
 									if (objParentElement.parentElement.tagName == "BODY" || objParentElement.parentElement.tagName == "BASEFONT")
 										break;
 									else 										
 										objParentElement=objParentElement.parentElement;
 								}			 							

							if (sText != "" && objParentElement.tagName != "HTML")
								{var HTMLText="";

									if(objParentElement.tagName == "BODY")
										HTMLText=String(objParentElement.innerHTML)
									else
										HTMLText=String(objParentElement.outerHTML)

									HTMLText=HTMLText.replace(/<H1>/g,"");
									HTMLText=HTMLText.replace(/<\/H1>/g,"");
									HTMLText=HTMLText.replace(/<H2>/g,"");
									HTMLText=HTMLText.replace(/<\/H2>/g,"");
									HTMLText=HTMLText.replace(/<H3>/g,"");
									HTMLText=HTMLText.replace(/<\/H3>/g,"");
									HTMLText=HTMLText.replace(/<H4>/g,"");
									HTMLText=HTMLText.replace(/<\/H4>/g,"");
									HTMLText=HTMLText.replace(/<H5>/g,"");
									HTMLText=HTMLText.replace(/<\/H5>/g,"");
									HTMLText=HTMLText.replace(/<H6>/g,"");
									HTMLText=HTMLText.replace(/<\/H6>/g,"");

									if(objParentElement.tagName == "BODY")
										objParentElement.innerHTML=HTMLText;
									else
										objParentElement.outerHTML=HTMLText;
								}
						}
					
					Editor.document.execCommand(sCommand,"",sValue);
					SetFocus();	
				}
		}		

	function DialogInsertLink()
		{var objEditorDoc = Editor.document;
		 var objDialogDoc=null;
		 var fClosed=false;		 
		 var fEditLink=false;
		 var sTarget="";
		 var sHref="";		 		 		 
		 var iLeft=ScreenWidth/2 - 225;
		 var iTop=ScreenHeight/2 - 90;
			
			if (objEditorDoc.selection.type != "Control")
				{
				objRange = objEditorDoc.selection.createRange();		  		 		 
				var objParentElement=objRange.parentElement();
				var objElt=objParentElement;
				while (objParentElement.tagName != "BODY" && objParentElement.tagName != "BASEFONT" && objParentElement.tagName != "A" && objParentElement.tagName != "P" && objParentElement.tagName != "BR")
 					{ 		    						 					
 					  objParentElement=objParentElement.parentElement;	 				    
 					}							 				   				    		     				   				  			
			
				if (objParentElement.tagName == "A")
					{var iPos;
					 var sLinkName=objParentElement.innerText;

						if (objRange.text == "")
							{
								objRange.collapse();
								objRange.expand("Character");
								objRange.select();								
							}

						fEditLink=true;
						sHref=objParentElement.getAttribute("href");					
						iPos=sHref.indexOf("[");
						if (iPos > -1)
							{
								sHref=sHref.slice(iPos);					
							}
						iPos=sHref.indexOf("#");
						if (iPos > -1)
							{
								sHref=sHref.slice(iPos);					
							}
						sTarget=objParentElement.getAttribute("target");
					}
				
				if (sHref == "#")				
					{
						alert("Jump mark!");
						SetFocus();
					}
				else				
					{	
						if (objDialogWindow != null)
							{
								objDialogWindow.close(); 
 								while (fClosed != objDialogWindow.closed)
 								  {
 								    fClosed = objDialogWindow.closed;
 								  }					
 							}
 							 						
						objDialogWindow=window.open("","","fullscreen=no, left=" + iLeft +", top=" + iTop + ", width=450, height=180"); 							
						objDialogDoc=objDialogWindow.document;			
						objDialogDoc.open();
						objDialogDoc.write(link.document.body.outerHTML);
						objDialogDoc.title="Hyperlink einfügen";						
						objDialogDoc.close();			
						objDialogDoc.all("Href").value=sHref;
						objDialogDoc.all("Target").value=sTarget;
						objDialogWindow.objRange=objRange;			
						objDialogWindow.fEditLink=fEditLink;
						if (fEditLink)
							{
								objDialogWindow.objLink=objParentElement;
							}
					}			
				}
		}
	
	function DialogInsertTable()
		{var objEditorDoc = Editor.document;
		 var objDialogDoc=null;
		 var fClosed=false;		 
		 var iLeft=ScreenWidth/2 - 290;
		 var iTop=ScreenHeight/2 - 165;
			
			if (objDialogWindow != null)
				{
					objDialogWindow.close(); 
 					while (fClosed != objDialogWindow.closed)
 					  {
 					    fClosed = objDialogWindow.closed;
 					  }					
 				} 						
			objDialogWindow=window.open("","","fullscreen=no, width=580, height=330, left=" + iLeft + ", top=" + iTop); 							
			objDialogDoc=objDialogWindow.document;			
			objDialogDoc.open();
			objDialogDoc.write(table.document.body.outerHTML);
			objDialogDoc.title="Tabelle einfügen";						
			objDialogDoc.close();
			objDialogDoc.all("btinit").click();
								
		}

	function InsertTableRow(iOffset)				 		 			
		{var objEditorDoc = Editor.document;
		 var iCellLength=0;
		 var iRowIndex=0;

			objRange=objEditorDoc.selection.createRange();		  		 		 
			if (objEditorDoc.selection.type != "Control")
				{
					if(objRange.parentElement != null)
						{var objTable=objRange.parentElement();		 													 				 
						 				 
							while (objTable.tagName != "TABLE" && objTable.tagName != "BODY" && objTable.tagName != "BASEFONT")
 								{ 		    
 								  if (objTable.tagName == "TR")
 										{
 											iRowIndex=objTable.rowIndex; 								
 										}	
 								  objTable=objTable.parentElement;  	 						  
 								}					
						}					
					if (objTable.tagName != "BODY" && objTable.tagName != "BASEFONT")
						{	
							iRowIndex=iRowIndex+iOffset;
		 					objTable.insertRow(iRowIndex);
							if (iRowIndex != 0 )
								iCellLength=objTable.rows(iRowIndex-1).cells.length;		 	
							else	
								iCellLength=objTable.rows(iRowIndex+1).cells.length;		 	
							for (var i = 0; i<iCellLength; i++)	
								{
									objTable.rows(iRowIndex).insertCell();
								}
						}
					SetFocus();	
				}
		}
	
	function InsertTableColumn(iOffset)				 		 			
		{var objEditorDoc = Editor.document;
		 var iCellLength=0;
		 var iCellIndex=0;
		 var iRows=0;

			objRange=objEditorDoc.selection.createRange();		  		 		 
			if (objEditorDoc.selection.type != "Control")
				{
					if(objRange.parentElement != null)
						{var objTable=objRange.parentElement();		 													 				 
						 				 
							while (objTable.tagName != "TABLE" && objTable.tagName != "BODY" && objTable.tagName != "BASEFONT")
 								{ 		    
 								  if (objTable.tagName == "TD")
 										{
 											iCellIndex=objTable.cellIndex; 								
 										}	
 								  objTable=objTable.parentElement;  	 						  
 								}					 					
 							if (objTable.tagName != "BODY" && objTable.tagName != "BASEFONT")
 								{	
 									iCellIndex=iCellIndex+iOffset;
 									iRows=objTable.rows.length;	
									for (var i = 0; i<iRows; i++)	
										{
											objTable.rows(i).insertCell(iCellIndex);
										}
 								}
						}				
					SetFocus();		 	
				}
		}		
	
	function DeleteTableColumn()
		{var objEditorDoc = Editor.document;
		 var iCellLength=0;
		 var iCellIndex=0;
		 var iRows=0;

			objRange=objEditorDoc.selection.createRange();		  		 		 
			if (objEditorDoc.selection.type != "Control")
				{
					if(objRange.parentElement != null)
						{var objTable=objRange.parentElement();		 													 				 
						 				 
							while (objTable.tagName != "TABLE" && objTable.tagName != "BODY" && objTable.tagName != "BASEFONT")
 								{ 		    
 								  if (objTable.tagName == "TD")
 										{
 											iCellIndex=objTable.cellIndex; 								
 										}	
 								  objTable=objTable.parentElement;  	 						  
 								}					
 							if (objTable.tagName != "BODY" && objTable.tagName != "BASEFONT")
 								{	
 									iRows=objTable.rows.length;	
									for (var i = 0; i<iRows; i++)	
										{
											objTable.rows(i).deleteCell(iCellIndex);
										}
 								}
						}				
					SetFocus();		 	
				}
		}		
		
	function DeleteTableRow()
		{var objEditorDoc = Editor.document;
		 var iCellLength=0;
		 var iRowIndex=0;
		
			objRange=objEditorDoc.selection.createRange();		  		 		 
			if (objEditorDoc.selection.type != "Control")
				{
					if(objRange.parentElement != null)
						{var objTable=objRange.parentElement();		 													 				 
						 				 
							while (objTable.tagName != "TABLE" && objTable.tagName != "BODY" && objTable.tagName != "BASEFONT")
 								{ 		    
 								  if (objTable.tagName == "TR")
 										{
 											iRowIndex=objTable.rowIndex; 								
 										}	
 								  objTable=objTable.parentElement;  	 						  
 								}					
						}					 	
					if (objTable.tagName != "BODY"  && objTable.tagName != "BASEFONT")
						{	
		 					objTable.deleteRow(iRowIndex);
		 				}	
		 			SetFocus();	
		 		}
		}

	function InsertTableCell(iOffset)				 		 			
		{var objEditorDoc = Editor.document;
		 var iCellLength=0;
		 var iCellIndex=0;
		 var iRowIndex=0,

			objRange=objEditorDoc.selection.createRange();		  		 		 
			if (objEditorDoc.selection.type != "Control")
				{
					if(objRange.parentElement != null)
						{var objTable=objRange.parentElement();		 													 				 
						 				 
							while (objTable.tagName != "TABLE" && objTable.tagName != "BODY"  && objTable.tagName != "BASEFONT")
 								{ 		    
 								  if (objTable.tagName == "TR")
 										{
 											iRowIndex=objTable.rowIndex; 								
 										}	
 								  if (objTable.tagName == "TD")
 										{
 											iCellIndex=objTable.cellIndex; 								
 										}	
 								  objTable=objTable.parentElement;  	 						  
 								}					 					
 							if (objTable.tagName != "BODY"  && objTable.tagName != "BASEFONT")
 								{
 									iCellIndex=iCellIndex+iOffset;	
		 							iRows=objTable.rows.length;	
									objTable.rows(iRowIndex).insertCell(iCellIndex);		 					
		 						}	
						}				
					SetFocus();		 	
				}
		}		

	function DeleteTableCell()				 		 			
		{var objEditorDoc = Editor.document;
		 var iCellLength=0;
		 var iCellIndex=0;
		 var iRowIndex=0,

			
			objRange=objEditorDoc.selection.createRange();		  		 		 
			if (objEditorDoc.selection.type != "Control")
				{
					if(objRange.parentElement != null)
						{var objTable=objRange.parentElement();		 													 				 
						 				 
							while (objTable.tagName != "TABLE" && objTable.tagName != "BODY"  && objTable.tagName != "BASEFONT")
 								{ 		    
 								  if (objTable.tagName == "TR")
 										{
 											iRowIndex=objTable.rowIndex; 								
 										}	
 								  if (objTable.tagName == "TD")
 										{
 											iCellIndex=objTable.cellIndex; 								
 										}	
 								  objTable=objTable.parentElement;  	 						  
 								}					
 							
 							if (objTable.tagName != "BODY"  && objTable.tagName != "BASEFONT")
 								{
 									iRows=objTable.rows.length;	
 									objTable.rows(iRowIndex).deleteCell(iCellIndex);
								}
						}					 	
					SetFocus();
				}
		}		

	function DialogFormatTable()
		{var objEditorDoc = Editor.document;
		 var objDialogDoc=null;
		 var fClosed=false;		 		 		 
		 var iLeft=ScreenWidth/2 - 225;
		 var iTop=ScreenHeight/2 - 300;
			
			objRange = objEditorDoc.selection.createRange();		  		 		 									
			if(objRange.parentElement != null)
				{
					objTableCell=objRange.parentElement();		 									
					while (objTableCell.tagName != "TD" && objTableCell.tagName != "BODY" && objTableCell.tagName != "BASEFONT")
 						{ 		    
 						  objTableCell=objTableCell.parentElement;		  		    
 						}					

					objTable=objTableCell;
					while (objTable.tagName != "TABLE" && objTable.tagName != "BODY" && objTable.tagName != "BASEFONT")
 						{ 		    
 						  objTable=objTable.parentElement;		 
 						}					

					if (objDialogWindow != null)
						{
							objDialogWindow.close(); 
 							while (fClosed != objDialogWindow.closed)
 							  {
 							    fClosed = objDialogWindow.closed;
 							  }					
 						}  			
 					if (objTableCell.tagName == "TD")							
						{				 
							objDialogWindow=window.open("","","fullscreen=no, resizable=no, width=480, height=570, left=" +iLeft + ", top=" + iTop); 							
							objDialogDoc=objDialogWindow.document;			
							objDialogDoc.open();
							objDialogDoc.write(tablefeature.document.body.outerHTML);
							objDialogDoc.title="Tabelle formatieren";						
							objDialogDoc.close();
							objDialogDoc.all("btinit").click();
						}											
					else
						{
							SetFocus();
						}					
				}
		}
				


	function TabPlus()
		{objRange=Editor.document.selection.createRange();		 
		 var objElt=null;	
		 var Buffer1="";
		 var Buffer2="";
		 var InnerHtml="";
		 var TagName="";		 
		 var iY=objRange.boundingTop;
					
			if(objRange.parentElement != null)
				{					
					objElt=objRange.parentElement();		 									
					while (objElt.tagName != "BLOCKQUOTE" && objElt.tagName != "P" && objElt.tagName != "OL"  && objElt.tagName != "UL" && objElt.tagName != "BODY" && objElt.tagName != "BASEFONT")
 				  { 		    
 				    objElt=objElt.parentElement;	 				    
 				  }							 				   				    		     				   				  
 				  Buffer1=objElt.innerHTML;
 				  Buffer1="{*}" + Buffer1 + "{/*}"; 				  
 				  objElt.innerHTML=Buffer1;
 				  if (objElt.tagName != "BODY" && objElt.tagName != "BASEFONT")
 						{
 							TagName=objElt.tagName;
 							objElt=objElt.parentElement;
 							Buffer2=objElt.innerHTML; 							 							 							 							
 							if (TagName == "BLOCKQUOTE")
 								{
 									InnerHtml=Buffer2.replace("{*}", "<BLOCKQUOTE>"); 							
 									InnerHtml=InnerHtml.replace("{/*}", "</BLOCKQUOTE>");  									
 								}
 							else	
 								{
 									InnerHtml=Buffer2.replace("<" + TagName.toLowerCase() + ">" + "{*}", "<BLOCKQUOTE>"); 							
 									InnerHtml=InnerHtml.replace("<" + TagName.toUpperCase() + ">" + "{*}", "<BLOCKQUOTE>");
 									InnerHtml=InnerHtml.replace("{/*}" + "</" + TagName.toLowerCase() + ">", "</BLOCKQUOTE>");
 									InnerHtml=InnerHtml.replace("{/*}" + "</" + TagName.toUpperCase() + ">", "</BLOCKQUOTE>"); 									
 								}
 						}	
 					else
 						{
 							InnerHtml="<BLOCKQUOTE>" + Buffer1 + "</BLOCKQUOTE>";	 		
 						}	 					 					
					InnerHtml=InnerHtml.replace("{*}", "");  			
					InnerHtml=InnerHtml.replace("{/*}", "");  			
 					objElt.innerHTML=InnerHtml;	 					
 				}  			
 			SetFocus();			
 			objRange.moveToPoint(0,iY); 			
 			objRange.select();
		}
	
	function TabMinus()
		{objRange=Editor.document.selection.createRange();		 
		 var objElt=null;	
		 var Buffer1="";
		 var Buffer2="";
		 var InnerHtml="";
		 var TagName="";
		 var iY=objRange.boundingTop;

			if(objRange.parentElement != null)
				{
					objElt=objRange.parentElement();		 									
					while (objElt.tagName != "BLOCKQUOTE" && objElt.tagName != "BODY" && objElt.tagName != "BASEFONT")
 				  { 		    
 				    objElt=objElt.parentElement;	 				    
 				  }							 				   				   				  
 				  Buffer1=objElt.innerHTML;
 				  Buffer1="{*}" + Buffer1 + "{/*}"; 				  
 				  if (objElt.tagName == "BLOCKQUOTE")
 						{
 							objElt.innerHTML=Buffer1;
 							objElt=objElt.parentElement;
 							Buffer2=objElt.innerHTML; 							 							 							 																
 							InnerHtml=Buffer2.replace("<BLOCKQUOTE>" + "{*}", ""); 							
 							InnerHtml=InnerHtml.replace("<BLOCKQUOTE>" + "{*}", "");
 							InnerHtml=InnerHtml.replace("{/*}" + "</BLOCKQUOTE>", "");
 							InnerHtml=InnerHtml.replace("{/*}" + "</BLOCKQUOTE>", "");
 							objElt.innerHTML=InnerHtml;	 					 								
 						}	
 				} 
 			SetFocus();												
 			objRange.moveToPoint(0,iY); 			
 			objRange.select();
		}
	
	function InsertImage()
		{var fClosed=false;
		 objRange=Editor.document.selection.createRange();		  		 		 
		 var iLeft=ScreenWidth/2 - 120;
		 var iTop=ScreenHeight/2 - 75;
		 var ImageTitle="";
		 	 			
			if (Editor.document.selection.type == "Control")
				{//var objControlRange=Editor.document.body.createControlRange();
					//alert(objControlRange);				
				}
			else
				{var objParentElement=objRange.parentElement();								
//				 var OuterHTML=imageremote.document.body.outerHTML;
//				 var OuterHTML=image.document.body.outerHTML;
				 var OuterHTML=imageselect.document.body.outerHTML;

					if (objDialogWindow != null)
						{
							objDialogWindow.close(); 
 							while (fClosed != objDialogWindow.closed)
 							  {
 							    fClosed = objDialogWindow.closed;
 							  }					
 						}						 		
 					if (objParentElement.tagName == "IMG")
 						{var ImageFileTitle=objParentElement.src;
 						 var iPos=ImageFileTitle.lastIndexOf("/");
 						 
 							ImageTitle=ImageFileTitle.slice(iPos+1);
 							objImage=objParentElement;
 						}
					objDialogWindow=window.open("","","fullscreen=no, left=" + iLeft + ", top=" + iTop +", width=240, height=200,scrollbars=no,resizable=yes"); 							
					objDialogDoc=objDialogWindow.document;			
					objDialogDoc.open();
					
					if (ImageTitle == "")
						{
							objDialogDoc.write(OuterHTML);							
						}
					else
						{
							objDialogDoc.write(OuterHTML.replace("disabled",""));
						}		
					
					if (ImageTitle == "")
						{
							objDialogDoc.title="Bild einfügen/bearbeiten";						
						}
					else
						{
							objDialogDoc.title=ImageTitle;						
						}		
					objDialogDoc.close();			
				}
		}
	
	function SetColor(refId)
		{var objDialogDoc=null;
		 var fClosed=false;		 
		 var iLeft=ScreenWidth/2 - 255;
		 var iTop=ScreenHeight/2 - 300;
					
			if (objDialogWindow != null)
				{
					objDialogWindow.close(); 
 					while (fClosed != objDialogWindow.closed)
 					  {
 					    fClosed = objDialogWindow.closed;
 					  }					
 				} 						
			objDialogWindow=window.open("","","fullscreen=no, left=" + iLeft + ", top=" + iTop + ", width=510, height=550"); 							
			objDialogDoc=objDialogWindow.document;			
			objDialogDoc.open();
			objDialogDoc.write(tablecolor.document.body.outerHTML);
			objDialogDoc.title="Farbtabelle";						
			objDialogDoc.close();
			objDialogDoc.all("refid").value=refId;
		}

	function SetHeadingStyle(hStyle)
		{var objEditorDoc = Editor.document;
		 objRange=objEditorDoc.selection.createRange();		 
		 var RangeText=objRange.text;
		 var objElt=null;	
		 var Buffer1="";
		 var Buffer2="";
		 var InnerHtml="";
		 var iY=objRange.boundingTop;
					
			if(objRange.parentElement != null)
				{					
					objElt=objRange.parentElement();		 									
					while (objElt.tagName != "H1" && objElt.tagName != "H2" && objElt.tagName != "H3"  && objElt.tagName != "H4" && objElt.tagName != "H5" && objElt.tagName != "H6" && objElt.tagName != "BODY"  && objElt.tagName != "BASEFONT")
 				  { 		    
 				    objElt=objElt.parentElement;	 				    
 				  }							 				   				    		     				   				  
 				  if (RangeText != objElt.innerText)
 						{ 
 							objRange.pasteHTML("<" + hStyle + ">" + RangeText + "</" + hStyle + ">"); 							
 						}
 					else
 						{
							if (objElt.tagName != "H1" && objElt.tagName != "H2" && objElt.tagName != "H3"  && objElt.tagName != "H4" && objElt.tagName != "H5" && objElt.tagName != "H6")
 								{
 									objElt.innerHTML="<" + hStyle + ">" + RangeText + "</" + hStyle + ">"; 							 								 									
 								}
 							else
 								{	
 									Buffer1=objElt.outerHTML; 									
 									Buffer2=Buffer1.replace("<" + objElt.tagName + ">", "<" + hStyle + ">");
 									Buffer2=Buffer2.replace("</" + objElt.tagName + ">", "</" + hStyle + ">");
 									objElt.outerHTML=Buffer2; 									
 								}
 						}	
 				}  			
 			SetFocus();			
 			objRange.moveToPoint(0,iY); 			
 			objRange.select();
		}

	function EditProperties()
		{var objDialogDoc=null;
		 var fClosed=false;		 
		 var iHeight=525;
		 var iWidth=460;
		 var iLeft=ScreenWidth/2 - iWidth/2;
		 var iTop=ScreenHeight/2 - iHeight/2;

			if (objDialogWindow != null)
				{
					objDialogWindow.close(); 
 					while (fClosed != objDialogWindow.closed)
 					  {
 					    fClosed = objDialogWindow.closed;
 					  }					
 				} 						
			objDialogWindow=window.open("","","fullscreen=no, width=" + iWidth + ", height=" + iHeight +", left=" + iLeft + ", top=" + iTop); 							
			objDialogDoc=objDialogWindow.document;			
			objDialogDoc.open();
			objDialogDoc.write(properties.document.body.outerHTML);
			objDialogDoc.title="Eigenschaften des Body";						
			objDialogDoc.close();
			objDialogDoc.all("btinit").click();
								
		}
