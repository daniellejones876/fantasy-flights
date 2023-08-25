import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home-page"
export default class extends Controller {
  static targets = ["hyperplexed","intro"]
  static values = {title: String}
  connect() {

  }

  fire() {
    console.log(this.titleValue);
    let interval = null;
    let iterations = 0;
    clearInterval(interval);
    interval = setInterval(() => {
      const letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
      this.hyperplexedTarget.innerText = this.hyperplexedTarget.innerText.split("")
      .map((_letter,index) => {
        if(index < iterations) {
          return this.titleValue[index];
        }
        return letters[Math.floor(Math.random() * 20 )]
      })
        .join("");

      if(iterations >= this.titleValue.length){clearInterval(interval);}

      iterations +=1 / 3;

    },75);
  }

  reveal() {
    console.log(this.introTarget);
    this.introTarget.classList.toggle("d-none");
  }
}
