window.addEventListener('load', function() {
  // カレンダを表示
  $('#mycalendar').monthly();

  // 日付ボタンを押下時、カレンダ下の欄に押下した日程、コメント、日程削除ボタンを追加
  $(document).on("click", '.monthly-day-event', function(event){
    var month_array = $('.monthly-header-title-date').text().split(' ');
    var month = month_array[0].replace("月","")
    var day = $(this).attr("data-number");
    var attend_input_table = document.getElementById('attend-input-table');
    html_content = 
    '<tr>' +
    `<td class="attend-td-schedule data-id="1"><input type="text" class="attend-input-schedule" value="${month}/${day}" readonly></input></td>` +
    '<td class="attend-td-comment data-id="1""><input type="text" class="attend-input-comment" name=""></input></td>' +
    '<td class="attend-td-schedule-delete data-id="1"><input type="button" class="attend-input-schedule-delete" name=""></input></td>' +
    '</tr>';
    $('#attend-input-table').append(html_content);
    console.log("aaa");
  });

  $(document).on("click", '.attend-input-schedule-delete', function(event){
    var obj = event.target;
    console.log($(".attend-input-schedule-delete").index(obj));
    $(this).closest('tr').remove();
  });
})