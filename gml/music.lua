--@somerhalder
--t.me/sourcesiran
local function run(msg, matches)
local bot_music = 117678843
if matches[1]:lower() == 'music' then
local function musicbot(arg, data)
if data.results_ and data.results_[0] then
tdcli.sendInlineQueryResultMessage(msg.chat_id_, msg.id_, 0, 1, data.inline_query_id_, data.results_[0].id_)
del_msg(msg.to.id, msg.id)
else
tdcli.sendMessage(msg.chat_id_, msg.id_, 0, 1, nil, '*>|:  : (*\n>*لطفا دوباره تلاش کنید : )*', 1, 'md')
del_msg(msg.to.id, msg.id)
end
end
tdcli.getInlineQueryResults(bot_music, msg.chat_id_, 0, 0, matches[2], 0, musicbot, nil)
del_msg(msg.to.id, msg.id)
end
end
return {
patterns = {
"^(music) (.*)"
},
run = run,
}
