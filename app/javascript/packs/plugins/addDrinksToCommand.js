
const addDrinksToOrder = (id) => {
  const addNewdish = document.getElementById("dishescommand_appetizer_id");
  addNewdish.value = id
  document.querySelector('.submit_order_dish').click()

}

const copyDataId = () => {
  const selectedSofts = document.querySelectorAll(".soft")
  selectedSofts.forEach((soft) => {
    soft.addEventListener("click", (event) =>
      addDrinksToOrder(event.currentTarget.dataset.id)
    );
  });
}

export { copyDataId }
