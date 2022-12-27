let inputTag = document.getElementById("serach-input");
let ulTag = document.querySelector("ul");

let getElem = function(elem){
  return `<li class="li-style">${elem}</li>\n`;
}
let autoSuggestion = function(){
  if(inputTag.value){
    let tempTag = "";
    let matchingElements = TIMEZONES.filter(function(elem){
      return elem.toLowerCase().startsWith(inputTag.value.toLowerCase());
    });
  
    matchingElements.forEach(function(elem){
      tempTag += getElem(elem);
    });
  
    ulTag.innerHTML = tempTag;
    ulTag.classList.add("show-ul");
    addEvents();
  }
  else{
    ulTag.classList.remove("show-ul");
    ulTag.innerHTML = "";
  }
}
inputTag.addEventListener("input", autoSuggestion);

let addEvents = function(){
  let allLiTag = document.querySelectorAll("li");

  allLiTag.forEach(function(elem){
    elem.addEventListener("click", function(event){
      inputTag.value = event.target.innerText;
    });
  });
}

document.querySelector("button").addEventListener("click", function(event){
  for(let i = 0;i < TIMEZONES.length;i++){
    if(TIMEZONES[i] == inputTag.value){
      document.querySelector("form").submit();
      break;
    }
  }
});