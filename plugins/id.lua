do function run(msg, matches)
if matches[1]:lower() == 'id' and is_sudo(msg) then
local text = "*[Sudo]*\n*Your ID* : _"..msg.from.id.."_\n*Your name* : _"..msg.from.print_name.."_\n*Group name* : _"..msg.to.title.."_\n*Group ID* : _"..msg.to.id.."_\n*msg ID* : _"..msg.id.."_\n*Your msg* : _"..msg.text.."_"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
if matches[1]:lower() == 'id' and is_admin(msg) then
local text = "*[Admin]*\n*Your ID* : _"..msg.from.id.."_\n*Your name* : _"..msg.from.print_name.."_\n*Group name* : _"..msg.to.title.."_\n*Group ID* : _"..msg.to.id.."_\n*msg ID* : _"..msg.id.."_\n*Your msg* : _"..msg.text.."_"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
if matches[1]:lower() == 'id' and is_owner(msg) then
local text = "*[Owner]*\n*Your ID* : _"..msg.from.id.."_\n*Your name* : _"..msg.from.print_name.."_\n*Group name* : _"..msg.to.title.."_\n*Group ID* : _"..msg.to.id.."_\n*msg ID* : _"..msg.id.."_\n*Your msg* : _"..msg.text.."_"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
if matches[1]:lower() == 'id' and is_momod(msg) then
local text = "*[Moderator]*\n*Your ID* : _"..msg.from.id.."_\n*Your name* : _"..msg.from.print_name.."_\n*Group name* : _"..msg.to.title.."_\n*Group ID* : _"..msg.to.id.."_\n*msg ID* : _"..msg.id.."_\n*Your msg* : _"..msg.text.."_"
send_api_msg(msg, get_receiver_api(msg), text, true, 'md')
end
if matches[1]:lower() == 'id' then
local text = "*[Member️]*\n*Your ID* : _"..msg.from.id.."_\n*Your name* : _"..msg.from.print_name.."_\n*Group name* : _"..msg.to.title.."_\n*Group ID* : _"..msg.to.id.."_\n*msg ID* : _"..msg.id.."_\n*Your msg* : _"..msg.text.."_"
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
