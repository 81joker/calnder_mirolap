<?php
session_start();
//ob_start();

$db = mysqli_connect('127.0.0.1', 'root', '12345678', 'calendar');

if (mysqli_connect_errno()) {
    echo 'Database connection failed withe follwing errors: ' . mysqli_connect_error();
    die();
}

include('include/header.php');
include('include/herlFull.php');

if (!is_logged_in()) {
    login_error_redirect();
}
$sql = "SELECT * FROM `Kalender` ";
$kalnders = $db->query("$sql");


?>

<!-- <script src="lib/jquery-3.6.0.min.js"></script> -->
<script src="app.js"></script>
<h4>Caaaaallll</h4>
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
                    <div class="speichen">
                        <form id="#my-form" action="crud_action.php">
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="datum">Datum(TT/MM)</label>
                                    <div class="block">
                                        <input type="text" id="datum" name="datum" class="form" style="width:60px;" />

                                        <input type="text" id="datum" class="datum" style="width:60px;" />
                                    </div>

                                </div>
                                <div class="col-md-4">
                                    <label for="description">Bezeeichung</label>
                                    <input type="text" class="form-control" id="description" name="description">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="ernnerung">Ernnerung</label>
                                    <select id="ernnerung" class="form-control" name="erinnerung">
                                        <option selected>Choose...</option>
                                        <option value="1.Tag">1_Tag</option>
                                        <option value="2.Tag">2_Tag</option>
                                        <option value="3.Tag">3_Tag</option>
                                        <option value="1.Woche">1_Woche</option>
                                        <option value="2.Woche">2_Woche</option>
                                    </select>
                                </div>
                            </div>

                            <!-- Message success ajax -->
                            <div class="container alrt alert-success">
                                <div class="text-dark" id="get_content"></div>
                            </div>

                            <div class="d-flex flex-row-reverse">
                                <input type="submit" name="submit" class="btn btn-default" value="SPEICHERN" id="submit">


                        </form>

                    </div>
                </div>
            </div>
            <!-- -------Show The Info -->
            <div class="table mt-2" style="border: 2px solid #000;">
                <table class=" table table-borderless">
                    <thead>
                        <tr>
                            <th scope="col">Datum</th>
                            <th scope="col">Bezeichung</th>
                            <th scope="col">Erinnerung</th>
                            <th scope="col">Aktion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php while ($kalnder = $kalnders->fetch_assoc()) : ?>
                            <tr>
                                <th>01.01</th>
                                <td><?= $kalnder['description']  ?></td>
                                <td><?= $kalnder['erinnerung'] ?></td>
                                <td><a href="#" class="btn btn-default shadow-none" onclick="editData(<?= $kalnder['id'];  ?>)">bearbeiten</a>
                                    |<a href=" #" class="btn btn-default shadow-none">löschen</a></td>
                            </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="col-md-3 bg-black">
            <div id="table-container" style="background-color: #fff;">
            </div>
        </div>
    </div>
</main>




<?php
include('include/footer.php');
?>
<?php echo ob_get_clean(); ?>