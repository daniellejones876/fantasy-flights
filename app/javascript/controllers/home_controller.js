import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  console.log("hello controller");
  static values = {
    title: String
  }
  connect() {
    const letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    let interval = null;
    document.querySelector("h1").onmouseover = event => {
      let iterations = 0;
      clearInterval(interval);
      interval = setInterval(() => {
      event.target.innerText = event.target.innerText.split("")
      .map((letter,index) => {
        if(index < iterations) {
          return event.target.dataset.value[index];
        }

        return letters[Math.floor(random() * 26 )]
      })
        .join("");

      if(iterations >= event.target.dataset.value.length){clearInterval(interval);
      }

      iterations +=1 / 3;

      },30);
    }
  }
}
