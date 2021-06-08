<?php
session_start();
require_once('config/config.php');
require_once('include/header.php');

$id = $_POST['id'];
$id = (int) $id;
$sql = "SELECT * FROM Kalender WHERE id = '$id'";
$result = $db->query($sql);
$kalnder = mysqli_fetch_assoc($result);


?>

<?php ob_start(); ?>

<!-- Modal -->
<div class="modal fade" id="details-modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Bearbeiten event</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">
                    <span id="modal_errors" class="bg-danger"></span>
                    <form id="updateForm" method="POST" action="update_calendar.php">
                        <input type="hidden" name="id" id="updateId">

                        <div id="get_content"></div>

                        <div class="row">
                            <div class="col-md-4 form-group">
                                <label for="datum">Datum:</label>

                                <div class="row">
                                    <div class="col-md-3 mr-0 p-2">
                                    </div>
                                    <div class="col-md-3 ml-0 p-2">
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4 form-group">
                                <label for="description">Bezeichung:</label>
                                <input type="text" name="description" id="description" value="<?= $kalnder['description'] ?>" class="form-control">
                            </div>
                            <div class="col-md-4 form-group">
                                <label for="erinnerung">Erinnerung:</label>
                                <input type="text" name="erinnerung" id="erinnerung" value="<?= $kalnder['erinnerung'] ?>" class="form-control">
                            </div>



                        </div>
                </div>

            </div>
            <div class="modal-footer">
                <button class="btn btn-default" onclick="closeModal()">Close</button>
                <!-- <button type="submit" name="update" class="btn btn-light" id="myBtn">Submit</button> -->

                <button type="submit" class="btn btn-light" style="background-color: #606060;color:#fff">Save changes</button>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<script>
    $(document).ready(function($) {
        $('[name="updateForm"]').on('click', function(event) {

            console.log("sometext");

        });
    });
    // $('#updateForm').submit(function(e) {
    //     e.preventDefault();
    //     console.log($(this).serializeArray());
    // });

    // function update(id) {
    //     var description = $("input[name='description']").val();
    //     var erinnerung = $("input[name='erinnerung']").val()
    //     var data = {
    //         id,
    //         description,
    //         erinnerung
    //     };
    //     $.ajax({
    //         method: "POST",
    //         url: $('#updateForm').attr('action'),
    //         data: data.serializeArray(),
    //         dataType: "text",
    //         success: function(data) {
    //             console.log(data);

    //         },
    //         error: function() {
    //             console.log('error');
    //         }
    //     });
    // }
    // document.getElementById("myBtn").addEventListener("click", function(e) {
    //     e.preventDefault();
    // $(document).ready(function() {


    //     $('form').submit(function() {
    //         alert('halooo');


    // var id = $("input[name='id']").val();
    // var description = $("input[name='description']").val();
    // var erinnerung = $("input[name='erinnerung']").val();
    // $.ajax({
    //     method: "POST",
    //     url: "update_calendar.php",
    //     data: {
    //         updateId: id,
    //         description: description,
    //         erinnerung: erinnerung,

    //     },
    //     success: function(data) {
    //         console.log(data);

    //     },
    //     error: function() {
    //         console.log('error');
    //     }
    // });

    //     });
    // });




    function closeModal() {
        $('#details-modal').modal('hide');
        setTimeout(function() {
            $('#details-modal').remove();
            $('.modal-backdrop').remove();
        }, 500);
    }
</script>

<?php
include('include/footer.php');
?>
<?php echo ob_get_clean(); ?>