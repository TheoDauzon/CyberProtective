// Fonction permettant de vérifier si l'adresse email est correcte
// La règle utilisée ici dans l'expression régulière est normée
// Paramètre : emailAVerifier chaine de caractères contenant l'adresse email à valider
// Sortie : la fonction renvoie vraie si l'adresse est correctre, faux sinon
function validationEmail(emailAVerifier) {
	var expressionReguliere = /^(([^<>()[]\.,;:s@]+(.[^<>()[]\.,;:s@]+)*)|(.+))@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}])|(([a-zA-Z-0-9]+.)+[a-zA-Z]{2,}))$/;
	if (expressionReguliere.test(emailAVerifier))
	{ 
		return(true);
	}
	return(false);
}

// Fonction permettant de valider complètement le formulaire d'inscription au moment du submit
// Si au moins un des champs n'est pas correctement renseigné, le formulaire n'est pas soumis
function validationInscription() {
	// Récuparation de l'objet formulaire
	var formInsc  = document.getElementById('formInscription');
	// Ajout d'une écoute sur la fonction submit du formulaire
	// La fonction sera interrompue et la fonction de vérification sera jouée 
	formInsc.addEventListener("submit", function (event) {
		var inscriptionValide = true;
		// On efface les messages d'erreurs
		document.getElementById("formNomEntrepriseError").className="";		
		document.getElementById("formPrenomError").className="";
		document.getElementById("formNomError").className="";
		document.getElementById("formLoginError").className="";
		document.getElementById("formMdpError").className = "";

		// On vérifie qu'un nom d'entreprise a été saisi
		if (document.getElementById("formNomEntreprise").value=="")
		{
			errorHTML="Vous devez rentrer le nom de votre entreprise pour vous inscrire !";
			document.getElementById("formNomEntreprise").innerHTML = errorHTML	
			document.getElementById("formNomEntreprise").className="formErrorMsg";
			inscriptionValide=false;
		}
		
		// On vérifie qu'un prénom a été saisi
		if (document.getElementById("formPrenom").value=="")
		{
			errorHTML="Vous devez rentrer un prénom pour vous inscrire !";
			document.getElementById("formPrenom").innerHTML = errorHTML	
			document.getElementById("formPrenom").className="formErrorMsg";
			inscriptionValide=false;
		}
		
		// On vérifie qu'un nom a été saisi
		if (document.getElementById("formNom").value=="")
		{
			errorHTML="Vous devez rentrer un nom pour vous inscrire !";
			document.getElementById("formNom").innerHTML = errorHTML	
			document.getElementById("formNom").className="formErrorMsg";
			inscriptionValide=false;
		}

		// On vérifie que le login est valide en appelant la fonction ValidationEmail
	  	if (!validationEmail(document.getElementById("formLogin").value))
		{
			errorHTML="L'adresse email n'est pas valide !";
			document.getElementById("formLoginError").innerHTML = errorHTML
			document.getElementById("formLoginError").className="formErrorMsg";
			inscriptionValide=false;
		}
		// On vérifie que le mot de passe est conforme
		var mdp = document.getElementById("formMdp").value; 
		if (!mdp.match( /[0-9]/g) ||                // Il y a un chiffre
				!mdp.match( /[A-Z]/g) ||            // Il y a une majuscule
				!mdp.match(/[a-z]/g) ||             // il y a une minuscule 
				!mdp.match( /[^a-zA-Z\d]/g))        // il y a un caractère spécial
		{
			errorHTML="Le mot de passe doit contenir :<br> Une majuscule, une minuscule, un chiffre, un caractère spécial !";
			document.getElementById("formMdpError").innerHTML = errorHTML
			document.getElementById("formMdpError").className="formErrorMsg";
			inscriptionValide=false;
		}
		// Si un des champs n'est pas valide on prévient la soumission du formulaire
		// On reste sur la page d'accueil
		if (!inscriptionValide) {
			event.preventDefault();
		}
	}, false);
}

// Fonction permettant de valider complètement le formulaire de connexion au moment du submit
// Si au moins un des champs n'est pas correctement renseigné, le formulaire n'est pas soumis
function validationConnexion() {
	var formInsc  = document.getElementById('formConnexion');
	// on ajoute une écoute sur l'évennement submit du formulaire
	formInsc.addEventListener("submit", function (event) {
		var inscriptionValide = true;
		// On vide les messages d'erreurs
		document.getElementById("form1LoginError").className="";
		document.getElementById("form1MdpError").className = "";
		document.getElementById("form1LoginError").innerHTML="";
		document.getElementById("form1MdpError").innerHTML = "";

		// On vérifie l'adresse email avec la fonction validationEmail
	  	if (!validationEmail(document.getElementById("form1Login").value))
		{
			errorHTML="L'adresse email n'est pas valide !";
			document.getElementById("form1LoginError").innerHTML = errorHTML
			document.getElementById("form1LoginError").className="formErrorMsg";
			inscriptionValide=false;
		}
		// A On vérifie si un mot de passe est saisi
		if (document.getElementById("form1Mdp").value=="" )
		{
			errorHTML="Vous devez saisir un mot de passe !";
			document.getElementById("form1MdpError").innerHTML = errorHTML
			document.getElementById("form1MdpError").className="formErrorMsg";
			inscriptionValide=false;
		}
		// Si un des champs n'est pas valide on prévient la soumission du formulaire
		// On reste sur la page d'accueil
		if (!inscriptionValide) {
			event.preventDefault();
		}
	}, false);
}













$(document).ready(function () {
    $(".menu-toggle").on("click", function () {
        $(".nav").toggleClass("showing");
        $(".nav ul").toggleClass("showing");
    });

    $(".post-wrapper").slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        nextArrow: $(".next"),
        prevArrow: $(".prev"),
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true,
                    dots: true
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
            // You can unslick at a given breakpoint now by adding:
            // settings: "unslick"
            // instead of a settings object
        ]
    });
});

ClassicEditor.create(document.querySelector("#body"), {
    toolbar: [
        "heading",
        "|",
        "bold",
        "italic",
        "link",
        "bulletedList",
        "numberedList",
        "blockQuote"
    ],
    heading: {
        options: [
            { model: "paragraph", title: "Paragraph", class: "ck-heading_paragraph" },
            {
                model: "heading1",
                view: "h1",
                title: "Heading 1",
                class: "ck-heading_heading1"
            },
            {
                model: "heading2",
                view: "h2",
                title: "Heading 2",
                class: "ck-heading_heading2"
            }
        ]
    }
}).catch(error => {
    console.log(error);
});
