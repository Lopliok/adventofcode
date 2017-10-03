var pole = [];

var x = 0;
var y = 0;



document.getElementById('file').onchange = function(){

  var file = this.files[0];

  var reader = new FileReader();
  reader.onload = function(progressEvent){
    // Entire file
    //console.log(this.result);

    // By lines
    var lines = this.result.split('\n');
    for(var line = 0; line < lines.length; line++){

      pole = lines[line].split(',');

    //  console.log(lines[line]);


    }



    for (var i = 0; i < pole.length; i++) {
        if (pole[i][0] == " "){

            pole[i] = pole[i].replace(" ","");


        }
    }

    //console.log(pole);

    postupuj("up", pole);


    document.write("počet bloků je " + (x+y));
    //console.log(pole);




  };
  reader.readAsText(file);












};






function postupuj(smer, pole) {
  for (var i = 0; i < pole.length; i++) {

    switch (smer) {
      case "up":
        if (pole[i][0] == "R") {
          var prvek = pole[i].replace("R","");

          x += Number(prvek);

          smer = "right"
        } else {
          var prvek = pole[i].replace("L","");

          x -= Number(prvek);

          smer = "left"
        }

        break;
      case "down":

        if (pole[i][0] == "R") {
          var prvek = pole[i].replace("R","");

          x -= Number(prvek);

          smer = "left"
        } else {
          var prvek = pole[i].replace("L","");

          x += Number(prvek);

          smer = "right"
        }

        break;
      case "left":
        if (pole[i][0] == "R") {
          var prvek = pole[i].replace("R","");

          y += Number(prvek);

          smer = "up"
        } else {
          var prvek = pole[i].replace("L","");

          y -= Number(prvek);

          smer = "down"
        }

        break;
      case "right":
        if (pole[i][0] == "R") {
          var prvek = pole[i].replace("R","");

          y -= Number(prvek);

          smer = "down"
        } else {
          var prvek = pole[i].replace("L","");

          y += Number(prvek);

          smer = "up"
        }

        break;
    }

  }


}
