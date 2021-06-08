<?php
session_start();
ob_start();
require_once('config/config.php');
include('include/header.php');
include('include/herlFull.php');

if (!is_logged_in()) {
    login_error_redirect();
}

?>


<header>
    <h2><span><?= $slug[0] ?></span></h2>

</header>
<?php include('include/nav.php') ?>
<div class="col-md-6  calander">
    <div class="fetch">
        <!-- alert message -->
        <div class="alert_messagediv alert alert-success fade hide">
            <span class="alert_messagetext"></span>
            <button class="close closebtnalert" type="button">&times;</button>

        </div>
        <!-- alert end -->
        <div class="speichen">
            <form action="include/crud_action.php" id="saveForm" method="post">
                <div class="form-row">
                    <div class="form-group col-md-8">
                        <label for="datum">datum(TT/MM/YYYY)</label><br />
                        <div class="block">
                            <input type="text" id="dattag" name="dattag" class="form-control" style="width:60px;display:inline-block;" placeholder="DD" />
                            <input type="text" id="datmonat" name="datmonat" class="form-control" style="width:60px;display:inline-block;" placeholder="MM" />
                            <input type="text" id="datyear" name="datyear" class="form-control" style="width:60px;display:inline-block;" placeholder="YYYY" />
                        </div>


                    </div>
                </div>

                <div class="form-row">
                    <div class="col-md-4">
                        <label for="desc">Bezeeichung</label>
                        <input type="text" class="form-control" id="desc" name="desc">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="ernnerung">Ernnerung</label>
                        <select id="ernnerung" class="form-control" name="ernnerung">
                            <option selected>Choose...</option>
                            <option value="1 Tag">1_Tag</option>
                            <option value="2 Tag">2_Tag</option>
                            <option value="3 Tag">3_Tag</option>
                            <option value="1 Woche">1_Woche</option>
                            <option value="2 Woche">2_Woche</option>
                        </select>
                    </div>
                </div>





                <div class="d-flex flex-row-reverse">
                    <p><input type="submit" class="btn btn-outline-dark  float-right" value="SPEICHERN"></p>
                    <!-- <button id="btnAddAction" name="submit" onClick="callCrudAction('add','')" class="btn btn-default ">SPEICHERN</button> -->
                    <!-- <input type="submit" class="btn btn-default float-right" value="SPEICHERN"> -->
            </form>
        </div>
    </div>
</div>
<!-- Show The Info -->
<div class="table mt-2" style="border: 2px solid #000;">

    <table class=" table table-borderless" id="displaytable">
        <thead>
            <tr>
                <th scope="col">Datum</th>
                <th scope="col">Bezeichung</th>
                <th scope="col">Erinnerung</th>
                <th scope="col">Aktion</th>
            </tr>
        </thead>
        <tbody id="data_insert">
            <?php include('include/render_data.php');
            render_data();  ?>
            <!--
                        <tr>

                            <th>01.01</th>
                            <td class="description_class">Terminhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh</td>
                            <td>1 Woche</td>
                            <td><a href="#" class="btn btn-warning shadow-none fixed100">bearbeiten</a>
                              <a href="#" class="btn btn-danger shadow-none fixed100">löschen</a>
                            </td>
                        </tr>
                      -->

        </tbody>
    </table>
</div>
</div>
<div class="col-md-3 bg-black"></div>
</div>
</div>
</main>

<?php
include('include/footer.php');
echo ob_get_clean();
?>