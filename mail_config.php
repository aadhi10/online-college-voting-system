<?php
// PHPMailer Configuration File

// Import PHPMailer classes into the global namespace
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Load PHPMailer files
require_once 'PHPMailer/src/Exception.php';
require_once 'PHPMailer/src/PHPMailer.php';
require_once 'PHPMailer/src/SMTP.php';

// Create a new PHPMailer instance
$mail = new PHPMailer(true);

try {
    // Server settings
    $mail->isSMTP();
    $mail->Host       = 'smtp.gmail.com';     // Gmail SMTP server
    $mail->SMTPAuth   = true;
    $mail->Username   = 'adithyan.bca23@stcp.ac.in'; 
    $mail->Password   = 'qbjkaleamplijkks';   // App password
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port       = 587;

    return $mail;

} catch (Exception $e) {

    error_log("Failed to initialize PHPMailer: {$e->getMessage()}");
    return null;
}
?>
