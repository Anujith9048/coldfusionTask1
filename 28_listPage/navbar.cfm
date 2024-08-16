<cfoutput>
<nav class="navbar navbar-expand-lg px-5">
    <div class="row w-100 ">
        <div class="col-12 d-flex justify-content-between">
            <div class="logos d-flex">
                <img class="rounded-circle" src="https://miro.medium.com/v2/resize:fit:2000/1*oDbPgFX0Ta0fDe49BzR2Yg.gif" width="60" height="50" alt="">
                <h4 class="text-white fw-bold ms-2 align-content-center">InfoVault</h4>
            </div>
            <ul class="d-flex navbar-nav col-3 justify-content-between">
                <li><a href="welcome.cfm" class="text-decoration-none text-white p-3 align-content-center">Home</a></li>
                <li><a href="##"class="text-decoration-none text-white userHello fs-5 fw-bolder p-3 align-content-center userHello">Hello #session.userName#</a></li>
            </ul>
            <ul class="d-flex navbar-nav col-4 justify-content-between">
                <li><a href="#session.role#List.cfm" class="text-decoration-none text-white p-3 align-content-center">View List</a></li>
                <li>
                    <form action="" method="post">
                        <input class="btn text-white p-3 align-content-center bg-none" type="submit" name="logOut" value="Logout">
                    </form>
                </li>
            </ul>
        </div>
    </div>
</nav>
</cfoutput>