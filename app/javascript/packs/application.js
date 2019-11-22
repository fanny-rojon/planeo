import "bootstrap";
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';
import { mapboxAddressValue } from '../plugins/mapbox_address_value';
import { selectDates } from '../plugins/selecting_dates';
import { setUserPreview } from '../plugins/user_uploader';
import { setGroupPreview } from '../plugins/group_uploader';
import { setEventPreview } from '../plugins/event_uploader';

const signUpPage = document.getElementById("registrations/new")
const newGroupPage = document.getElementById("groups/new")
const newEventPage = document.getElementById("events/create")
const showEventPage = document.getElementById("events/show")


if (newEventPage) {
  initMapbox();
  mapboxAddressValue();
  selectDates();
  setEventPreview();
}

if (editEventPage) {
  initMapbox();
  mapboxAddressValue();
  setEventPreview();
}

if (showEventPage) {
  initMapbox();
}

if (signUpPage) {
  setUserPreview();
}

if (newGroupPage) {
  setGroupPreview();
}

