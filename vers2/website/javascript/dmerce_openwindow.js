// dmerce fenster-Funktionen
// (C) 2000 by 1Ci Gmbh (www.1Ci.de)

function NeuFenster(myurl,mywidth,myheight,myname) {
	if(myurl == '') {
   		alert('Keine URL angegeben, kann neues Fenster nicht oeffnen!')
		return false;
	}

	if(!mywidth) {
		mywidth=300
	}
	if(!myheight) {
		myheight=300
	}
	if(!myname) {
		myname='dmerceFenster2'
	}
	
   par = '"toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=0,width=' + mywidth + ',height=' + myheight + '"'
   newWin = window.open(myurl,myname,par)
   newWin.focus()
}

function NeuScrollFenster(myurl,mywidth,myheight,myname) {
	if(myurl == '') {
   		alert('Keine URL angegeben, kann neues Fenster nicht oeffnen!')
		return false;
	}

	if(!mywidth) {
		mywidth=300
	}
	if(!myheight) {
		myheight=300
	}
	if(!myname) {
		myname='dmerceFenster2s'
	}
	
   par = '"toolbar=no,scrollbars=yes,location=no,directories=no,status=no,menubar=no,resizable=yes,copyhistory=0,width=' + mywidth + ',height=' + myheight + '"'
   newWin = window.open(myurl,myname,par)
   newWin.focus()
}

