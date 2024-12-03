// Guardar tareas al enviar el formulario
const taskForm = document.querySelector('#taskForm');
const taskList = JSON.parse(localStorage.getItem('taskList')) || [];

if (taskForm) {
    taskForm.addEventListener('submit', event => {
        event.preventDefault();

        // Guardar tarea
        if (event.submitter.id === "save") {
            const task = {
                title: event.target.title.value,
                description: event.target.description.value,
                categoria: event.target.categoria.value,
                dueDate: event.target.dueDate.value,
                category: event.target.category.value,
                category_description: event.target.category.options[event.target.category.selectedIndex].text,
                status: "active"
            };

            taskList.push(task);
            localStorage.setItem('taskList', JSON.stringify(taskList));
            taskForm.reset();
        }
    });
}
