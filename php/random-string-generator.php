<?php

/*
* Generates a random string [a-z/0-9]
* Note: Not suitable for cryptographic purposes
* @modified: 2025-03-26 11:33:30
*/

substr(str_shuffle(MD5(microtime())), 0, 10); // 10 characters