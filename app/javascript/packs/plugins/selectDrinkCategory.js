
const displaySoftsDrinks = (currentTarget) =>{
  const hideDrinksCategory = document.querySelector(".drinks_category");
  const allSoftDisplay = document.querySelector(".all_softs");
  console.log(hideDrinksCategory);
  hideDrinksCategory.classList.toggle("hidden");
  allSoftDisplay.classList.toggle("hidden");
}



const selectDrinks = () => {
  const selectSofts = document.getElementById("softs");
  const selectAlcools = document.getElementById("alcools");
  const selectHotdrinks = document.getElementById("hot_drinks");

  selectSofts.addEventListener("click", (event) =>
   displaySoftsDrinks(event.currentTarget)
  );
}
export { selectDrinks }
