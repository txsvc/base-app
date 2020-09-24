require("semantic-ui-sass")

function dismiss_message() {
  $("i").closest(".message").transition("fade");
}

$(document).ready(function () {
  $("i#dismissable-message").on("click", function () {
    dismiss_message();
  });
});
