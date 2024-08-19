var picker = $('#button-picker').mobiscroll().datepicker({
  controls: ['calendar'],
  touchUi: false,
  showOnClick: false,
  showOnFocus: false
}).mobiscroll('getInst');

$('#show-picker').click(function () {
  picker.open();
  return false;
});