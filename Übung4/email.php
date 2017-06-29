<!DOCTYPE html>
<html>
<head>
	<title>E-Mail gesendet</title>
</head>
<body>
	<?php
		/*mail('phamtri96@gmail.com', $_POST['Betreff'], $_POST['Nachricht']);*/
		$betreff = $_POST['Betreff'];
		$nachricht = $_POST['Nachricht'];
		$inhalt = "Betreff: " . $betreff . "\n" . "Nachricht: " . $nachricht;
		$file = fopen("nachricht.csv","a");
		fwrite($file,$inhalt);
		fclose($file);
	
		echo "<p>Ihre Nachricht ist gesendet, vielen Dank!</p>";
	?>

<!--
Sidenote:
 - create the file ./nachricht.csv
 - make the cmd "chmod o+r nachricht.csv", so that clients can only read and not edit our nachricht.csv
-->
</body>
</html>

