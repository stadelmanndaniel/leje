import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
  }

  active(event) {
    event.currentTarget.classList.add("active")
  }
}
