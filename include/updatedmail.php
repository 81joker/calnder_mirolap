<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;


if (isset($_POST['day']) && isset($_POST['month']) && isset($_POST['description']) && isset($_POST['Erinnerung']) && isset($_POST['fulldate']) && isset($_POST['email'])) {
  // Import PHPMailer classes into the global namespace day: , month: , description: ,  Erinnerung:, fulldate:, email:,
  $day = $_POST['day'];
  $month = $_POST['month'];
  $description = $_POST['description'];
  $Erinnerung = $_POST['Erinnerung'];
  $fulldate = $_POST['fulldate'];
  $email = trim($_POST['email']);


  $sent = false;
  // Include PHPMailer library files
  require 'PHPMailer_master/src/Exception.php';
  require 'PHPMailer_master/src/PHPMailer.php';
  require 'PHPMailer_master/src/SMTP.php';


  // Create an instance of PHPMailer class
  $mail = new PHPMailer;

  /************************* SMTP configuration Require Edits **********************/
  $mail->isSMTP();
  $mail->Host     = 'smtp.gmail.com';
  $mail->SMTPAuth = true;
  $mail->Username = 'tim26618@gmail.com';
  $mail->Password = '@Joker981';
  $mail->SMTPSecure = 'tls';
  $mail->Port     = 587;
  //$mail->SMTPDebug = SMTP::DEBUG_SERVER;

  /************************* SMTP configuration Require Edits **********************/
  // Sender info
  $mail->setFrom('tim26618@gmail.com', 'calender APP Microlab');
  $mail->addReplyTo('tim26618@gmail.com', 'calender APP Microlab');

  // Add a recipientel7
  $mail->addAddress($email);

  // Add cc or bcc
  // $mail->addCC('');
  // $mail->addBCC('');

  // Email subject
  $mail->Subject = 'Send Email via SMTP using PHPMailer';

  // Set email format to HTML

  $mail->isHTML(true);
  // Email body content
  $mailContent = '
<div style="background:rgb(10, 150, 150);height:250px;text-align:center;">
  <p style="background:lightblue;text-align:center;padding:10px;color:black;">Hello this is reminder email Sent From calender app
  meeting at: ' . $day . '.' . $month . ' </p>
  <p style="background:black;color:white;text-align:center;height:150px;display:flex;text-align:center;">
  <span style="background:white;padding:15px;color:black;border:2px solid rgb(10, 150, 150);margin: 0 auto;">
  <span style="background:black;padding:5px;color:white;">You have registerd a meeting at
  </span><span style="background:red;padding:5px;color:white;">' . $fulldate . '</span>
  </span></p>
  <p style="background:lightgreen;text-align:center;padding:10px;color:black;">
  <span style="background:white;">' . $description . ' and you set reminder After: ' . $Erinnerung . '</span></p>
</div>
';

  $mail->Body = $mailContent;

  // Send email
  if (!$mail->send()) {
    //echo $mail->ErrorInfo;
    echo false;
  } else {
    //echo 'Message has been sent.';
    echo true;
  };
};
