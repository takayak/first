
$(function() {
	// トップへ戻るボタン
	$('#').click(function() {
		$('html,body').animate({
			'scrollTop' : 0
		}, 'slow');
	});

	// ヘッダー内の<a>タグをクリックしたときのclickイベントを作成してください。
	$('a').click(function() {
		var id = $(this).attr('href');
		var position = $(id).offset().top;
		$('html, body').animate({
			'scrollTop' : position
		}, 600);
	});
});