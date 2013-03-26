// (C) 2000 by 1Ci - GmbH (www.1ci.de)
// Author: Christian Rütgers
//
// Usage and Replication of this Script only with the written Permission of the
// 1Ci GmbH!
//
// Replace "myForm.elements[Feld]" im ganzen Script, um an andere Gegebenheiten anzupassen!
//

var nn=document.layers?true:false;
var ie=document.all?true:false;
var undoFeldval = "";
var redoFeldval = "";
var pasteFeld = "";

function auswahl(Feld,art,mode) {
        if (ie) {
          tmpFeld = eval("document.forms[myFormName].elements[Feld]");
          tmp = document.selection.createRange();
          if (tmp.text != "") {
                  undoFeldval = document.forms[myFormName].elements[Feld].value;
                  switch(mode) {
                          case 'div':
                                tmp.text = '<div align="' + art + '">' + tmp.text + '</div>\n';
                                break;
                          case 'pre':
                                tmp.text = tmp.text + "<" + art + ">\n";
                                break;
                          case 'list':
                                tmp.text = "\n<" + art + ">\n<li>" + tmp.text + "</li>\n<li></li>\n</" + art + ">\n";
                                break;
                          case 'ret':
                                tmp.text = "\n<" + art + ">" + tmp.text + "</" + art + ">\n";
                                break;
                          case 'lnk':
                                Eingabe = prompt("Die URL (Adresse) des Links:","http://");
                                if (Eingabe != "" && Eingabe != null) {
                                        tmp.text = ' <a href="' + Eingabe + '" target="_blank">' + tmp.text + '</a> ';
                                }
                                break;
                        default:
                                tmp.text = "<" + art + ">" + tmp.text + "</" + art + ">";
                                break;
                  }
          } else {
                  alternativ_auswahl(Feld,art,mode);
          }
        }
        return;
}

function alternativ_auswahl(Feld,art,mode) {
        switch(art) {
                case 'h1':
                case 'h2':
                case 'h3':
                        make_Hx(Feld,art);
                        break;
                case 'ol':
                case 'ul':
                        make_List(Feld,art);
                        break;
                case 'br':
                        undoFeldval = document.forms[myFormName].elements[Feld].value;
                        insertAtCaret (document.forms[myFormName].elements[Feld], '<br>\n');
//                        document.forms[myFormName].elements[Feld].value = document.forms[myFormName].elements[Feld].value + '<br>\n';
                        break;
                case 'p':
                        undoFeldval = document.forms[myFormName].elements[Feld].value;
                        insertAtCaret (document.forms[myFormName].elements[Feld], '<p>\n\n');
//                        document.forms[myFormName].elements[Feld].value = document.forms[myFormName].elements[Feld].value + '<p>\n\n';
                        break;
                case 'a':
                        insert_link(Feld,art);
                        break;
                default:
                        alert("Bitte selektieren Sie vor der Ausführung des Kommandos einen Textbereich!");
                        break;
                }
        document.forms[myFormName].elements[Feld].focus();
        return;
}

function my_paste(Feld) {
        if ((pasteFeld != '') && (Feld != "") && (ie)) {
        insertAtCaret (document.forms[myFormName].elements[Feld], pasteFeld);
        }
return;
}

function my_cut(Feld) {
        if ((Feld != "") && (ie)) {
          tmp = document.selection.createRange();
          if (tmp.text != "") {
                  undoFeldval = document.forms[myFormName].elements[Feld].value;
                  tmpFeld1 = document.forms[myFormName].elements[Feld].value;
                  pasteFeld = tmp.text;
                  tmp.text = '';
          }
        }
return;
}

function my_copy(Feld) {
        if ((Feld != "") && (ie)) {
          tmp = document.selection.createRange();
          if (tmp.text != "") {
                  undoFeldval = document.forms[myFormName].elements[Feld].value;
                  pasteFeld = tmp.text;
          }
        }
return;
}

function my_undo(Feld) {
        if(undoFeldval != "") {
                redoFeldval = document.forms[myFormName].elements[Feld].value;
                document.forms[myFormName].elements[Feld].value = undoFeldval;
        }
        return;
}

