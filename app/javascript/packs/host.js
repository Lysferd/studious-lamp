console.log('host.js loaded')

window.addHostField = function () {
  console.log('addHostField() called')
  var date = new Date();
  var mSec = date.getTime();

  idAttributKind =
    "host_attributes_0_kind".replace("0", mSec);
  nameAtributKind =
    "host[attributes][0][kind]".replace("0", mSec);

  var li = document.createElement("li");
  inputKind.setAttribute("type", "text");
  inputKind.setAttribute("id", idAttributKind);
  inputKind.setAttribute("name", nameAttributKind);
  li.appendChild(inputKind);

  document.getElementById("myList").appendChild(li);

}
