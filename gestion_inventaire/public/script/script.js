document.addEventListener('DOMContentLoaded', function () {
    // Animation au survol des cartes
    const cards = document.querySelectorAll('.card');
    cards.forEach(card => {
        const icon = card.querySelector('i');
        if (icon) {
            card.addEventListener('mouseenter', () => {
                icon.classList.add('fa-bounce');
            });
            card.addEventListener('mouseleave', () => {
                icon.classList.remove('fa-bounce');
            });
        }
    });

    // Validation en temps réel pour les formulaires
    const forms = document.querySelectorAll('form');
    forms.forEach(form => {
        const inputs = form.querySelectorAll('input, select, textarea');
        inputs.forEach(input => {
            input.addEventListener('input', () => {
                if (input.value.trim() === '' && input.hasAttribute('required')) {
                    input.classList.add('border-danger');
                } else {
                    input.classList.remove('border-danger');
                }
            });
        });
    });
});