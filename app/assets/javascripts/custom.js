$(document).on('turbolinks:load', function(){
	window.onload = function() {
		document.getElementById("countup-btn").onclick = function() {
			countUp();
		};
		document.getElementById("countdown-btn").onclick = function() {
			countDown();
		};
	}
	var $count = 0;
	function countUp() {
			document.getElementById("output-data").innerHTML = ++$count;
		}
	function countDown() {
		document.getElementById("output-data").innerHTML = --$count;
		}
});
