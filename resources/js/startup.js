import { getURL } from "./get.js";

let baseURL = "https://blog.cait.moe/entries/";
// let baseURL = "http://127.0.0.1:5500/frontend-caitmoe/site/html/blog/entries/"
let entryNum = parseInt(await getURL(baseURL+"counter.txt"))-3;
let entries = document.getElementById("entries");

for(let i = entryNum; i > -1; i--) {
  entries.innerHTML += `<div id="${"entry"+i}" class="entry">${await getURL(baseURL+i+".html")}</div>`;
  console.log(await getURL(baseURL+i+".html"));
}

checkForEntries=setInterval(function(){
  checkEntries();
},1000);

var lastEntry = 0;
function checkEntries() {

}