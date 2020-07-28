$(document).ready(function () {
var span = document.getElementsByClassName("close")[0];
  var modal = document.getElementById("myModal");  
  
  get_disible();

  $("label").click(function () {
    modal.style.display = "block";
    document.getElementById("selected_seat").innerHTML=$(this).text(); 
    document.getElementById("seat_id").value=$(this).text(); 
   
  });

span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
};
})


function get_disible() {
  var htm = new XMLHttpRequest();
  htm.open("POST", "getseat_status.php", true);

  htm.onreadystatechange = function () {
    if (htm.readyState === 4 && htm.status === 200) {
      var data = JSON.parse(htm.responseText);

      for (var obj in data) {
        if (data[obj].seat_status == "disabled") {
          document.getElementById(data[obj].seat_id).disabled = true;
        }
      }
    }
  };
  htm.send(null);
}
