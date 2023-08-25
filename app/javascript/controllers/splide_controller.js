import { Controller } from "@hotwired/stimulus";
import Splide from '@splidejs/splide';
import { AutoScroll } from '@splidejs/splide-extension-auto-scroll';

// Connects to data-controller="splide"
export default class extends Controller {
  static targets = ["landing"]
  connect() {
    const splide = new Splide(this.landingTarget, {
      autoplay: true,
      type: 'loop',
      perPage: 2,
      pauseOnHover: false,
      // easing: string = ease,
      // interval: 2000,
      autoScroll: {
        speed: .5,
      },
    });
    splide.mount();
  }
}
