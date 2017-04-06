/*********************************************************************************
Script for menu.php

author: Khai Nguyen
description: The function checks for current tab and displays contents accordingly. 
**********************************************************************************/

jQuery(document).ready(function(){jQuery(".tabs .tab-links a").on("click",function(e){var t=jQuery(this).attr("href");jQuery(".tabs "+t).show().siblings().hide(),jQuery(this).parent("li").addClass("active").siblings().removeClass("active"),e.preventDefault()})});