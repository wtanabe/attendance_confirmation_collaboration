window.addEventListener('load', function() {
 
    // echo 'Hello World';

    

    $('#mycalendar').monthly();

 //    var add_repeat_switch = document.getElementById('add_repeat_switch');
	// add_item.addEventListener("click",create_item);

	$('.monthly-day-event').append("<div></div>");

	$('.monthly-day-event').on("click", function(event){
		var month_array = $('.monthly-header-title-date').text().split(' ');
		var month = month_array[0].replace("月","")
		var day = $(this).attr("data-number");
		console.log(day);
		var attend_input_table = document.getElementById('attend-input-table');
        html_content = 
  //       '<div class="attend-input">' +
		// `<input type="text" value="${month[0]}/${day}"></input>` +
		// '<input type="text" name=""></input>' +
		// '<input type="text" name=""></input>' +
		// '</div>';
		'<tr>' +
		`<td><input type="text" class="attend-input-schedule" value="${month[0]}/${day}" readonly></input></td>` +
		'<td><input type="text" class="attend-input-comment" name=""></input></td>' +
		'<td><input type="text" class="attend-input-schedule-delete" name=""></input></td>' +
		'</tr>';
		$('#attend-input-table').append(html_content);
		// created.insertAdjacentHTML('afterbegin',html_content);
	});

    // $(document.body).on("click touchstart", parent + " .monthly-day-event", function (event) {
    // 	console.log("test");
    // });

	console.log("test");
  //   $(document.body).on("click touchstart", parent + " .monthly-day", function (event) {
  //   	console.log("aaa");
  //   	if(options.mode === "event" && options.eventList) {
		// 		// var	theList = $(parent + " .monthly-event-list"),
		// 		// 	myElement = document.getElementById(uniqueId + "day" + whichDay),
		// 		// 	topPos = myElement.offsetTop;
		// 		// theList.show();
		// 		// theList.css("transform");
		// 		// theList.css("transform", "scale(1)");
		// 		// $(parent + ' .monthly-list-item[data-number="' + whichDay + '"]').show();
		// 		// theList.scrollTop(topPos);
		// 		// viewToggleButton();
		// 		// if(!options.linkCalendarToEventUrl) {
		// 		// 	event.preventDefault();
		// 		// }
		// 	// If picker, pick date
		// 	console.log("bbb");
		// }
  //   });

})