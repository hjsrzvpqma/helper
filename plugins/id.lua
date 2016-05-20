do function run(msg, matches)
if matches[1]:lower() == 'id' and is_sudo(msg) then
return "[Sudo]️\n#Your ID : "..msg.from.id.."\n#Your name : "..msg.from.print_name.."\n#Group name : "..msg.to.title.."\n#Group ID : "..msg.to.id.."\n#msg ID : "..msg.id.."\n#Your msg : "..msg.text.."\n#Username : @"..msg.from.username
end
if matches[1]:lower() == 'id' and is_admin(msg) then
return "#Admin️\n#Your ID : "..msg.from.id.."\n#Your name : "..msg.from.print_name.."\n#Group name : "..msg.to.title.."\n#Group ID : "..msg.to.id.."\n#msg ID : "..msg.id.."\n#Your msg : "..msg.text.."\n#Username : @"..msg.from.username
end
if matches[1]:lower() == 'id' and is_owner(msg) then
return "#Owner️\n#Your ID : "..msg.from.id.."\n#Your name : "..msg.from.print_name.."\n#Group name : "..msg.to.title.."\n#Group ID : "..msg.to.id.."\n#msg ID : "..msg.id.."\n#Your msg : "..msg.text.."\n#Username : @"..msg.from.username
end
if matches[1]:lower() == 'id' and is_momod(msg) then
return "#Moderator️\n#Your ID : "..msg.from.id.."\n#Your name : "..msg.from.print_name.."\n#Group name : "..msg.to.title.."\n#Group ID : "..msg.to.id.."\n#msg ID : "..msg.id.."\n#Your msg : "..msg.text.."\n#Username : @"..msg.from.username
end
if matches[1]:lower() == 'id' then
local text = "[Member️](https://telegram.me/"..msg.from.username..")\n*Your ID* : _"..msg.from.id.."_\n*Your name* : _"..msg.from.print_name.."_\n*Group name* : _"..msg.to.title.."_\n*Group ID* : _"..msg.to.id.."_\n*msg ID* : _"..msg.id.."_\n*Your msg* : _"..msg.text.."_"
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
