import { FLAT_PICKR_CONFIG } from 'flatpickr';
import moment from 'moment';

const selectDates = () => {
  const button = document.getElementById('add-date-link');

  button.addEventListener('click', (event) => {
    event.preventDefault();
    const div = button.previousElementSibling;
    const newDiv = div.cloneNode(true);
    const newInput = newDiv.children[0];
    const oldName = newInput.getAttribute('name');
    const oldIndex = parseInt(oldName.match(/\d+/)[0]);

    newInput.setAttribute('name', oldName.replace(/\d+/, oldIndex + 1));
    newInput.value = moment(newInput.value).add(1, 'day').format('YYYY-MM-DD');
    button.parentNode.insertBefore(newDiv, button);

    flatpickr(newInput, FLAT_PICKR_CONFIG);

    return false;
  });

};


export { selectDates };
