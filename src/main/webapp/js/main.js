// Cometario de lina
/*
Comentario de bloque
*/

/**
 * Comentario de bloque para documentar
 * 
 */

// alert('Funciona'); //obsoleto

/*
console.trace('Esto es una traza en el log');

console.info('Para informar sobre cosas');
console.log('Console . log');

var a = 2;

console.debug('la variable a vale = ' + a);
*/

// console.warn('Houston tenemos un problema');

// console.error('Falla la conexion con el servidor rest')

/*
Boton click y sacamos de un array a todos los alumnos random

*/

function buscarVoluntario() {
    console.trace('click');

    var nombreEl = document.getElementById('nombre');
    var nombre = nombreEl.innerHTML;
    console.log(nombre);
    nombreEl.innerHTML = "ANDER";

    var arrayAlumnos = [
        'Endika',
        'Iñigo',
        'Kiryl',
        'Juan Carlos',
        'Maria',
        'Alejandro',
        'Ana',
        'Cristian',
        'Erlantz',
        'Raúl',
        'Joseba',
        'Mikel',
    ];

    var numeroAleatorio = Math.floor(Math.random() * arrayAlumnos.length);
    //console.log(numeroAleatorio);

    nombreEl.innerHTML = arrayAlumnos[numeroAleatorio];
    var tablaEl = document.getElementById('Tabla');

    
}

// Top menu function (para añadirle o quitarle al top nav bar la clase responsive)
function myFunction() {
	  var x = document.getElementById("myTopnav");
	  if (x.className === "topnav") {
	    x.className += " responsive";
	  } else {
	    x.className = "topnav";
	  }
	}


// Nuestro script para seleccionar la tabla y ejecutar el plugin
$(document).ready(function() { // Esperar que este todo el DOM cargado y listo.
	// $('#example') == document.getElementById('example');
	$('.tabla').DataTable({
		paging: false,
		ordering: false,
		responsive: true,
		select : {
			style: 'os',
			items: 'cell'
		},
		columnDefs: [
			{
				targets: [0,1],
				className: 'dt-body-center'
			}
		],
		language: {
		    "sProcessing":     "Procesando...",
            "sLengthMenu":     "Mostrar _MENU_ registros",
            "sZeroRecords":    "No se encontraron resultados",
            "sEmptyTable":     "Ningún dato disponible en esta tabla =(",
            "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
            "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
            "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
            "sInfoPostFix":    "",
            "sSearch":         "Buscar:",
            "sUrl":            "",
            "sInfoThousands":  ",",
            "sLoadingRecords": "Cargando...",
            "oPaginate": {
                "sFirst":    "Primero",
                "sLast":     "Último",
                "sNext":     "Siguiente",
                "sPrevious": "Anterior"
            },
            "oAria": {
                "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                "sSortDescending": ": Activar para ordenar la columna de manera descendente"
            },
            "buttons": {
                "copy": "Copiar",
                "colvis": "Visibilidad"
            }
		}
	})
} );
