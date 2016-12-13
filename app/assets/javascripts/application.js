// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

// Creating the plugin




// The following is a work in progress for setting a value in the database on page load which will be needed to set the value of :called on page load so that if two people are logged in as the same user, or if we make a list available to more than one person, callers do not access the same prospect at the same time.
window.onload = function() {
  $.ajax({
    type: "GET",
    url: "/update_called",
    data: {
      prospect_id: $("#prospect").val()
    },
      dataType: "json"
    }).done(function (data) {
      console.log("successfully updated called")
      }
    }).fail(function() {
  alert("failed to update called");
  });
}