//alert("El archivo JavaScript se cargó correctamente.");
//// script.js
//document.getElementById("miBoton").addEventListener("click", function () {
//    alert("¡Haz hecho clic en el botón!");
//});
const stars = document.querySelectorAll('.star');
const ratingValue = document.getElementById('rating-value');

stars.forEach(function (star) {
    star.addEventListener('click', function () {
        const value = parseInt(star.getAttribute('data-value'));
        ratingValue.innerHTML = 'Calificación: ' + value;
        stars.forEach(function (s, i) {
            if (i < value) {
                s.style.color = 'gold';
            } else {
                s.style.color = '#bbb';
            }
        });
    });
});