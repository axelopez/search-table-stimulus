import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filters"
export default class extends Controller {

   connect() {
    console.log("Connected to filters controller")
  }
 
    submit(event) {
      this.element.requestSubmit()
    
  }
}
