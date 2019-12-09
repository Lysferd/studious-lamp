require("jquery")
console.log('visitor.js loaded')

window.addVisitorField = function () {
  console.log('addVisitorField() called')
  var date = new Date();
  var mSec = date.getTime();

  // Create the id and name of each field to be created.
  idAttributName =
    "schedule_visitors_attributes_0_name".replace("0", mSec);
  nameAttributName =
    "schedule[visitors_attributes][0][name]".replace("0", mSec);
  idAttributCredential =
    "schedule_visitors_attributes_0_credential".replace("0", mSec);
  nameAttributCredential =
    "schedule[visitors_attributes][0][credential]".replace("0", mSec);
  idAttributEmail =
    "schedule_visitors_attributes_0_email".replace("0", mSec);
  nameAttributEmail =
    "schedule[visitors_attributes][0][email]".replace("0", mSec);

  // Create the field(Name)
  var nameField = document.createElement("div");
  nameField.className = "field"

  // Create and append the label(Name)
  var labelName = document.createElement("label");
  labelName.setAttribute("for", idAttributName);
  var labelNameText = document.createTextNode("Nome");
  labelName.appendChild(labelNameText);
  nameField.appendChild(labelName);

  // Create and append the Input(Name)
  var inputName = document.createElement("INPUT");
  inputName.setAttribute("type", "text");
  inputName.setAttribute("id", idAttributName);
  inputName.setAttribute("name", nameAttributName);
  nameField.appendChild(inputName);


  // Create the field(Credential)
  var credentialField = document.createElement("div");
  credentialField.className = "field"

  // Create and append the label(Credential)
  var labelName = document.createElement("label");
  labelName.setAttribute("for", idAttributCredential);
  var labelNameText = document.createTextNode("Credencial");
  labelName.appendChild(labelNameText);
  credentialField.appendChild(labelName);

  // Create and append the Input(Credential)
  var inputName = document.createElement("INPUT");
  inputName.setAttribute("type", "text");
  inputName.setAttribute("id", idAttributCredential);
  inputName.setAttribute("name", nameAttributCredential);
  credentialField.appendChild(inputName);


  // Create the field(Email)
  var emailField = document.createElement("div");
  emailField.className = "field"

  // Create and append the label(Email)
  var labelName = document.createElement("label");
  labelName.setAttribute("for", idAttributEmail);
  var labelNameText = document.createTextNode("Email");
  labelName.appendChild(labelNameText);
  emailField.appendChild(labelName);

  // Create and append the Input(Email)
  var inputName = document.createElement("INPUT");
  inputName.setAttribute("type", "text");
  inputName.setAttribute("id", idAttributEmail);
  inputName.setAttribute("name", nameAttributEmail);
  emailField.appendChild(inputName);


  var visitorContainer = document.createElement("div");
  visitorContainer.className = "visitorContainer"
  visitorContainer.appendChild(nameField);
  visitorContainer.appendChild(credentialField);
  visitorContainer.appendChild(emailField);
  

  // Return the fields to the list.
  //document.getElementById("my_list").appendChild(nameField);
  //document.getElementById("my_list").appendChild(credentialField);
  //document.getElementById("my_list").appendChild(emailField);
  //document.getElementById("my_list").appendChild(visitorContainer).slideDown();
  $("#my_list").append(visitorContainer)
  //$("#my_list").last().slideDown()
}

window.removeVisitorField = function () {
  console.log('removeVisitorField() called')
  var doc = document.getElementById("my_list");
  console.log(doc.lastChild);
  
  doc.removeChild(doc.lastChild);
}
