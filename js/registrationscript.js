/**
*Author: Mingtau Li
*Description: custom scripts to handle user registration input
*Functionalities: automatically adds dashes to phone numbers, automatically advances to next date field
*/
function autoFormAdvance(e,t,n){document.getElementById(t).value.length==e&&document.getElementById(n).focus()}var $dateFields=document.getElementsByClassName("autoAdvance");$dateFields[0].onkeyup=function(){autoFormAdvance(2,"registermonth","registerday")},$dateFields[1].onkeyup=function(){autoFormAdvance(2,"registerday","registeryear")},jQuery('input[name="registerphone"]').bind("keyup",function(e){var t=e.keyCode||e.charCode;if(8==t||46==t)return!1;var n=$(this).val().length;if(3===n||7===n){var a=$(this).val();a+="-",$(this).val(a)}});