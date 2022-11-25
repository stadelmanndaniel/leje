import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startTime", "endTime" ]
  connect() {
    const unavailable = JSON.parse(document.getElementById("unavailable").getAttribute("data-dates"))
    flatpickr(this.startTimeTarget, {
              enableTime: false,
              dateFormat: "Y-m-d",
              disable: unavailable,
              // minDate: new Date(),
              plugins: [new rangePlugin({ input: "#end_time"})]})
    // flatpickr(this.endTimeTarget, {})
  }
}
