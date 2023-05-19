const openModalButtom = document.querySelectorAll("#open_modal");
const closeModalButtom = document.querySelector("#close_modal");
const modal = document.querySelector("#modal");
const fade = document.querySelector("#fade");

const toggleModal = () => {
    modal.classList.toggle("hide");
    fade.classList.toggle("hide");
}

openModalButtom.forEach((element) => 
{
    element.addEventListener("click", () => toggleModal());
})

closeModalButtom.addEventListener("click", () => toggleModal());
fade.addEventListener("click", () => toggleModal());