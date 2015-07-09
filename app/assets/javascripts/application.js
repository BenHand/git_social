'use strict';

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require materialize-sprockets
//= require_tree .

<script type="text/javascript">
 WebFontConfig = {
   google: { families: [ 'Bitter:400,700,400italic:latin' ] }
 };
 (function() {
   var wf = document.createElement('script');
   wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
     '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
   wf.type = 'text/javascript';
   wf.async = 'true';
   var s = document.getElementsByTagName('script')[0];
   s.parentNode.insertBefore(wf, s);
 })(); </script>
