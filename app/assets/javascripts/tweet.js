$(function () {
  $(".confirm").on('click', function() {
    if(window.confirm("削除してよろしいですか？")){
        location.href ="/"
    }else{
      window.alert('キャンセルされました');
      return false;
    }
  });
});



