var tempView=0;
var timecount=[86400000,604800000,1814400000,2592000000];
var tradelist=[];

function sell(){
    var obj= getBarInfo("sell");
    console.log(obj);
    tradelist.push(obj);
    return obj;
}

function buy(){
    var obj= getBarInfo("buy");
    console.log(obj);
    tradelist.push(obj);
    return obj;
}

function getBarInfo(cs){
    var obj={};
    obj["date"]=new Date().getTime();
    obj["clientname"]=document.getElementById("clientname").value;
    obj["name"]=obj["clientname"];
    obj["clintside"]=cs;
    obj["ticker"]=document.getElementById("ticker").value;
    obj["ric"]=document.getElementById("ric").value;
    obj["size"]=document.getElementById("size").value;
    obj["price"]=document.getElementById("price").value;
    obj["notionalusd"]="?";
    obj["currency"]=document.getElementById("currency").value;
    obj["issuesector"]=document.getElementById("issuesector").value;
    obj["sector"]=obj["issuesector"];
    obj["salesperson"]=document.getElementById("salesperson").value;

    var select=document.getElementById("htpt");
    var index=select.selectedIndex;
    obj["HT/PT"]=select.options[index].value;

    return obj;
}

function changeview(){
    var ev=window.event;
    window.event.stopPropagation();
    var obj=ev.target;
    var children=obj.parentNode.children;
    for(var item of children){
        item.style.backgroundColor="#161e27";
    }
    obj.style.backgroundColor="aliceblue";

    tempView=obj.id;
    showData();
}

function showData(){
    var list=[];
    var timestamp=new Date().getTime();
    console.log(tempView);
    for(var item of tradelist){
        var time=timestamp-item["date"];
        console.log(time);
        if(time<=timecount[tempView]){
            list.push(item);
        }
    }
    list.sort((a,b)=>(b["date"]-a["date"]));
    console.log(list);
    var table=document.getElementById("tb");
    table.innerHTML="";
    for(var item of list){
        var tr=document.createElement("tr");
        for(var it in item){
            var td=document.createElement("td");
            td.innerText=item[it];
            tr.appendChild(td);
        }
        table.appendChild(tr);
    }
}

function load(){
    tradelist.push(c("buy",-10000000));
    tradelist.push(c("sell",-2155));
    tradelist.push(c("buy",-100));
    tradelist.push(c("buy",-1989900000));
    tradelist.push(c("sell",-193999999))
    showData();
}

function c(cs,plus){
    var obj={};
    obj["date"]=new Date().getTime()+plus;
    obj["clientname"]="test";
    obj["name"]="test";
    obj["clintside"]="test";
    obj["ticker"]="test";
    obj["ric"]="test";
    obj["size"]="test";
    obj["price"]="test";
    obj["notionalusd"]="?";
    obj["currency"]="test";
    obj["issuesector"]="test";
    obj["sector"]="test";
    obj["salesperson"]="test";

    var select=document.getElementById("htpt");
    var index=select.selectedIndex;
    obj["HT/PT"]=select.options[index].value;
    return obj;
}