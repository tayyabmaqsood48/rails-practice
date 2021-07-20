// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

function checkboxComments(){
  let element = document.getElementById('check').checked;
  if (element == true){
    var disp = document.getElementById('add_comments');
    disp.style.display = 'block';
  }
  else{
    var disp = document.getElementById('add_comments');
    disp.style.display = 'none';
  }

}
