

<?php
/*
 * Restore MySQL dump using PHP
 * (c) 2006 Daniel15
 * Last Update: 9th December 2006
 * Version: 0.2
 * Edited: Cleaned up the code a bit. 
 *
 * Please feel free to use any part of this, but please give me some credit :-)
 */
  
// Name of the file
$filename = 'wordpress.sql';
// MySQL host
$mysql_host = 'localhost';
// MySQL username
$mysql_username = 'TEMPLATE_DB_USER';
// MySQL password
$mysql_password = 'TEMPLATE_DATABASE_PASSWORD';
// Database name
$mysql_database = 'TEMPLATE_DATABASE_NAME';
 
//////////////////////////////////////////////////////////////////////////////////////////////
 
// Connect to MySQL server
mysql_connect($mysql_host, $mysql_username, $mysql_password) or die('Error: error connecting to MySQL server: ' . mysql_error());
// Select database
mysql_select_db($mysql_database) or die('Error: error selecting MySQL database:' . mysql_error());
 
// Temporary variable, used to store current query
$templine = '';
// Read in entire file
$lines = file($filename);
// Loop through each line
foreach ($lines as $line)
{
    // Skip it if it's a comment
    if (substr($line, 0, 2) == '--' || $line == '')
        continue;
 
    // Add this line to the current segment
    $templine .= $line;
    // If it has a semicolon at the end, it's the end of the query
    if (substr(trim($line), -1, 1) == ';')
    {
        

        try {
            // Perform the query
            mysql_query($templine);
            // Reset temp variable to empty
            $templine = '';

        } catch (Exception $e) {
             print('Error: ' . mysql_error());
             return;
        }
    }

    try {
        unlink($filename);
    } catch (Exception $e) {
        print("Warning: couldn't delete sql install file");
    }

    print("Success");
}
 
?>
