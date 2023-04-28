

function copyToClipboard(v) {

  var valor = document.getElementById(v);
  
  valor.select();
  document.execCommand("copy");
  
}

function autoAjustar(elemento) {
  elemento.style.height = "auto";
  elemento.style.height = elemento.scrollHeight + "px";
}

var lives = [];
function saludar() {
  var nombre = document.getElementById("nombre").value;
  alert("Hola " + nombre);
}



function luhnCheck(value) {
    // Implementación del algoritmo de Luhn
    let sum = 0;
    for (let i = 0; i < value.length; i++) {
        let cardNum = parseInt(value.charAt(i));
        if ((value.length - i) % 2 === 0) {
            cardNum *= 2;
            if (cardNum > 9) {
                cardNum -= 9;
            }
        }
        sum += cardNum;
    }
    return sum % 10 === 0;
}

// Ejemplo de uso
// 
// 
function validar() {
  let cardnumber = document.getElementById("cardnumber").value;
  if (luhnCheck(cardnumber)) {
      console.log("LIVE");
  } else {
      console.log("DIE");
}
}


function validar2(cc) {
  
  if (luhnCheck(cc)) {
      console.log(cc);
      
      var d = datos()
      lives.push(cc + d);

      return lives;

      //console.log(lives)
  } else {
      //console.log("El número de tarjeta no es válido.");
}
}


// funcion para crear numeros aleatorios
function generar() {
  var bin = document.getElementById("bin").value;
  
  let nu=(bin.length);
  
  var resultado = 16 - nu;
  



  for (let i = 1; i < 150; i++) {
  var ccgen = Math.floor(Math.random() * (10 ** resultado));
  var creditcard = bin+ccgen
  
  
  
  validar2(creditcard)
  
  //document.getElementById("bin").value = y + creditcard;
  
}
  


}

function mostrarContenido() {
  //var array = ["manzana", "naranja", "plátano"];
  document.getElementById("cajaDeTexto").value = lives.join("");
}


function gen(){

  let n = lives.length;
      console.log(n);
      if (n <= 10) {
        console.log(n);
        generar();
        mostrarContenido();
        lives = [];

      }  else {
        console.log("esto deveria resetear el valor de lives");
        //lives = [];
        
}


}

// funcion para crear numeros aleatorios
function datos() {
  let cvv = Math.floor(Math.random() * 900) + 100;
  let año = Math.floor(Math.random() * (2029 - 2024 + 1)) + 2024;
  let mes = Math.floor(Math.random() * (12 - 1 + 1)) + 1;
  if (mes < 10) {
  mes = "0"+mes;
  var data = "|"+mes+"|"+año+"|"+cvv+"\n";
  return data;
} else {
        var data = "|"+mes+"|"+año+"|"+cvv+"\n";
        return data;
  //console.log("|"+mes+"|"+año+"|"+cvv);
}


}

function agregarUrl() {
      var url = document.getElementById("url").value;
      document.getElementById("miIframe").src = url;
    }
    
function fake() {
  
  var pais = document.getElementById("pais").value;
  document.getElementById("cajapais").value = pais;
  //var z = y.value;
  //var start = y.selectionStart;
  //var end = y.selectionEnd;
  //y.value = z.substring(0, start) + x + z
}
function urlfake() {

      let url = document.getElementById("pais").value;
      let link = "addres.php"+ "IHVzCg==";
      

      document.getElementById("fakedata").src = link;
    }
 
 //funciones de java script
function mostrarDatos(obj) {
  for (var key in obj) {
    if (typeof obj[key] === "object") {
      console.log(key + ":"); 
      for (var subkey in obj[key]) {
        alert("  " + subkey + ": " + obj[key][subkey]); 
      }
    } else {
      alert(key + ": " + obj[key]); 
    }
  }
}
//function asig(idHtml) {var elementoHtml = document.getElementById(idHtml);}

function curl(url) { 
  var bin = input1.value;
  console.log(bin);
  
  var link = url + bin; 
  fetch(link) .then((response) => response.json()) .then((data) => { 
    //alert(JSON.stringify(data));
    //console.log(JSON.stringify(data));
    var obj = JSON.stringify(data);
    alert(obj);
    }); }
  
  
 function ip(url) { 
  fetch(url, {headers: {'User-Agent': 'curl/8.0.1'}}) .then((response) => response.text()) .then((data) => { 
    //alert(data);
    //console.log(data);
    alert("TU IP ES  \n" + data);
    
    }); }
    
function  saludar() {
  var contenido = input2.value;
 // alert("hola " + input2.value);
 alert("hola " + contenido + " como estas \n un gusto conocerte");
}

