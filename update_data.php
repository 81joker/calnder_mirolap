<?php
session_start();
ob_start();
require_once('config/config.php');
include('include/header.php');
include('include/herlFull.php');

if (!is_logged_in()) {
    login_error_redirect();
}


function showId() {
  if (isset($_GET['rowid'])) {
    echo $_GET['rowid'];
  } else {
    echo '';
  }
};

function showDay() {
  if (isset($_GET['day'])) {
    echo $_GET['day'];
  } else {
    echo '';
  }
};

function showMonth() {
  if (isset($_GET['month'])) {
    echo $_GET['month'];
  } else {
    echo '';
  }
};

function showYear() {
  if (isset($_GET['year'])) {
    echo $_GET['year'];
  } else {
    echo '';
  }
};


function showDes() {
  if (isset($_GET['desc'])) {
    echo $_GET['desc'];
  } else {
    echo '';
  }
};


function showTag($option) {
  if (isset($_GET['tag'])) {

    if ($option == $_GET['tag']) {
      echo "selected";
    };
};
};
?>


<a href="logout.php" class="btn btn-info">Logout</a>

<header>

    <h3><span> </span></h3>

</header>
<main>

    <div class="container-fluid ">
        <div class="row main">
            <div class="col-md-3 ">
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="menuüpunkt1.php">Menuüpunkt 1</a></li>
                    <li><a href="#menuüpunkt2">Menuüpunkt 2</a></li>
                </ul>
            </div>
            <div class="col-md-6  calander">
                <div class="fetch">
                  <!-- alert message -->
                  <div class="alert alert-success fade hide alert_messagediv">
                    <span class="alert_messagetext"></span>
                    <button class="close closebtnalert" type="button">&times;</button>

                  </div>
                  <!-- alert end -->
                    <div class="speichen">
                        <form action="include/crud_action.php" id="editForm" method="post">
                            <div class="form-row">
                                <div class="form-group col-md-8">
                                    <label for="datum">datum(TT/MM/YYYY)</label><br />
                                    <div class="block">
                                        <input style="display:none;" type="hidden" name="rowid" id="rowid" value="<?php showId(); ?>">
                                        <input type="text" id="edit_dattag" value="<?php showDay(); ?>" name="edit_dattag" class="form-control" style="width:60px;display:inline-block;" placeholder="DD"/>
                                        <input type="text" id="edit_datmonat" value="<?php showMonth(); ?>" name="edit_datmonat" class="form-control" style="width:60px;display:inline-block;" placeholder="MM" />
                                        <input type="text" id="edit_datyear" value="<?php showYear(); ?>" name="edit_datyear" class="form-control" style="width:60px;display:inline-block;" placeholder="YYYY" />
                                    </div>


                                </div>
                              </div>

                              <div  class="form-row">
                                <div class="col-md-4">
                                    <label for="desc">Bezeeichung</label>
                                    <input type="text" class="form-control" id="edit_desc" name="edit_desc" value="<?php showDes(); ?>">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="ernnerung">Ernnerung</label>
                                    <select id="edit_ernnerung" class="form-control" name="edit_ernnerung" value="">
                                        <option>Choose...</option>
                                        <option <?php showTag("1 Tag"); ?> value="1 Tag">1_Tag</option>
                                        <option <?php showTag("2 Tag"); ?> value="2 Tag">2_Tag</option>
                                        <option <?php showTag("3 Tag"); ?> value="3 Tag">3_Tag</option>
                                        <option <?php showTag("1 Woche"); ?> value="1 Woche">1_Woche</option>
                                        <option <?php showTag("2 Woche"); ?> value="2 Woche">2_Woche</option>
                                    </select>
                                </div>
                            </div>



                            <div class="d-flex flex-row-reverse">
                                <p><input type="submit" class="btn btn-success float-right" value="SPEICHERN"></p>
                                <!-- <button id="btnAddAction" name="submit" onClick="callCrudAction('add','')" class="btn btn-default ">SPEICHERN</button> -->
                                <!-- <input type="submit" class="btn btn-default float-right" value="SPEICHERN"> -->
                        </form>
                    </div>
                </div>
            </div>
            <!-- Show The Info -->
        </div>
        <div class="col-md-3 bg-black"></div>
    </div>
    </div>
</main>

<?php
include('include/footer.php');
echo ob_get_clean();
?>
