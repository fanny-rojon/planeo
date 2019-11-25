const disableCheckBox = () => {
  const checkboxes = document.querySelectorAll('.dates .cbox');
  const votebutton = document.getElementById('votebutton');

  votebutton.addEventListener("click", () => {
    checkboxes.forEach((box) => {
      if (box.disabled === true ) {
        box.disabled = false;
        votebutton.innerText = "Confirm";
      } else {
        box.disabled = true;
        votebutton.innerText = "Vote";
      }
    })
  })
}

export { disableCheckBox };
