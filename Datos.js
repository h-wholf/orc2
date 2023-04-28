function mostrarDatos(obj) {
  for (var key in obj) {
    if (typeof obj[key] === "object") {
      console.log(key + ":"); 
      for (var subkey in obj[key]) {
        console.log("  " + subkey + ": " + obj[key][subkey]); 
      }
    } else {
      console.log(key + ": " + obj[key]); 
    }
  }
}
var obj = JSON.parse(json);
mostrarDatos(obj);