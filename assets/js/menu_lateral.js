function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}

function toggleSubMenu() {
    var subMenu = document.getElementById("subMenu");
    if (subMenu.style.display === "block") {
        subMenu.style.display = "none";
    } else {
        subMenu.style.display = "block";
    }
}

function toggleSubMenu2() {
    var subMenu2 = document.getElementById("subMenu2");
    if (subMenu2.style.display === "block") {
        subMenu2.style.display = "none";
    } else {
        subMenu2.style.display = "block";
    }
}