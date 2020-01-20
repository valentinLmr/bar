

const hidestartDiv = (currentTarget) => {
  const startDiv = document.querySelector('.start');
  const drinksCategoryDiv = document.querySelector('.drinks_category');
  startDiv.classList.toggle("hidden")
  drinksCategoryDiv.classList.toggle("hidden")
}




const showSoft = (currentTarget) => {
  const drinksCategoryDiv = document.querySelector('.drinks_category');
  drinksCategoryDiv.classList.toggle("hidden")
}


// const addId = (id) => {
//   const hashDrinks = document.getElementById
// }

const allSoft = document.querySelectorAll(".Alldrinks")
allSoft.forEach((softs)=>{
  softs.addEventListener("click" ,(event) =>{
    console.log(event.currentTarget)
  })
})

// const html = document.getElementById("appet")
// console.log(html)
// html.value += "toast"





const selectdrinks = () => {
  const soft = document.getElementById("soft")
  const alcool = document.getElementById("alcool")
  const hotDrinks = document.getElementById("hot_drinks")

  soft.addEventListener("click" , (event) =>
    showSoft(event.currentTarget)
  );
}






const selectSetOfDiner = () => {
  const validSetOfDiner = document.getElementById("button_set_of_diner");

  validSetOfDiner.addEventListener("click", (event) =>
    hideDiv(event.currentTarget)
  );
}

export { selectSetOfDiner }
