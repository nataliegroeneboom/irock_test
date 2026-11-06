import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="validation"
export default class extends Controller {
 static values = { url: String }

  async validate() {
    const formData = new FormData(this.element)
    console.log(this.urlValue)
    const response = await fetch(this.urlValue, {
      method: "POST",
      headers: {
        "X-CSRF-Token": document.querySelector(
          'meta[name="csrf-token"]'
        ).content,
        "Accept": "application/json"
      },
      body: formData
    })
    // const data3 = await response.json()
    // console.log(data3)
    if (response.ok) return

    const data = await response.json()
    console.log(data.join(", "))

    this.element.querySelectorAll("[data-error-for]").forEach((element) => {
      const field = element.dataset.errorFor
      element.textContent = data.join(", ") || ""
    })
  }
}
