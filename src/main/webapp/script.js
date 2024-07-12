function llamarAPI() {
    fetch('/Movies_CodoACodo/peliculas')
            .then(response => response.json())
            .then(peliculas => dibujarDatos(peliculas))
}

function Peliculas(pelicula){
    return `
      <div class="col-12 col-sm-6 col-md-4 col-lg-3 mb-4">
        <div class="card h-100" >
          <img src="img/${pelicula.imagen}" class="card-img-top" alt="${pelicula.titulo}">
          <div class="card-body d-flex flex-column">
            <h5 class="card-title">${pelicula.titulo}</h5>
            <p class="card-text flex-grow-1">${pelicula.sinopsis}</p>
            <p class="card-text mt-auto"><small class="text-muted">Lenguaje: ${pelicula.lenguaje}</small></p>
          </div>
        </div>
      </div>
    `;
}

function dibujarDatos (peliculas){
    const filas = peliculas.map(pelicula => Peliculas(pelicula));
    document.querySelector('#peliculas').innerHTML = filas.join('');
}

llamarAPI();



<!-- BUSCADOR -->

// function buscarPelicula(busqueda) {
//   return fetch('/moviesSimple/peliculas')
//     .then(response => response.json())
//     .then(peliculas => {
//       // Filtrar las películas que coinciden con la búsqueda
//       return peliculas.filter(pelicula =>
//         pelicula.titulo.toLowerCase().includes(busqueda.toLowerCase())
//       );
//     })
// }

<!--  USO LA FUNCION -->

function realizarBusqueda(terminoBusqueda) {
  buscarPelicula(terminoBusqueda)
     .then(resultados => {
       console.log(resultados);
      // Aquí puedes hacer lo que necesites con los resultados
     })

 }

// // Ejemplo de cómo llamar a la función
// realizarBusqueda("El Padrino");

// ----------------------------------------------------------------------------------------

<!-- FUNCION PARA BUSCAR PELICULAS -->

function buscarPelicula(busqueda) {
  return fetch('/Movies_CodoACodo/peliculas')
    .then(response => response.json())
    .then(peliculas => { 
      return peliculas.filter(pelicula =>
        pelicula.titulo.toLowerCase().includes(busqueda.toLowerCase())
      );
    });
}

//filter crea un nuevo array con todos los elementos que pasen una función de prueba especificada.
//includes determina si un array contiene un elemento específico


<!-- FUNCION QUE ME RETORNA LOS RESULTADOS -- >

function PeliculaResultado(pelicula) {
  return `
  <li class="list-group-item">
  <div class="d-flex">
  <img src="img/${pelicula.imagen}" class="img-fluid rounded" alt="${pelicula.titulo}" style="width: 100px; height: 150px; object-fit: cover;">
  <div class="ms-3">
  <h5 class="mb-1">${pelicula.titulo}</h5>
  <p class="mb-1">${pelicula.sinopsis}</p>
  <small class="text-muted">Lenguaje: ${pelicula.lenguaje}</small>
  </div>
  </div>
  </li>
  `;
}

<!-- FUNCION PARA MOSTRAR RESULTADOS EN MODAL -->

function mostrarResultadosEnModal(resultados) {
  if (resultados.length === 0) {
    document.getElementById('resultadosModalBody').innerHTML = '<li class="list-group-item">No se encontraron resultados.</li>';
  } else {
    const modalContent = resultados.map(pelicula => PeliculaResultado(pelicula)).join('');
    document.getElementById('resultadosModalBody').innerHTML = modalContent;
  }
  
  const resultadosModal = new bootstrap.Modal(document.getElementById('resultadosModal'));
  resultadosModal.show();
}


<!-- FUNCION PARA REALIZAR BUSQUEDA -->

function realizarBusqueda() {
  const terminoBusqueda = document.getElementById('inputBuscar').value;
  buscarPelicula(terminoBusqueda)
    .then(resultados => {
      mostrarResultadosEnModal(resultados);
    });
}

//Agregar event listener al botón de búsqueda
document.getElementById('searchButton').addEventListener('click', realizarBusqueda);

// Agregar event listener para la tecla "Enter" en el campo de búsqueda
document.getElementById('inputBuscar').addEventListener('keypress', function(e) {
  if (e.key === 'Enter') {
    realizarBusqueda();
  }
});



