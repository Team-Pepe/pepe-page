let currentIndex = 0;
const slides = document.querySelectorAll('.carousel-item');
const dots = document.querySelectorAll('.dot');

function showSlide(index) {
    // Asegura que el índice esté dentro de los límites
    if (index >= slides.length) index = 0;
    if (index < 0) index = slides.length - 1;

    // Actualiza la clase activa de las diapositivas
    slides.forEach((slide, i) => {
        slide.classList.toggle('active', i === index);
    });

    // Actualiza la clase activa de los puntos
    dots.forEach((dot, i) => {
        dot.classList.toggle('active', i === index);
    });

    currentIndex = index;
}

function nextSlide() {
    showSlide(currentIndex + 1);
}

function prevSlide() {
    showSlide(currentIndex - 1);
}

function currentSlide(index) {
    showSlide(index);
}

// Rotar automáticamente cada 3 segundos
setInterval(() => {
    nextSlide();
}, 3000);

