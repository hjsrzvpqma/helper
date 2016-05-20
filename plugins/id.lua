do function run(msg, matches)
if matches[1]:lower() == 'id' then
local text = "*Your ID* : _"..msg.from.id"_\n*Group ID* : _"msg.to.id"_"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
if matches[1]:lower() == 'id' and is_sudo(msg) then
local text = "*my Sudo*\n*Your ID* : _"..msg.from.id"_\n*Group ID* : _"msg.to.id"_"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
end
return {
description = "show your id",
usage = "!id : show your userid and information",
patterns = {
"^[!/#]([Ii][Dd])$",
"^[Ii][Dd]$",
},
run = run
}
end
