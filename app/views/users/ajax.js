alert("user_login");
function makeRequest() {
    let user_login = document.getElementById('login').value;
    let user_password = document.getElementById('password').value;

    alert("user_login");
    alert(user_password);

    $("#"+table).empty();

    $.ajax('http://localhost:3000/users', {
        success: function (data){
            data.forEach(employee => {
                if (employee_id == "") {
                    if(table == "offices")
                    {
                        const li = document.createElement('li');
                        li.textContent = "ID - "+employee.id+"; Name - "+employee.name+"; city - "+employee.city+".";
                        document.querySelector('#'+table).append(li);
                    }
                }
            } )
        }
    });
}
