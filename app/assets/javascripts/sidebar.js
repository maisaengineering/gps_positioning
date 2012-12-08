
$('sidebar', function(sb) {
  var toggle;
  toggle = function() {
    var state;
    sb.el.toggleClass('hidden');
    state = sb.el.hasClass('hidden');
    return sb.$('#toggle').html(state ? "&laquo;" : "&raquo;");
  };
  return {
    init: function() {
      sb.$('#toggle').click(toggle);
    },
    destroy: function() {}
  };
});
