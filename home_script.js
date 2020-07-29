$(document).ready(function () {
var span = document.getElementsByClassName("close")[0];
  var modal = document.getElementById("myModal");  
  
  $("label").click(function () {
    modal.style.display = "block";
    document.getElementById("selected_seat").innerHTML=$(this).text(); 
    document.getElementById("seat_id").value=$(this).text(); 
   
  });

  get_disible();

span.onclick = function() {
  modal.style.display = "none";
}

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
          $('selector').click(false);
        }
      }
    }
  };
  htm.send(null);
}

function getresult(){
  var modal = document.getElementById("myModal");  
  code = document.getElementById("code").value;
  id = document.getElementById("seat_id").value;
  temp = 0;

  modal.style.display = "none";
  if(!code){
  temp=1;
  //modal please enter code
  alert("if1 : null");
  console.log("if1 : null");
}
  $.ajax({
url: 'getbook.php',
type: 'POST',
success: function(data){

  var data = JSON.parse(data);
  for (var obj in data){
      if(data[obj].emp_code==code){
          temp=1;
          //set text & open modal already book  
          alert("if2 : already");
          console.log("if2 : already");
          break;
      }
  }
  if(temp==0 && code ){

      $.ajax({  
          url: 'updatedb.php',
          type: 'POST',    
          data: {
              seat_id: id,
              code: code,},
          success: function(){
              //set text & open modal success  
              alert("if3 : success");
              console.log("if3 : success");
          }          
      });

  }
  
}
});
temp=0;
location.reload();
return false;
}