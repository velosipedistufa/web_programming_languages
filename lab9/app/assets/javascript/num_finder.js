function show_result(data){
    let result = document.getElementById("result");
    result.innerHTML = "<br\><table id='mytable'><tr><th>Iteration</th><th>value of the proceeded element</th></tr></table>"
    let table=document.querySelector("#mytable")
    table.innerHTML += `<tr><td>entered number</td><td>${data.value[0]}</td></tr>`
    table.innerHTML += `<tr><td>binary digit</td><td>${data.value[1]}</td></tr>`
    table.innerHTML += `<tr><td>reversed binary digit</td><td>${data.value[2]}</td></tr>`
    table.innerHTML += `<tr><td>reversed decimal number</td><td>${data.value[3]}</td></tr>`

}
$(document).ready(function(){
    $("#num_finder_table").bind("ajax:success", function(xhr, data, status)
    {
        show_result(data)
    })
})
