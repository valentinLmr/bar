


const changeState = () =>{
  const formChangeState = document.querySelectorAll(".form-state-drink")
  formChangeState.forEach((form) => {
    const btnState = form.querySelector(".input-change-state")
    const btnStateSubmit = form.querySelector(".btn-submit-change-state")
    btnState.addEventListener("click", (event) => {
      console.log
      btnStateSubmit.click()
    });
  });
}

export { changeState }