function my_redo(Feld) {
        if(redoFeldval != "") {
                undoFeldval = document.forms[myFormName].elements[Feld].value;
                document.forms[myFormName].elements[Feld].value = redoFeldval;
        }
        return;
}

function preview(Feld,form,name) {
        var        mywidth=700
        var        myheight=560
        if(!name) {
                name='dmerceFenster2'
        }

   par = '"toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=0,width=' + mywidth + ',height=' + myheight + '"'
//   newWin = window.open(myurl,myname,par)

        msg=open("",name,par);
        msg.document.write('<HTML><HEAD><link rel=stylesheet type="text/css" href="/docstyle.css">');
        msg.document.write('<TITLE>1Ci Preview-Help</TITLE></HEAD><BODY BGCOLOR="#FFFFFF">');
        msg.document.write('<FORM NAME="winForm"><font color=red><INPUT TYPE="BUTTON" NAME="ii" Value="Vorschaufenster schließen"  onClick="window.close()"></font></form><hr>');
        msg.document.write(myForm.elements[Feld].value);
        msg.document.write('</BODY></HTML>');
        msg.focus();
        msg.document.close();
        return;
}

// Teste auf weichen oder harten Zeilenumbruch und füge entsprechend ein.
function checkMods(evt,Feld) {
        k = window.event.keyCode;
        if (k == 13) { // ENTER ( and shift) key pressed
                if(window.event.shiftKey) {
                        insertAtCaret (document.forms[myFormName].elements[Feld], '<br>');
                } else {
                        insertAtCaret (document.forms[myFormName].elements[Feld], '<p>');
                }
        } else if ( (k == 32) && (window.event.shiftKey)) {  // Space AND Shift
                insertAtCaret (document.forms[myFormName].elements[Feld], ' &nbsp; ');
        }

    return false
}

function insert_link(Feld,test) {
        URL = prompt("Die URL (Adresse) des Links:","http://");
        if (URL != "" && URL != null) {
                Eingabe = prompt("Ihr Text im Link:","");
                if (Eingabe != ""&& Eingabe != null) {
                        undoFeldval = document.forms[myFormName].elements[Feld].value;
                        insertAtCaret (document.forms[myFormName].elements[Feld], ' <a href="' + URL + '" target="_blank">' + Eingabe + '</a> ')
                }
        }
        return;
}

function make_Hx(Feld,art) {
        Eingabe = prompt("Ihr Text für die Überschrift:","");
        if (Eingabe != "" && Eingabe != null) {
                undoFeldval = document.forms[myFormName].elements[Feld].value;
                insertAtCaret (document.forms[myFormName].elements[Feld], '\n<' + art + '>' + Eingabe + '</' + art + '>\n')
        }
        return;
}

function make_List(Feld,art) {
        var Count=0;
        var tmpTXT = "";
        Count = prompt("Anzahl der Listeneinträge:","");
        if (Count != 0 && Count != null) {
                undoFeldval = document.forms[myFormName].elements[Feld].value;
                tmpTXT =  '\n<' + art + '>\n';
                for(i = 1; i <= Count; i++) {
                        mytxt = i + ". Listeneintrag:";
                        Eingabe = prompt(mytxt,"");
                        if (Eingabe != "" && Eingabe != null) {
                                tmpTXT = tmpTXT + '   <li>' + Eingabe + '</li>\n';
                        }
                }
                tmpTXT = tmpTXT + '</' + art + '>\n';
                insertAtCaret (document.forms[myFormName].elements[Feld], tmpTXT);
        }
        return;
}

function storeCaret (textEl) {
 if (textEl.createTextRange)
   textEl.caretPos = document.selection.createRange().duplicate();
}

// insertAtCaret(this.form.aTextArea, 'insert this');"
function insertAtCaret (textEl, text) {
 if (textEl.createTextRange && textEl.caretPos) {
   var caretPos = textEl.caretPos;
   caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? text + ' ' : text;
 }
 else
   textEl.value  = text;
 textEl.focus();
 }
