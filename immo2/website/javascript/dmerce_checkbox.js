// dmerce admin-Funktionen
// (C) 2000 by 1Ci Gmbh (www.1Ci.de)

function kreuzen_find(text,mod) {
	// Alle Checkboxen, in denen text vorkommt, anschalten
	SucheA = new RegExp(text);

	for(i=0; i < document.myForm.length; i++) {
		res1 = SucheA.test(document.myForm.elements[i].name);
		if( res1 == true && document.myForm.elements[i].type == 'checkbox') {
			document.myForm.elements[i].checked = mod;
		}
	}
}

function kreuzen_find_toggle(text) {
	// Alle Checkboxen, in denen text vorkommt, anschalten
	var an=0;
	var aus=0;
	var mod=0;
	SucheA = new RegExp(text);

	for(i=0; i < document.myForm.length; i++) {
		res1 = SucheA.test(document.myForm.elements[i].name);
		if( res1 == true && document.myForm.elements[i].type == 'checkbox') {
			if (document.myForm.elements[i].checked == 0) aus++;
			else an++;
		}
	}
	if(an <= aus) mod=1;
	kreuzen_find(text,mod);
}

function anauskreuzen(mod) {
	// mod=1 alle Checkboxen im Formular an. Bei mod=0 alle aus
	for(i=0; i < document.myForm.length; i++) {
		if(document.myForm.elements[i].type == 'checkbox') {
			document.myForm.elements[i].checked = mod;
		}
	}
}

function toggle_kreuzen() {
	// Wenn mehr aus sind, anschalten. Wenn mehr an sind, alles ausschalten
	var an=0;
	var aus=0;
	var mod=0;
	for(i=0; i < document.myForm.length; i++) {
		if(document.myForm.elements[i].type == 'checkbox') {
			if (document.myForm.elements[i].checked == 0) aus++;
			else an++;
		}
	}
	if(an <= aus) mod=1;
	anauskreuzen(mod);
}
