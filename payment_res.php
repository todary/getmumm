<?php


file_put_contents("test.txt",time().PHP_EOL,FILE_APPEND | LOCK_EX);
file_put_contents("test.txt",json_encode(array_merge($_POST,$_GET,$_REQUEST)).PHP_EOL,FILE_APPEND | LOCK_EX);