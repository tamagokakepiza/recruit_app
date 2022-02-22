window.addEventListener('turbolinks:load', () => {

  const corporateEditButton = document.getElementById("js-edit-corporate-btn");
  corporateEditButton.addEventListener("click", () => {
    var corporateLabelArea = document.getElementsByClassName("corporate-data")
    var corporateTextArea = document.getElementsByClassName("corporate-text")
    const corporateButton = document.getElementById("js-corporate-button")
    const corporateFormButton = document.getElementById("button-box")
    for(let i = 0; i < 14; i++) {
      corporateFormButton.style.display = "none";
      corporateLabelArea[i].style.display = "none";
      corporateTextArea[i].style.display = "block";
      corporateButton.style.display = "block";
    }
  });

  const corporateCancelButton = document.getElementById("cancel-id");
  corporateCancelButton.addEventListener("click", () => {
    var corporateLabelArea = document.getElementsByClassName("corporate-data")
    var corporateTextArea = document.getElementsByClassName("corporate-text")
    const corporateButton = document.getElementById("js-corporate-button")
    const corporateFormButton = document.getElementById("button-box")
    const nameError = document.getElementById("name-error-message")
    const industryError = document.getElementById("industry-error-message")
    for(let i = 0; i < 14; i++) {
      corporateFormButton.style.display = "block";
      corporateLabelArea[i].style.display = "block";
      corporateTextArea[i].style.display = "none";
    }
    corporateButton.style.display = "none";
    nameError.style.display = "none";
    industryError.style.display = "none";
  });

  const corporateSaveButton = document.getElementById("save-id");
  corporateSaveButton.addEventListener("click", () => {
    var corporateLabelArea = document.getElementsByClassName("corporate-data")
    var corporateTextArea = document.getElementsByClassName("corporate-text")
    const corporateButton = document.getElementById("js-corporate-button")
    const corporateFormButton = document.getElementById("button-box")
    const corporateId = document.getElementById("js-corporate-id")
    const nameError = document.getElementById("name-error-message")
    const industryError = document.getElementById("industry-error-message")
    if (corporateTextArea[0].value == '' && corporateTextArea[1].value == '') {
      nameError.style.display = "block";
      industryError.style.display = "block";
      return
    } else if (corporateTextArea[0].value == '') {
      nameError.style.display = "block";
      industryError.style.display = "none";
      return
    } else if (corporateTextArea[1].value == '') {
      industryError.style.display = "block";
      nameError.style.display = "none";
      return
    }
    for(let i = 0; i < 14; i++) {
      var corporateText = new FormData();
      corporateText.append("@corporate.name", corporateTextArea[i].value);
      var request = new XMLHttpRequest();
      request.open("PATCH", "/corporates/"+corporateId.value, true);
      request.send(corporateText);
      corporateFormButton.style.display = "block";
      corporateLabelArea[i].style.display = "block";
      corporateTextArea[i].style.display = "none";
      corporateButton.style.display = "none";
    }
    
  });
});