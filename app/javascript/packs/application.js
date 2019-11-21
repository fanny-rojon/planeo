import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import { initMapbox } from '../plugins/init_mapbox';
import { mapboxAddressValue } from '../plugins/mapbox_address_value';
import { setupPreview } from '../plugins/user_uploader';
import { setPreview } from '../plugins/group_uploader';

const signUpPage = document.getElementById("devise/registrations/new")
const newGroupPage = document.getElementById("groups/new")
const newEventPage = document.getElementById("events/create")
const showEventPage = document.getElementById("events/show")

if (newEventPage) {
  initMapbox();
  mapboxAddressValue();
}

if (showEventPage) {
  initMapbox();
}

if (signUpPage) {
  setupPreview();
}

if (newGroupPage) {
  setPreview();
}

