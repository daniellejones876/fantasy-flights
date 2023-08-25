import { Controller } from "@hotwired/stimulus";
import Splide from '@splidejs/splide';

// Connects to data-controller="splide"
export default class extends Controller {
  static targets = ["landing"]
  connect() {
    const splide = new Splide(this.landingTarget, {
      type: 'loop',
      autoplay: true,
      perPage: 9,
      pauseOnHover: true,
      interval: 2000,
    });

    splide.mount();
  }
}
