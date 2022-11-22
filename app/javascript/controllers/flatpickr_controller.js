import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startTime", "endTime" ]
  connect() {
    console.log("nelo");
    flatpickr(this.startTimeTarget, {
              enableTime: true,
              plugins: [new rangePlugin({ input: "#end_time"})]})
    // flatpickr(this.endTimeTarget, {})

  }
}
