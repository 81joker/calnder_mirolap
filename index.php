<?php

require('config/config.php');
include('include/header.php') ?>

<?php

$sql_return = "SELECT * FROM `logo` ORDER BY id ASC";
$result_data = mysqli_query($db, $sql_return);
if ($result_data) {
?>
    <header>
        <h2><span>
                <?php
                if ($slug[0] == 'index') {
                    echo "logo";
                }
                ?></span></h2>

    </header>
    <?php include('include/nav.php') ?>
    <div class="col-lg-6  ">
        <div class="fetch">
            <?php while ($row = mysqli_fetch_assoc($result_data)) : ?>
                <div class="row pt-3">
                    <div class="col-md-8  lorem-text">
                        <h3>Lorem ipsum dolor sit amt</h3>
                        <p class="inner">
                            <?= $row['text'] ?>
                        </p>
                    </div>

                    <div class="col-md-3">
                        <img src=" <?= $row['img'] ?>" alt="">
                    </div>
                    <div class="col pt-4">
                        <p class="lorem-text">
                            <?= $row['text'] ?>
                        </p>
                        <div class="col pt-4">
                            <p class="lorem-text">
                                <?= $row['text'] ?>
                            </p>
                        </div>
                        <div class="col pt-4">
                            <p class="lorem-text">
                                <?= $row['text'] ?>
                            </p>
                        </div>
                    </div>

                <?php endwhile; ?>
                </div>

        </div>
    <?php
} else {
    echo "<h3 class='mt-4 text-center' >No Data Enzeigen</h3>";
}
    ?>
    <div class="col-md-3 bg-black"></div>
    </div>
    </div>
    </main>

    <?php include('include/footer.php') ?>