function enableRowSelectable(row, className) {
    row.addEventListener('mouseover', (event) => {
	let el = event.target.parentElement.children[1];
        el.classList.add(className);
    });

    row.addEventListener('mouseout', (event) => {
        let el = event.target.parentElement.children[1];
        el.classList.remove(className);
    });
}

function finding_resulting_summ() {
    price_cols = document.getElementsByClassName('price_col');

    let sum = 0;
    for (price_col of price_cols) {
        sum += parseInt(price_col.textContent);
    }

    let total_price_el = document.getElementById('resulting_price_column');
    total_price_el.innerText = sum;

}

function addRow(name, price) {
    let table = document.getElementById("main_table");

    let row = document.createElement('tr');

    enableRowSelectable(row, 'selected_del');

    row.addEventListener('click', (event)=>{
        let row = event.target.parentElement;
        
        row.remove();

        finding_resulting_summ();
    });

    let name_col = document.createElement('td');
    name_col.textContent = name

    let price_col = document.createElement('td');
    price_col.textContent = price
    price_col.classList.add('price_col');

    row.appendChild(name_col);
    row.appendChild(price_col);

    let total_price_row = document.getElementById('resulting_price_row');

    total_price_row.parentNode.insertBefore(row, total_price_row);

    finding_resulting_summ();
}

function setTdsClickable() {
    let menu_table = document.getElementById('menu_table');

    for (let row of menu_table.rows) {
        let name_td = row.children[0];
        let price_td = row.children[1];

        if (name_td.tagName == 'TH')
            continue;

        enableRowSelectable(row, 'selected');

        row.addEventListener('click', (event)=>{
            row = event.target.parentElement;
            
            name = row.children[0].textContent;
            price = parseInt(row.children[1].textContent);

            addRow(name, price);
        });
    }
}

setTdsClickable();

let name_input = document.getElementById('name_input');
let price_input = document.getElementById('price_input');

let submittion_button = document.getElementById('submit_button');

submittion_button.addEventListener('click', () => {
    name_str = name_input.value
    price_str = price_input.value;
//regular expressions, to check, if the input fits the conditions
    if (!name_str.match(/\w+/))
        alert("Not enougth symbols");
    else if (!price_str.match(/^\d+$/))
        alert("value error");
    else
        addRow(name_str, price_str);
});