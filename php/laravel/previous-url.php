<?php

/*
* @modified: 2025-03-26 11:33:15 
*/

// previous url
url()->previous();

/* 
* previuos url without the domain. 
* e.g. http://example.com/user : user 
*/
str_replace(url('/'), '', url()->previous());