--[[
#    ▀█████████▄   ▄██████▄     ▄████████    ▄████████
#      ███    ███ ███    ███   ███    ███   ███    ███
#      ███    ███ ███    ███   ███    █▀    ███    █▀
#     ▄███▄▄▄██▀  ███    ███   ███          ███
#    ▀▀███▀▀▀██▄  ███    ███ ▀███████████ ▀███████████ ꒐ Dev : @TH3BOSS
#      ███    ██▄ ███    ███          ███          ███ ꒐ Dev : @OMMMM
#      ███    ███ ███    ███    ▄█    ███    ▄█    ███
#    ▄█████████▀   ▀██████▀   ▄████████▀   ▄████████▀  ꒐ Source TH3BOSS BY @TH3BS
#---------------------------------------------------------------------
]]


---------------Lock ------------------- 
function unlock_replayRn(msg)
if not msg.Director then return "⇠ هذا الامر يخص {المطور,المنشئ,المدير}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_RandomRdod"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الردود مفعل من قبل العشوائيه    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:set(boss.."lock_RandomRdod"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل الردود العشوائيه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end

function lock_replayRn(msg)
if not msg.Director then return "⇠ هذا الامر يخص {المطور,المنشئ,المدير}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_RandomRdod"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الردود العشوائيه معطل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:del(boss.."lock_RandomRdod"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل الردود العشوائيه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end 

---------------Lock ------------------- 
function unlock_KickBan(msg)
if not msg.Creator then return "⇠ هذا الامر يخص {المطور,المنشئ}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_KickBan"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الحظر والطرد مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:set(boss.."lock_KickBan"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل الحظر والطرد بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end

function lock_KickBan(msg)
if not msg.Creator then return "⇠ هذا الامر يخص {المطور,المنشئ}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_KickBan"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الحظر والطرد معطل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:del(boss.."lock_KickBan"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل الحظر والطرد بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end 

---------------Lock ------------------- 
function unlock_rdodSource(msg)
if not msg.Director then return "⇠ هذا الامر يخص {المطور,المنشئ,المدير}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_rdodSource"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ ردود السورس مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:set(boss.."lock_rdodSource"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل ردود السورس بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end

function lock_rdodSource(msg)
if not msg.Director then return "⇠ هذا الامر يخص {المطور,المنشئ,المدير}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_rdodSource"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ ردود السورس معطل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:del(boss.."lock_rdodSource"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل ردود السورس بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end 

---------------Lock check -------------------
function lock_check(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_check"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ التحقق معطل من قبل    \n⇠  من「 "..NameUser.." 」 " )        else 
redis:del(boss.."lock_check"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل التحقق بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_check(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_check"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ التحقق مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " )        else
redis:set(boss.."lock_check"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل التحقق بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

---------------Lock check -------------------
function lock_cleaner(msg)
if not msg.Director then return "⇠ هذا الامر يخص {المطور,المنشئ,المدير}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_cleaner"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ التنظيف التلقائي معطل من قبل    \n⇠  من「 "..NameUser.." 」 " )
else 

redis:del(boss.."lock_cleaner"..msg.chat_id_)
local Cleaner = redis:smembers(boss..":IdsMsgsCleaner:"..msg.chat_id_)
for k,v in pairs(Cleaner) do
redis:del(boss..":SetTimerCleaner:"..msg.chat_id_..v) 
Del_msg(msg.chat_id_,v)
end
redis:del(boss..":IdsMsgsCleaner:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل التنظيف التلقائي بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_cleaner(msg)
if not msg.Director then return "⇠ هذا الامر يخص {المطور,المنشئ,المدير}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_cleaner"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ التنظيف التلقائي مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " )        else
redis:set(boss.."lock_cleaner"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل التنظيف التلقائي بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end


---------------Lock takk------------------- 
function unlock_takkl(msg)
if not msg.Creator then return "⇠ هذا الامر يخص {المطور,المنشئ}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_takkl"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ منشن للكل مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:set(boss.."lock_takkl"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل منشن للكل   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function lock_takkl(msg)
if not msg.Creator then return "⇠ هذا الامر يخص {المطور,المنشئ}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_takkl"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ منشن للكل معطل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:del(boss.."lock_takkl"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل منشن للكل بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end 

---------------Lock left------------------- 
function unlock_leftgroup(msg)
if not msg.Creator then return "⇠ هذا الامر يخص {المطور,المنشئ}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_leftgroup"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ المغادر مفعل من قبله    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:set(boss.."lock_leftgroup"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل المغادره بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function lock_leftgroup(msg)
if not msg.Creator then return "⇠ هذا الامر يخص {المطور,المنشئ}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_leftgroup"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ المغادره معطل من قبل    \n⇠  من「 "..NameUser.." 」 " )
else
redis:del(boss.."lock_leftgroup"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل المغادره بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end 
end,{msg=msg})
end 


---------------Lock Protection------------------- 
function unlock_AntiEdit(msg)
if not msg.SuperCreator then return "⇠ هذا الامر يخص {المنشئ الاساسي,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."antiedit"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الحمايه مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:set(boss.."antiedit"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل الحمايه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function lock_AntiEdit(msg)
if not msg.SuperCreator then return "⇠ هذا الامر يخص {المنشئ الاساسي,المطور}  بس  " end 
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."antiedit"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الحمايه معطل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:del(boss.."antiedit"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل الحمايه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end 

------Lock id photo ------------------- 
function unlock_idphoto(msg)
if not msg.Director  then return "⇠ هذا الامر يخص {المدير,المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."idphoto"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الايدي بالصوره مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:set(boss.."idphoto"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل الايدي بالصوره بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function lock_idphoto(msg)
if not msg.Director  then return "⇠ هذا الامر يخص {المدير,المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."idphoto"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الايدي بالصوره معطل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:del(boss.."idphoto"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل الايدي بالصوره بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end
------Lock link Group ------------------- 
function unlock_linkk(msg)
if not msg.Creator then return "⇠ هذا الامر يخص {المطور,المنشئ}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_linkk"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الرابط مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:set(boss.."lock_linkk"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل الرابط بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function lock_linkk(msg)
if not msg.Creator then return "⇠ هذا الامر يخص {المطور,المنشئ}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_linkk"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الرابط معطل من قبل     \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:del(boss.."lock_linkk"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل الرابط بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end
------Lock waring ------------------- 
function unlock_waring(msg)
if not msg.Admin then return "⇠ هذا الامر يخص {الادمن,المدير,المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_woring"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ التحذير مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:set(boss.."lock_woring"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل التحذير بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function lock_waring(msg)
if not msg.Admin then return "⇠ هذا الامر يخص {الادمن,المدير,المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_woring"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ التحذير معطل من قبل     \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:del(boss.."lock_woring"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل التحذير بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end
------Lock id------------------- 
function lock_ID(msg)
if not msg.Admin then return "⇠ هذا الامر يخص {الادمن,المدير,المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_id"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الايدي معطل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:del(boss.."lock_id"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل الايدي بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end

function unlock_ID(msg)
if not msg.Admin then return "⇠ هذا الامر يخص {الادمن,المدير,المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_id"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الايدي مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:set(boss.."lock_id"..msg.chat_id_,true)  
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل الايدي بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end
------Lock welcome------------------- 
function unlock_Welcome(msg)
if not msg.Admin then return "⇠ هذا الامر يخص {الادمن,المدير,المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."welcome:get"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الترحيب مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else redis:set(boss.."welcome:get"..msg.chat_id_,true)  
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل الترحيب بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end

function lock_Welcome(msg)
if not msg.Admin then return "⇠ هذا الامر يخص {الادمن,المدير,المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."welcome:get"..msg.chat_id_) then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ الترحيب معطل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:del(boss.."welcome:get"..msg.chat_id_) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل الترحيب بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end 
end,{msg=msg})
end
------Lock all------------------- 
function lock_All(msg)
if not msg.Creator   then return "⇠ هذا الامر يخص {المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
redis:mset(
boss.."lock_username"..msg.chat_id_,true,
boss.."mute_gif"..msg.chat_id_,true,
boss.."mute_photo"..msg.chat_id_,true,
boss.."mute_audio"..msg.chat_id_,true,
boss.."mute_voice"..msg.chat_id_,true,
boss.."mute_sticker"..msg.chat_id_,true,
boss.."mute_forward"..msg.chat_id_,true,
boss.."mute_contact"..msg.chat_id_,true,
boss.."mute_location"..msg.chat_id_,true,
boss.."mute_document"..msg.chat_id_,true,
boss.."lock_link"..msg.chat_id_,true,
boss.."lock_tag"..msg.chat_id_,true,
boss.."lock_edit"..msg.chat_id_,true,
boss.."lock_spam"..msg.chat_id_,true,
boss.."lock_bots"..msg.chat_id_,true,
boss.."lock_webpage"..msg.chat_id_,true,
boss.."mute_video"..msg.chat_id_,true,
boss.."mute_inline"..msg.chat_id_,true
)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الكل بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end,{msg=msg})

end

function Unlock_All(msg)
if not msg.Creator   then return "⇠ هذا الامر يخص {المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
redis:del(
boss.."lock_username"..msg.chat_id_,
boss.."mute_gif"..msg.chat_id_,
boss.."mute_photo"..msg.chat_id_,
boss.."mute_audio"..msg.chat_id_,
boss.."mute_voice"..msg.chat_id_,
boss.."mute_sticker"..msg.chat_id_,
boss.."mute_forward"..msg.chat_id_,
boss.."mute_contact"..msg.chat_id_,
boss.."mute_location"..msg.chat_id_,
boss.."mute_document"..msg.chat_id_,
boss.."lock_link"..msg.chat_id_,
boss.."lock_tag"..msg.chat_id_,
boss.."lock_edit"..msg.chat_id_,
boss.."lock_spam"..msg.chat_id_,
boss.."lock_bots"..msg.chat_id_,
boss.."lock_webpage"..msg.chat_id_,
boss.."mute_video"..msg.chat_id_,
boss..":tqeed_video:"..msg.chat_id_,
boss..":tqeed_photo:"..msg.chat_id_,
boss..":tqeed_gif:"..msg.chat_id_,
boss..":tqeed_fwd:"..msg.chat_id_,
boss..":tqeed_link:"..msg.chat_id_,
boss.."mute_inline"..msg.chat_id_
)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الكل بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end,{msg=msg})

end
------Lock Media------------------- 
function lock_Media(msg)
if not msg.Creator   then return "⇠ هذا الامر يخص {المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
redis:mset(
boss.."mute_gif"..msg.chat_id_,true,
boss.."mute_photo"..msg.chat_id_,true,
boss.."mute_audio"..msg.chat_id_,true,
boss.."mute_voice"..msg.chat_id_,true,
boss.."mute_sticker"..msg.chat_id_,true,
boss.."mute_video"..msg.chat_id_,true
)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الوسائط بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end,{msg=msg})

end

function Unlock_Media(msg)
if not msg.Creator   then return "⇠ هذا الامر يخص {المنشئ,المطور}  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
redis:del(
boss.."mute_gif"..msg.chat_id_,
boss.."mute_photo"..msg.chat_id_,
boss.."mute_audio"..msg.chat_id_,
boss.."mute_voice"..msg.chat_id_,
boss.."mute_sticker"..msg.chat_id_,
boss.."mute_video"..msg.chat_id_
)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الوسائط بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end,{msg=msg})

end

---------------Lock tqeed video -------------------
function tqeed_video(msg)
if not msg.Admin then return "🚸*꒐ * هذا الامر يخص الادمنيه  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss..":tqeed_video:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الفيديو بالتقييد    \n⇠  من「 "..NameUser.." 」 " )
else
redis:del(boss..":tqeed_video:"..msg.chat_id_)
redis:set(boss..":tqeed_video:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الفيديو بالتقييد بنجاح   \n⇠  من「 "..NameUser.." 」 " )    end
end,{msg=msg})
end

function fktqeed_video(msg)
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not msg.Admin then return "🚸*꒐ * هذا الامر يخص الادمنيه  بس  \n📛" end
if not redis:get(boss..":tqeed_video:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الفيديو بالتقييد    \n⇠  من「 "..NameUser.." 」 " )
else 
redis:del(boss..":tqeed_video:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الفيديو بالتقييد بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

---------------Lock tqeed gif -------------------
function tqeed_gif(msg)
if not msg.Admin then return "🚸*꒐ * هذا الامر يخص الادمنيه  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss..":tqeed_gif:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل المتحركه بالتقييد    \n⇠  من「 "..NameUser.." 」 " )
else
redis:del(boss.."mute_gif"..msg.chat_id_)
redis:set(boss..":tqeed_gif:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل المتحركه بالتقييد بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

function fktqeed_gif(msg)
if not msg.Admin then return "🚸*꒐ * هذا الامر يخص الادمنيه  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss..":tqeed_gif:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل المتحركه بالتقييد    \n⇠  من「 "..NameUser.." 」 " )
else 
redis:del(boss..":tqeed_gif:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح المتحركه بالتقييد بنجاح   \n⇠  من「 "..NameUser.." 」 " )    end
end,{msg=msg})
end

---------------Lock tqeed fwd-------------------
function tqeed_fwd(msg)
if not msg.Admin then return "🚸*꒐ * هذا الامر يخص الادمنيه  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss..":tqeed_fwd:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل التوجيه بالتقييد    \n⇠  من「 "..NameUser.." 」 " )
else
redis:del(boss.."mute_forward"..msg.chat_id_)
redis:set(boss..":tqeed_fwd:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل التوجيه بالتقييد بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

function fktqeed_fwd(msg)
if not msg.Admin then return "🚸*꒐ * هذا الامر يخص الادمنيه  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss..":tqeed_fwd:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل التوجيه  بالتقييد    \n⇠  من「 "..NameUser.." 」 " )
else 
redis:del(boss..":tqeed_fwd:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح التوجيه بالتقييد بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

---------------Lock tqeed link-------------------
function tqeed_link(msg)
if not msg.Admin then return "🚸*꒐ * هذا الامر يخص الادمنيه  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss..":tqeed_link:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الروابط بالتقييد    \n⇠  من「 "..NameUser.." 」 " )
else
redis:set(boss..":tqeed_link:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الروابط بالتقييد بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

function fktqeed_link(msg)
if not msg.Admin then return "🚸*꒐ * هذا الامر يخص الادمنيه  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss..":tqeed_link:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الروابط بالتقييد    \n⇠  من「 "..NameUser.." 」 " )
else 
redis:del(boss..":tqeed_link:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الروابط بالتقييد بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

---------------Lock tqeed photo-------------------
function tqeed_photo(msg)
if not msg.Admin then return "🚸*꒐ * هذا الامر يخص الادمنيه  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss..":tqeed_photo:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الصور بالتقييد    \n⇠  من「 "..NameUser.." 」 " )
else
redis:set(boss..":tqeed_photo:"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الصور بالتقييد بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

function fktqeed_photo(msg)
if not msg.Admin then return "🚸*꒐ * هذا الامر يخص الادمنيه  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss..":tqeed_photo:"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الصور بالتقييد    \n⇠  من「 "..NameUser.." 」 " )
else 
redis:del(boss..":tqeed_photo:"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الصور بالتقييد بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end
---------------Lock twasel-------------------
function lock_twasel(msg)
if not msg.SudoBase then return "🚸*꒐ * هذا الامر يخص المطور الاساسي  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_twasel") then
return sendMsg(msg.chat_id_,msg.id_,"⇠ التواصل معطل من قبل    \n⇠  من「 "..NameUser.." 」 " )
else
redis:set(boss.."lock_twasel",true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل التواصل بنجاح   \n⇠  من「 "..NameUser.." 」 " )    end
end,{msg=msg})
end

function unlock_twasel(msg)
if not msg.SudoBase then return "🚸*꒐ * هذا الامر يخص المطور الاساسي  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_twasel") then
return sendMsg(msg.chat_id_,msg.id_,"⇠ التواصل مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " )
else 
redis:del(boss.."lock_twasel")
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل التواصل بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end


---------------Lock idediit------------------- 
function unlock_idediit(msg)
if not msg.SudoBase then return "⇠ هذا الامر يخص المطور الاساسي  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lockidedit") then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تعيين الايدي للمطور مفعل من قبل   \n⇠  من「 "..NameUser.." 」 " )
else redis:set(boss.."lockidedit",true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل تعيين الايدي للمطور  بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

function lock_idediit(msg)
if not msg.SudoBase then return "⇠ هذا الامر يخص المطور الاساسي  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lockidedit") then 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تعيين الايدي للمطور معطل من قبل    \n⇠  من「 "..NameUser.." 」 " )
else
redis:del(boss.."lockidedit") 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل تعيين الايدي للمطور  بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end 
end,{msg=msg})
end 


---------------Lock bro-------------------
function lock_brod(msg)
if not msg.SudoBase then return "⇠ هذا الامر يخص المطور  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_brod") then
return sendMsg(msg.chat_id_,msg.id_,"⇠ اذاعه المطورين معطل من قبل    \n⇠  من「 "..NameUser.." 」 " )
else
redis:del(boss.."lock_brod")
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل اذاعه المطورين بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end
function unlock_brod(msg)
if not msg.SudoBase then return "⇠ هذا الامر يخص المطور  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_brod") then
return sendMsg(msg.chat_id_,msg.id_,"⇠ اذاعه المطورين مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " )
else 
redis:set(boss.."lock_brod",true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل اذاعه المطورين بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

---------------Lock replay-------------------
function lock_replay(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."replay"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ الردود معطل من قبل    \n⇠  من「 "..NameUser.." 」 " )
else
redis:del(boss.."replay"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل الردود بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

function unlock_replay(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."replay"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ الردود مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " )
else 
redis:set(boss.."replay"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل الردود بنجاح   \n⇠  من「 "..NameUser.." 」 " )
end
end,{msg=msg})
end

---------------Lock bot service-------------------
function lock_service(msg)
if not msg.SudoBase then return "🚸*꒐ * هذا الامر يخص المطور الاساسي  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_service") then
return sendMsg(msg.chat_id_,msg.id_,"⇠ نظام البوت خدمي معطل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:del(boss.."lock_service")
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تعطيل نظام البوت خدمي بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_service(msg)
if not msg.SudoBase then return "🚸*꒐ * هذا الامر يخص المطور الاساسي  بس  \n📛" end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_service") then
return sendMsg(msg.chat_id_,msg.id_,"⇠ نظام البوت خدمي مفعل من قبل    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:set(boss.."lock_service",true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم تفعيل نظام البوت خدمي بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Lock mmno-------------------
function lock_mmno3(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_mmno3"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل السب    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_mmno3"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل السب بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_mmno3(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_mmno3"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل السب    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_mmno3"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح السب بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock pharsi-------------------
function lock_pharsi(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_pharsi"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الفارسيه    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_pharsi"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الفارسيه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_pharsi(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_pharsi"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الفارسيه    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_pharsi"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الفارسيه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock english-------------------
function lock_lang(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_lang"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل  الانقليزيه    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_lang"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل  الانقليزيه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_lang(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_lang"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل  الانقليزيه    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_lang"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح  الانقليزيه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock Link-------------------
function lock_link(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_link"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الروابط    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_link"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الروابط بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_link(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_link"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الروابط    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_link"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الروابط بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock Add-------------------
function lock_Add(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_Add"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الاضافه    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_Add"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الاضافه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_Add(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_Add"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الاضافه    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_Add"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الاضافه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock Tag-------------------
function lock_tag(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_tag"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل التاك (#)    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_tag"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل التاك (#) بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_tag(msg)

if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_tag"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل التاك (#)    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_tag"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح التاك (#) بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Lock UserName-------------------
function lock_username(msg) 

if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_username"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل المعرفات    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_username"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل المعرفات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_username(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_username"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل المعرفات    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_username"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح المعرفات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock Edit-------------------
function lock_edit(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_edit"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل التعديل    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_edit"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل التعديل بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_edit(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_edit"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل التعديل    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_edit"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح التعديل بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock spam-------------------
function lock_spam(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if   redis:get(boss.."lock_spam"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الكلايش    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_spam"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الكلايش بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_spam(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_spam"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الكلايش    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_spam"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الكلايش بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock Flood-------------------
function lock_flood(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_flood"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل التكرار    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_flood"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل التكرار بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_flood(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_flood"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل التكرار    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_flood"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح التكرار بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock Bots-------------------
function lock_bots(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_bots"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل البوتات    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_bots"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل البوتات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_bots(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_bots"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل البوتات    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_bots_by_kick"..msg.chat_id_)
redis:del(boss.."lock_bots"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح البوتات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock Join-------------------
function lock_join(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_join"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الاضافه    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_join"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الاضافه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_join(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_join"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الاضافه    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_join"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الاضافه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock Markdown-------------------
function lock_markdown(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_markdown"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الماركدوان    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_markdown"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الماركدوان بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_markdown(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_markdown"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الماركدوان    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_markdown"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الماركدوان بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Lock Webpage-------------------
function lock_webpage(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_webpage"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الويب    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_webpage"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الويب بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_webpage(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_webpage"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الويب    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_webpage"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الويب بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute Gif-------------------
function mute_gif(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_gif"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل المتحركه    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_gif"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل المتحركه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
Tkml = "/G/?i="
function unmute_gif(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_gif"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل المتحركه    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_gif"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح المتحركه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute Game-------------------
function mute_game(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_game"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الالعاب    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set("mute_game"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الالعاب بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_game(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_game"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الالعاب    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_game"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الالعاب بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute Inline-------------------
function mute_inline(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_inline"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الانلاين    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_inline"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الانلاين بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_inline(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_inline"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الانلاين    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_inline"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الانلاين بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute Text-------------------
function mute_text(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_text"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الدردشه    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_text"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الدردشه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_text(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_text"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الدردشه    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_text"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الدردشه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute photo-------------------
function mute_photo(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_photo"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الصور    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_photo"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الصور بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_photo(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end

GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_photo"..msg.chat_id_)then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الصور    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_photo"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الصور بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end


---------------Mute Video-------------------
function mute_video(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_video"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الفيديو    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_video"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الفيديو بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_video(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_video"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الفيديو    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_video"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الفيديو بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute Audio-------------------
function mute_audio(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_audio"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الصوت    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_audio"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الصوت بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_audio(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_audio"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الصوت    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_audio"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الصوت بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute Voice-------------------
function mute_voice(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_voice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل البصمات    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_voice"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل البصمات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_voice(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_voice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل البصمات    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_voice"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح البصمات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute Sticker-------------------
function mute_sticker(msg) 

if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)

if   redis:get(boss.."mute_sticker"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الملصقات    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_sticker"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الملصقات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_sticker(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_sticker"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الملصقات    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_sticker"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الملصقات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute Contact-------------------
function mute_contact(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_contact"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الجهات    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_contact"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الجهات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_contact(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_contact"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الجهات    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_contact"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الجهات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute Forward-------------------
function mute_forward(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_forward"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل التوجيه    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_forward"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل التوجيه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_forward(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_forward"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل التوجيه    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_forward"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح التوجيه بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute Location-------------------
function mute_location(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_location"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الموقع    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_location"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الموقع بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_location(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_location"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الموقع    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_location"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الموقع بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute Document-------------------
function mute_document(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_document"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الملفات    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_document"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الملفات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_document(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_document"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الملفات    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_document"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الملفات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------Mute TgService-------------------
function mute_tgservice(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_tgservice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الاشعارات    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_tgservice"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الاشعارات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_tgservice(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_tgservice"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الاشعارات    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_tgservice"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الاشعارات بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------Mute Keyboard-------------------
function mute_keyboard(msg) 
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."mute_keyboard"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل الكيبورد    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."mute_keyboard"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل الكيبورد بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unmute_keyboard(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."mute_keyboard"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل الكيبورد    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."mute_keyboard"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح الكيبورد بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

---------------lock_bots_by_kick-------------------
function lock_bots_by_kick(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_bots_by_kick"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل البوتات بالطرد    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_bots"..msg.chat_id_,true)
redis:set(boss.."lock_bots_by_kick"..msg.chat_id_,true)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل البوتات بالطرد بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_bots_by_kick(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_bots_by_kick"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل البوتات بالطرد    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_bots_by_kick"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح البوتات بالطرد بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
---------------locks pin-------------------
function lock_pin(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if redis:get(boss.."lock_pin"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم بالتأكيد قفل التثبيت    \n⇠  من「 "..NameUser.." 」 " ) 
else
redis:set(boss.."lock_pin"..msg.chat_id_,true) 
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم قفل التثبيت بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end

function unlock_pin(msg)
if not msg.Admin then return "⇠ هذا الامر يخص الادمنيه  بس  " end
GetUserID(msg.sender_user_id_,function(arg,data)
msg = arg.msg 
local NameUser   = Hyper_Link_Name(data)
if not redis:get(boss.."lock_pin"..msg.chat_id_) then
return sendMsg(msg.chat_id_,msg.id_,"⇠  مفتوح من قبل التثبيت    \n⇠  من「 "..NameUser.." 」 " ) 
else 
redis:del(boss.."lock_pin"..msg.chat_id_)
return sendMsg(msg.chat_id_,msg.id_,"⇠ تم فتح التثبيت بنجاح   \n⇠  من「 "..NameUser.." 」 " ) 
end
end,{msg=msg})
end
function Flterzhrfa(Name)
Name = tostring(Name)
Name = utf8.gsub(Name,"ﭛ","ي")	
Name = utf8.gsub(Name,"ﺥ","خ")	
Name = utf8.gsub(Name,"ڽ","ن")	
Name = utf8.gsub(Name,"ٽ","ث")	
Name = utf8.gsub(Name,"ڜ","ش")	
Name = utf8.gsub(Name,"ﺵ","ش")	
Name = utf8.gsub(Name,"ﭒ","ي")	
Name = utf8.gsub(Name,"ﮛ","ك")	
Name = utf8.gsub(Name,"ﻡ","م")	
Name = utf8.gsub(Name,"ټ","ت")	
Name = utf8.gsub(Name,"ڼ","ن")	
Name = utf8.gsub(Name,"ﺻ","ص")	
Name = utf8.gsub(Name,"ڝ","ص")	
Name = utf8.gsub(Name,"ﻢ","م")	
Name = utf8.gsub(Name,"ﮑ","ك")	
Name = utf8.gsub(Name,"ﺮ","ر")	
Name = utf8.gsub(Name,"ﺳ","س")	
Name = utf8.gsub(Name,"ٿ","ت")	
Name = utf8.gsub(Name,"ﺦ","خ")	
Name = utf8.gsub(Name,"ڞ","ض")	
Name = utf8.gsub(Name,"ﺢ","ح")	
Name = utf8.gsub(Name,"Ξ","")	
Name = utf8.gsub(Name,"ﺶ","ش")	
Name = utf8.gsub(Name,"ﻠ","ا")	
Name = utf8.gsub(Name,"ﻤ","م")	
Name = utf8.gsub(Name,"ﺾ","ض")	
Name = utf8.gsub(Name,"ﺺ","ص")	
Name = utf8.gsub(Name,"ھ","ه")	
Name = utf8.gsub(Name,"۾","م")	
Name = utf8.gsub(Name,"ﺴ","س")	
Name = utf8.gsub(Name,"ﺿ","ض")	
Name = utf8.gsub(Name,"ڟ","ظ")	
Name = utf8.gsub(Name,"ﻧ","ن")	
Name = utf8.gsub(Name,"ﺤ","ح")	
Name = utf8.gsub(Name,"ﺠ","ج")	
Name = utf8.gsub(Name,"ﺷ","ش")	
Name = utf8.gsub(Name,"ﭴ","ج")	
Name = utf8.gsub(Name,"ژ","ز")	
Name = utf8.gsub(Name,"ٹ","ت")	
Name = utf8.gsub(Name,"ع","ع")	
Name = utf8.gsub(Name,"ﺧ","خ")	
Name = utf8.gsub(Name,"ﺯ","ز")	
Name = utf8.gsub(Name,"ڙ","ز")	
Name = utf8.gsub(Name,"ﻦ","ن")	
Name = utf8.gsub(Name,"ٸ","ئ")	
Name = utf8.gsub(Name,"ﮂ","د")	
Name = utf8.gsub(Name,"ﮃ","د")	
Name = utf8.gsub(Name,"ﭵ","ج")	
Name = utf8.gsub(Name,"ڻ","ن")	
Name = utf8.gsub(Name,"ښ","س")	
Name = utf8.gsub(Name,"ٻ","ب")	
Name = utf8.gsub(Name,"ﯙ","و")	
Name = utf8.gsub(Name,"ﮫ","ه")	
Name = utf8.gsub(Name,"ﺸ","ش")	
Name = utf8.gsub(Name,"ﺹ","ص")	
Name = utf8.gsub(Name,"ں","ر")	
Name = utf8.gsub(Name,"ﻥ","ن")	
Name = utf8.gsub(Name,"ڛ","س")	
Name = utf8.gsub(Name,"غ","غ")	
Name = utf8.gsub(Name,"ٺ","ت")	
Name = utf8.gsub(Name,"ﭶ","ج")	
Name = utf8.gsub(Name,"ﭨ","")	
Name = utf8.gsub(Name,"ﻖ","ق")	
Name = utf8.gsub(Name,"ۄ","و")	
Name = utf8.gsub(Name,"ڄ","ج")	
Name = utf8.gsub(Name,"ڥ","ف")	
Name = utf8.gsub(Name,"ﮄ","ذ")	
Name = utf8.gsub(Name,"ﮅ","ذ")	
Name = utf8.gsub(Name,"ﮁ","ج")	
Name = utf8.gsub(Name,"ۅ","و")	
Name = utf8.gsub(Name,"څ","ج")	
Name = utf8.gsub(Name,"ﮋ","ز")	
Name = utf8.gsub(Name,"ﺟ","ج")	
Name = utf8.gsub(Name,"ﻣ","م")	
Name = utf8.gsub(Name,"ﻲ","ي")	
Name = utf8.gsub(Name,"ۆ","و")	
Name = utf8.gsub(Name,"ن","ن")	
Name = utf8.gsub(Name,"چ","خ")	
Name = utf8.gsub(Name,"ا","ا")	
Name = utf8.gsub(Name,"ﻟ","ل")	
Name = utf8.gsub(Name,"ﺣ","ح")	
Name = utf8.gsub(Name,"ﺲ","س")	
Name = utf8.gsub(Name,"ۇ","و")	
Name = utf8.gsub(Name,"ڇ","ج")	
Name = utf8.gsub(Name,"ﺰ","ز")	
Name = utf8.gsub(Name,"ﭪ","ف")	
Name = utf8.gsub(Name,"ڦ","ق")	
Name = utf8.gsub(Name,"ﭩ","")	
Name = utf8.gsub(Name,"ڀ","ب")	
Name = utf8.gsub(Name,"ۀ","ه")	
Name = utf8.gsub(Name,"ـ","")	
Name = utf8.gsub(Name,"ﭓ","ي")	
Name = utf8.gsub(Name,"ﻞ","ل")	
Name = utf8.gsub(Name,"ڡ","ف")	
Name = utf8.gsub(Name,"ء","ء")	
Name = utf8.gsub(Name,"ﻎ","غ")	
Name = utf8.gsub(Name,"ﺙ","ث")	
Name = utf8.gsub(Name,"ﺜ","ث")	
Name = utf8.gsub(Name,"ﻌ","ع")	
Name = utf8.gsub(Name,"ﺚ","ث")	
Name = utf8.gsub(Name,"ﺝ","ج")	
Name = utf8.gsub(Name,"ہ","")	
Name = utf8.gsub(Name,"ځ","ح")	
Name = utf8.gsub(Name,"ﮓ","ك")	
Name = utf8.gsub(Name,"ڠ","غ")	
Name = utf8.gsub(Name,"ﻔ","ف")	
Name = utf8.gsub(Name,"ﻙ","ك")	
Name = utf8.gsub(Name,"ﻜ","ك")	
Name = utf8.gsub(Name,"ﻝ","ل")	
Name = utf8.gsub(Name,"ﻚ","ك")	
Name = utf8.gsub(Name,"ڂ","خ")	
Name = utf8.gsub(Name,"ۂ","")	
Name = utf8.gsub(Name,"ﻕ","ق")	
Name = utf8.gsub(Name,"ڣ","ف")	
Name = utf8.gsub(Name,"ﺘ","ت")	
Name = utf8.gsub(Name,"ﻍ","غ")	
Name = utf8.gsub(Name,"ﻗ","ق")	
Name = utf8.gsub(Name,"ﭻ","ج")	
Name = utf8.gsub(Name,"ﮆ","ذ")	
Name = utf8.gsub(Name,"ﭳ","ج")	
Name = utf8.gsub(Name,"ۃ","ة")	
Name = utf8.gsub(Name,"ڃ","ج")	
Name = utf8.gsub(Name,"ﺞ","ج")	
Name = utf8.gsub(Name,"ڢ","ف")	
Name = utf8.gsub(Name,"ﻘ","ق")	
Name = utf8.gsub(Name,"ی","ى")	
Name = utf8.gsub(Name,"ﮭ","ه")	
Name = utf8.gsub(Name,"ﮧ","")	
Name = utf8.gsub(Name,"ڌ","ذ")	
Name = utf8.gsub(Name,"̭","")	
Name = utf8.gsub(Name,"ﭸ","ج")	
Name = utf8.gsub(Name,"ﭼ","ج")	
Name = utf8.gsub(Name,"ﮯ","")	
Name = utf8.gsub(Name,"ﭬ","ف")	
Name = utf8.gsub(Name,"ڭ","ك")	
Name = utf8.gsub(Name,"ﮉ","ذ")	
Name = utf8.gsub(Name,"ﭭ","ف")	
Name = utf8.gsub(Name,"ۍ","ى")	
Name = utf8.gsub(Name,"ڍ","د")	
Name = utf8.gsub(Name,"ﭧ","")	
Name = utf8.gsub(Name,"ﮊ","ز")	
Name = utf8.gsub(Name,"ﺒ","ب")	
Name = utf8.gsub(Name,"ﭯ","ف")	
Name = utf8.gsub(Name,"ﭽ","ج")	
Name = utf8.gsub(Name,"ﯾ","ي")	
Name = utf8.gsub(Name,"ڬ","ك")	
Name = utf8.gsub(Name,"ﻃ","ط")	
Name = utf8.gsub(Name,"ڎ","ذ")	
Name = utf8.gsub(Name,"ێ","ئ")	
Name = utf8.gsub(Name,"ﻑ","ف")	
Name = utf8.gsub(Name,"ﯼ","ى")	
Name = utf8.gsub(Name,"ﻒ","ف")	
Name = utf8.gsub(Name,"ﮈ","د")	
Name = utf8.gsub(Name,"ﮡ","")	
Name = utf8.gsub(Name,"گ","ك")	
Name = utf8.gsub(Name,"ﻉ","ع")	
Name = utf8.gsub(Name,"ڏ","ذ")	
Name = utf8.gsub(Name,"ﺖ","ت")	
Name = utf8.gsub(Name,"ﭹ","ج")	
Name = utf8.gsub(Name,"ﮬ","ه")	
Name = utf8.gsub(Name,"ڮ","ك")	
Name = utf8.gsub(Name,"ﭺ","ج")	
Name = utf8.gsub(Name,"ﭢ","ت")	
Name = utf8.gsub(Name,"ڈ","د")	
Name = utf8.gsub(Name,"ۈ","و")	
Name = utf8.gsub(Name,"ﭤ","ت")	
Name = utf8.gsub(Name,"ﭠ","ت")	
Name = utf8.gsub(Name,"ﮥ","ه")	
Name = utf8.gsub(Name,"ک","ك")	
Name = utf8.gsub(Name,"ﺑ","ب")	
Name = utf8.gsub(Name,"ۉ","و")	
Name = utf8.gsub(Name,"ډ","د")	
Name = utf8.gsub(Name,"ﺗ","ت")	
Name = utf8.gsub(Name,"ﭥ","ت")	
Name = utf8.gsub(Name,"ﯡ","و")	
Name = utf8.gsub(Name,"ڨ","ق")	
Name = utf8.gsub(Name,"ي","ي")	
Name = utf8.gsub(Name,"ڊ","د")	
Name = utf8.gsub(Name,"ۊ","و")	
Name = utf8.gsub(Name,"ﮮ","")	
Name = utf8.gsub(Name,"ﻋ","ع")	
Name = utf8.gsub(Name,"ﯠ","و")	
Name = utf8.gsub(Name,"ﻊ","ع")	
Name = utf8.gsub(Name,"ﮦ","ه")	
Name = utf8.gsub(Name,"ﮢ","")	
Name = utf8.gsub(Name,"ﻈ","ض")	
Name = utf8.gsub(Name,"ﯿ","ي")	
Name = utf8.gsub(Name,"ۋ","و")	
Name = utf8.gsub(Name,"ڋ","د")	
Name = utf8.gsub(Name,"ﭣ","ت")	
Name = utf8.gsub(Name,"ﮤ","ه")	
Name = utf8.gsub(Name,"ﭮ","ف")	
Name = utf8.gsub(Name,"ﭫ","ف")	
Name = utf8.gsub(Name,"ﯽ","ى")	
Name = utf8.gsub(Name,"ﭡ","ت")	
Name = utf8.gsub(Name,"ﭾ","ج")	
Name = utf8.gsub(Name,"ﭦ","")	
Name = utf8.gsub(Name,"ﻐ","غ")	
Name = utf8.gsub(Name,"ڵ","ل")	
Name = utf8.gsub(Name,"ٵ","ا")	
Name = utf8.gsub(Name,"ﮔ","ك")	
Name = utf8.gsub(Name,"ﭗ","ب")	
Name = utf8.gsub(Name,"ﮜ","ك")	
Name = utf8.gsub(Name,"ﭝ","ي")	
Name = utf8.gsub(Name,"ڔ","ر")	
Name = utf8.gsub(Name,"ﻆ","ظ")	
Name = utf8.gsub(Name,"ﮌ","ر")	
Name = utf8.gsub(Name,"ﻪ","ه")	
Name = utf8.gsub(Name,"ڴ","ك")	
Name = utf8.gsub(Name,"ە","ه")	
Name = utf8.gsub(Name,"ﮗ","ك")	
Name = utf8.gsub(Name,"ﮝ","ك")	
Name = utf8.gsub(Name,"ﮙ","ك")	
Name = utf8.gsub(Name,"ﺓ","ة")	
Name = utf8.gsub(Name,"ڕ","ر")	
Name = utf8.gsub(Name,"ﮚ","ك")	
Name = utf8.gsub(Name,"ﮕ","ك")	
Name = utf8.gsub(Name,"ط","ط")	
Name = utf8.gsub(Name,"ﺪ","د")	
Name = utf8.gsub(Name,"ڷ","ل")	
Name = utf8.gsub(Name,"ٷ","ؤ")	
Name = utf8.gsub(Name,"ﺩ","د")	
Name = utf8.gsub(Name,"ﮘ","ك")	
Name = utf8.gsub(Name,"ﻁ","ط")	
Name = utf8.gsub(Name,"ﯝ","ؤ")	
Name = utf8.gsub(Name,"ﮱ","")	
Name = utf8.gsub(Name,"ﯚ","و")	
Name = utf8.gsub(Name,"ﻂ","ط")	
Name = utf8.gsub(Name,"ﭞ","ت")	
Name = utf8.gsub(Name,"ږ","ر")	
Name = utf8.gsub(Name,"̷","")	
Name = utf8.gsub(Name,"ٶ","ؤ")	
Name = utf8.gsub(Name,"ڶ","ل")	
Name = utf8.gsub(Name,"ﭜ","ي")	
Name = utf8.gsub(Name,"ﮎ","ك")	
Name = utf8.gsub(Name,"ﭲ","ج")	
Name = utf8.gsub(Name,"ڗ","ز")	
Name = utf8.gsub(Name,"ﮞ","")	
Name = utf8.gsub(Name,"̶","")	
Name = utf8.gsub(Name,"ڱ","ك")	
Name = utf8.gsub(Name,"ٱ","ا")	
Name = utf8.gsub(Name,"ر","ر")	
Name = utf8.gsub(Name,"ﺭ","ر")	
Name = utf8.gsub(Name,"ﭙ","ب")	
Name = utf8.gsub(Name,"ﺔ","ة")	
Name = utf8.gsub(Name,"ﺽ","ض")	
Name = utf8.gsub(Name,"ڐ","ذ")	
Name = utf8.gsub(Name,"ې","ي")	
Name = utf8.gsub(Name,"ﺕ","ت")	
Name = utf8.gsub(Name,"ﮟ","")	
Name = utf8.gsub(Name,"ڰ","ك")	
Name = utf8.gsub(Name,"ﻄ","ط")	
Name = utf8.gsub(Name,"ﻩ","ه")	
Name = utf8.gsub(Name,"ﺛ","ث")	
Name = utf8.gsub(Name,"ﮏ","ك")	
Name = utf8.gsub(Name,"ۑ","ى")	
Name = utf8.gsub(Name,"ڑ","ر")	
Name = utf8.gsub(Name,"ﻇ","ظ")	
Name = utf8.gsub(Name,"ٳ","ا")	
Name = utf8.gsub(Name,"ﺡ","ح")	
Name = utf8.gsub(Name,"ڳ","ك")	
Name = utf8.gsub(Name,"ﮪ","ه")	
Name = utf8.gsub(Name,"ﻛ","ك")	
Name = utf8.gsub(Name,"ﺼ","ص")	
Name = utf8.gsub(Name,"ﻅ","ظ")	
Name = utf8.gsub(Name,"ﻬ","ه")	
Name = utf8.gsub(Name,"̐","")	
Name = utf8.gsub(Name,"ﺂ","ا")	
Name = utf8.gsub(Name,"͠","")	
Name = utf8.gsub(Name,"ﮠ","")	
Name = utf8.gsub(Name,"ﻰ","ى")	
Name = utf8.gsub(Name,"ﭿ","ج")	
Name = utf8.gsub(Name,"ﮀ","ج")	
Name = utf8.gsub(Name,"ﮇ","ذ")	
Name = utf8.gsub(Name,"ﮍ","ر")	
Name = utf8.gsub(Name,"ﮐ","ك")	
Name = utf8.gsub(Name,"ﭷ","ج")	
Name = utf8.gsub(Name,"ﮰ","")	
Name = utf8.gsub(Name,"ے","")	
Name = utf8.gsub(Name,"پ","ب")	
Name = utf8.gsub(Name,"ﻨ","ن")	
Name = utf8.gsub(Name,"Ζ","z")	
Name = utf8.gsub(Name,"ﭚ","ب")	
Name = utf8.gsub(Name,"ﭘ","ب")	
Name = utf8.gsub(Name,"ٲ","ا")	
Name = utf8.gsub(Name,"ڲ","ك")	
Name = utf8.gsub(Name,"ﭖ","ب")	
Name = utf8.gsub(Name,"ﭕ","ي")	
Name = utf8.gsub(Name,"ﭔ","ي")	
Name = utf8.gsub(Name,"ﻏ","غ")	
Name = utf8.gsub(Name,"ﻀ","ض")	
Name = utf8.gsub(Name,"ګ","ك")	
Name = utf8.gsub(Name,"ڪ","ك")	
Name = utf8.gsub(Name,"ڧ","ف")	
Name = utf8.gsub(Name,"ڤ","ق")	
Name = utf8.gsub(Name,"ﮖ","ك")	
Name = utf8.gsub(Name,"ﺬ","ذ")	
Name = utf8.gsub(Name,"ڒ","ر")	
Name = utf8.gsub(Name,"ﺨ","خ")	
Name = utf8.gsub(Name,"ﭱ","ف")	
Name = utf8.gsub(Name,"ﻓ","ف")	
Name = utf8.gsub(Name,"ﺱ","س")	
Name = utf8.gsub(Name,"ﺫ","ذ")	
Name = utf8.gsub(Name,"ﺐ","ب")	
Name = utf8.gsub(Name,"ﮩ","")	
Name = utf8.gsub(Name,"ﮨ","")	
Name = utf8.gsub(Name,"ﮣ","")	
Name = utf8.gsub(Name,"ﭰ","ف")	
Name = utf8.gsub(Name,"ۓ","")	
Name = utf8.gsub(Name,"୭","و")	
Name = utf8.gsub(Name,"ﯛ","و")	
Name = utf8.gsub(Name,"ۿ","ه")	
return Name
end

function FlterEmoje(Name)
Name = tostring(Name)
Name = utf8.gsub(Name,"[🤚]","")
return Name
end
