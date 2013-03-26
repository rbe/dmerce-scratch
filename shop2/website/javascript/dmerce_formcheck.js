// Formularprüfung (C) 2000 by 1Ci GmbH
// www.1ci.de 
// Author: Christian Rütgers
// Formularelemente, vorhandensein muessen
// 1. Feld Feldname
// 2. Feld Fehlermeldung,
// 3. Feld bei 0 Standardtext erzeugen, bei 1 Nur Text in 2. Feld ausgeben
// Groß/Kleinschreibung beachten!
// var formmust = new Array(
// 	"B2B", "B2B muß den Wert 0 oder 1 enthalten", 1, 
// 	"B2C", "B2B muß den Wert 0 oder 1 enthalten", 1, 
// 	"Bezeichnung", "Bezeichnung", 0,
// 	"ArtNr", "Artikelnummer", 0
// 	);

// Formularelemente, die sich gegenseitig bedingen. Wenn eines
// einen Inhalt hat, muss es das andere auch.
// 1. Feld Feldname von Feld 1
// 2. Feld Bezeichnung von Feld 1
// 3. Feld Feldname von Feld 2 
// 4. Feld Bezeichnung von Feld 2
// Groß/Kleinschreibung beachten!
// var formifthen = new Array(
// 	"PreisEKnetto", "Ek netto", "PreisEKmwst", "MWSt",
// 	"PreisVKnetto", "Vk netto", "PreisVKmwst", "MWSt"
// 	);

// var formcheckvalue = new Array(
//	"PreisEKnetto", "Ek netto", new Array('1','2','3')
// 	);

	
function chkFormular()
{
	exitcode = must_in_form();
	if(exitcode == false) return false;

	exitcode = must_selected();
	if(exitcode == false) return false;

	exitcode = checkvalue_form();
	if(exitcode == false) return false;

	exitcode = ifthen_in_form();
	if(exitcode == false) return false;
	
	return true;
} 

function checkvalue_form() {
	formcheckvalue=this.formcheckvalue;
	for(i=0; formcheckvalue.length-1 >= i ; ) {
		Feld = formcheckvalue[i];
		i++;
		Text = formcheckvalue[i];
		i++;
		Werte = formcheckvalue[i];
		i++;
		
		myelement=eval('document.myForm.'+Feld);
		
		// Ist eigentlich ein Wert gegeben?
		if(myelement.value == "") {
			errText="Bitte das Feld " + Text + " ausfuellen!";
			alert(errText);
			myelement.focus();
			return false;
		}

		var mylen = Werte.length-1;	

		// Fehlermeldung erstellen
		// Inhlalte richtig?
		werteText="";
		valCheck=0;
		for(i=0; mylen >= i ; ) {
			werteText = werteText + "\"" + Werte[i] + "\"  ";
			if(myelement.value == Werte[i++]) valCheck=1;
		}
	
		if(valCheck == 0) {
			alert("Kein korrekter Wert für das Feld " + Text + "\nMoegliche Werte sind: " + werteText);
			myelement.focus();
			return false;
		}
	}	
}

function ifthen_in_form() {
	formifthen=this.formifthen;
	for(i=0; formifthen.length-1 >= i ; ) {
		nixFeld1=0;
		nixFeld2=0;
		errText="";

		Feld1 = formifthen[i];
		i++;
		Feld1name = formifthen[i];
		i++;
		Feld2 = formifthen[i];
		i++;
		Feld2name = formifthen[i];
		i++;

		myelement1=eval('document.myForm.'+Feld1);
		myelement2=eval('document.myForm.'+Feld2);

		
		if(myelement1.value == "") nixFeld1=1;
		if(myelement2.value == "") nixFeld2=1; 

		if(nixFeld1 == 1 && nixFeld2 == 0) {
			errText = "Wenn " + Feld2name + " ausgefuellt ist, kann " + Feld1name +" nicht leer bleiben!";
			alert(errText);
			myelement1.focus();
			return false;
		}
		if(nixFeld1 == 0 && nixFeld2 == 1) {
			errText = "Wenn " + Feld1name + " ausgefuellt ist, kann " + Feld2name + " nicht leer bleiben!";
			alert(errText);
			myelement2.focus();
			return false;
		}
	}	 
}

function must_in_form() {
	formmust=this.formmust;
	for(i=0; formmust.length-1 >= i ; ) {
		Feld = formmust[i];
		i++;
		Text = formmust[i];
		i++;
		Mode = formmust[i];
		i++;
		
		myelement=eval('document.myForm.'+Feld);
		
		if(myelement.value == "") {
			if(Mode == 0 ) {
				errText="Bitte das Feld " + Text + " ausfuellen!";
			} else {
				errText=Text;
			}
			alert(errText);
			myelement.focus();
			return false;
		}
	}	 
}

function must_selected() {
	if(!this.selectmust) return;
	selectmust=this.selectmust;
	for(i=0; selectmust.length-1 >= i ; ) {
		check=false
		Feld = selectmust[i];
		i++;
		Text = selectmust[i];
		i++;
		Mode = selectmust[i];
		i++;
		
		myelement=eval('document.myForm.'+Feld);

		for(j=0; j < myelement.length;j++) {
			if(myelement.options[j].value != "" && myelement.options[j].selected == true) {
				check=true;
				}
		}
		if(check==false) {
			if(Mode == 0 ) {
				errText="Bitte das Feld " + Text + " ausfuellen!";
			} else {
				errText=Text;
			}
			alert(errText);
			myelement.focus();
			return false;
		}
	}	 
}

function checkval(Feld) {
	myelement=eval('document.myForm.'+Feld);
	
	if(myelement.value == "") {
		return false;
	}
	return true;
}

function get_radioval(Feld) {
	myelement=eval('document.myForm.'+Feld);
	
	for(j=0; j < myelement.length;j++) {
		if(myelement[j].value != "" && myelement[j].checked == true) {
			return myelement[j].value
			}
	}
	return -1
}

function do_kp(myfield) {
	myelem=eval('document.myForm.'+myfield);

	myelem.value = myelem.value.replace(/,/,'.');
	
	
	if(isNaN(myelem.value) == true) {
		alert("Keine Zahl!");
		myelem.focus();
		myelem.value = '';
		return false;
		}
}
