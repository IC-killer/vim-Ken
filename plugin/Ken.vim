function! Translate()
	let query_api = "http://fanyi.youdao.com/translate?&doctype=json&type=AUTO&i="
	let current_cursor_word = expand("<cword>")

	"call popup_notification(system("curl -s \"".query_api.current_cursor_word."\""." | jq-win64 \".translateResult[0][0].tgt\""),#{pos:'center'})
	call popup_atcursor(system("curl -s \"".query_api.current_cursor_word."\""." | jq-win64 \".translateResult[0][0].tgt\""),{})
endfunction

command! Ken call Translate()
