function validateform() {
    var name = document.myform.email.value;
    var password = document.myform.password.value;
    console.log(name);
    console.log(password);

    var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

    if (name == null || name == "") {
        alert("Name can't be blank");
        return false;
    }
    else if (!name.match(mailformat)) {
        alert("Enter valid email address");
        return false;
    } else if (password.length < 6) {
        alert("Password must be at least 6 characters long.");
        return false;
    }
}