--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local TABLE_TableIndirection = {};
TABLE_TableIndirection["obf_stringchar%0"] = string.char;
TABLE_TableIndirection["obf_stringbyte%0"] = string.byte;
TABLE_TableIndirection["obf_stringsub%0"] = string.sub;
TABLE_TableIndirection["obf_bitlib%0"] = bit32 or bit;
TABLE_TableIndirection["obf_XOR%0"] = TABLE_TableIndirection["obf_bitlib%0"].bxor;
TABLE_TableIndirection["obf_tableconcat%0"] = table.concat;
TABLE_TableIndirection["obf_tableinsert%0"] = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	TABLE_TableIndirection["result%0"] = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		TABLE_TableIndirection["obf_tableinsert%0"](TABLE_TableIndirection["result%0"], TABLE_TableIndirection["obf_stringchar%0"](TABLE_TableIndirection["obf_XOR%0"](TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_STR, i, i + 1)), TABLE_TableIndirection["obf_stringbyte%0"](TABLE_TableIndirection["obf_stringsub%0"](LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return TABLE_TableIndirection["obf_tableconcat%0"](TABLE_TableIndirection["result%0"]);
end
if (not game:IsLoaded() or (4593 <= 2672)) then
	game[LUAOBFUSACTOR_DECRYPT_STR_0("\253\204\218\33\227\191", "\126\177\163\187\69\134\219\167")]:Wait();
end
TABLE_TableIndirection["Players%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\19\193\43\220\249\49\222", "\156\67\173\74\165"));
while not TABLE_TableIndirection["Players%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\24\184\74\23\176\22\74\53\174\76\4", "\38\84\215\41\118\220\70")] do
	task.wait(0.1);
end
if (_G[LUAOBFUSACTOR_DECRYPT_STR_0("\114\23\38\27\240\87\62\55\16\221\95\24\44\1", "\158\48\118\66\114")] or (1168 > 3156)) then
	for _, c in ipairs(_G.BadingHubConns) do
		pcall(function()
			c:Disconnect();
		end);
	end
end
_G[LUAOBFUSACTOR_DECRYPT_STR_0("\137\37\20\63\125\162\211\190\38\51\57\125\171\232", "\155\203\68\112\86\19\197")] = {};
local function trackConn(conn)
	table.insert(_G.BadingHubConns, conn);
	return conn;
end
if (not _G[LUAOBFUSACTOR_DECRYPT_STR_0("\100\220\50\245\78\127\205\237\68\238\51\239\83\113\234\246", "\152\38\189\86\156\32\24\133")] or (572 > 4486)) then
	_G[LUAOBFUSACTOR_DECRYPT_STR_0("\222\86\163\79\242\80\143\83\254\100\162\85\239\94\168\72", "\38\156\55\199")] = 0;
end
_G[LUAOBFUSACTOR_DECRYPT_STR_0("\138\124\120\33\29\115\210\86\170\78\121\59\0\125\245\77", "\35\200\29\28\72\115\20\154")] = _G[LUAOBFUSACTOR_DECRYPT_STR_0("\59\190\213\214\131\43\28\12\189\226\218\158\63\61\22\177", "\84\121\223\177\191\237\76")] + 1;
TABLE_TableIndirection["SESSION%0"] = _G[LUAOBFUSACTOR_DECRYPT_STR_0("\153\87\205\169\52\87\24\212\185\101\204\179\41\89\63\207", "\161\219\54\169\192\90\48\80")];
local function sessionAlive()
	return _G[LUAOBFUSACTOR_DECRYPT_STR_0("\107\67\4\44\71\69\40\48\75\113\5\54\90\75\15\43", "\69\41\34\96")] == TABLE_TableIndirection["SESSION%0"];
end
pcall(function()
	TABLE_TableIndirection["FlatIdent_8D327%0"] = 0;
	TABLE_TableIndirection["existing%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_8D327%0"] == 0) then
			TABLE_TableIndirection["existing%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\159\204\197\15\37\62\181", "\75\220\163\183\106\98")):FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\32\187\143\62\215\5\146\158\53", "\185\98\218\235\87"));
			if TABLE_TableIndirection["existing%0"] then
				TABLE_TableIndirection["existing%0"]:Destroy();
			end
			break;
		end
	end
end);
pcall(function()
	TABLE_TableIndirection["existing%0"] = TABLE_TableIndirection["Players%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\231\51\36\231\210\154\199\61\62\227\204", "\202\171\92\71\134\190")]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\25\205\45\145\44\211\11\157\32", "\232\73\161\76"), 2);
	TABLE_TableIndirection["old%0"] = TABLE_TableIndirection["existing%0"] and TABLE_TableIndirection["existing%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\153\216\70\84\16\188\241\87\95", "\126\219\185\34\61"));
	if ((1404 == 1404) and TABLE_TableIndirection["old%0"]) then
		TABLE_TableIndirection["old%0"]:Destroy();
	end
end);
task.wait(0.15);
TABLE_TableIndirection["UserInputService%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\57\221\91\96\87\121\227\242\24\253\91\96\104\126\240\226", "\135\108\174\62\18\30\23\147"));
TABLE_TableIndirection["TweenService%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\130\254\47\206\22\157\54\213\160\224\41\206", "\167\214\137\74\171\120\206\83"));
TABLE_TableIndirection["RunService%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\185\229\60\110\253\181\157\249\49\88", "\199\235\144\82\61\152"));
TABLE_TableIndirection["HttpService%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\47\2\173\59\52\19\171\61\14\21\188", "\75\103\118\217"));
TABLE_TableIndirection["VirtualInputManager%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\241\93\98\0\172\31\203\125\126\4\172\10\234\85\126\21\190\27\213", "\126\167\52\16\116\217"));
TABLE_TableIndirection["CoreGui%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\235\33\50\133\147\12\245", "\156\168\78\64\224\212\121"));
TABLE_TableIndirection["GuiService%0"] = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\32\251\172\253\2\252\179\199\4\235", "\174\103\142\197"));
TABLE_TableIndirection["LocalPlayer%0"] = TABLE_TableIndirection["Players%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\122\39\92\57\41\110\244\87\49\90\42", "\152\54\72\63\88\69\62")];
task.spawn(function()
	pcall(function()
		TABLE_TableIndirection["requestFunc%0"] = (syn and syn[LUAOBFUSACTOR_DECRYPT_STR_0("\198\193\255\73\209\215\250", "\60\180\164\142")]) or (http and http[LUAOBFUSACTOR_DECRYPT_STR_0("\74\91\20\60\34\254\6", "\114\56\62\101\73\71\141")]) or http_request or (fluxus and fluxus[LUAOBFUSACTOR_DECRYPT_STR_0("\170\236\202\209\189\250\207", "\164\216\137\187")]) or request;
		if not TABLE_TableIndirection["requestFunc%0"] then
			return;
		end
		TABLE_TableIndirection["payload%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\245\52\160\168\255\6\215", "\107\178\134\81\210\198\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\26\15\134\207\164\63\78\170\211\168\120\34\141\193\173\61\28", "\202\88\110\226\166"),[LUAOBFUSACTOR_DECRYPT_STR_0("\198\2\128\242\206\208", "\170\163\111\226\151")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\5\57\166\52\75", "\73\113\80\210\88\46\87")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\108\254\17\245\136\60\217\82\194\153\41\206\7\243\132\40", "\135\225\76\173\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\226\180\191\190", "\199\122\141\216\208\204\221")]=5814783,[LUAOBFUSACTOR_DECRYPT_STR_0("\171\212\21\252\124\229", "\150\205\189\112\144\24")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\43\133\178\73", "\112\69\228\223\44\100\232\113")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\95\50\192\179\110\136\213\18\2", "\230\180\127\103\179\214\28"),[LUAOBFUSACTOR_DECRYPT_STR_0("\154\4\83\83\225", "\128\236\101\63\38\132\33")]=TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\130\168\28\65", "\175\204\201\113\36\214\139")],[LUAOBFUSACTOR_DECRYPT_STR_0("\78\194\57\213\10\66", "\100\39\172\85\188")]=true},{[LUAOBFUSACTOR_DECRYPT_STR_0("\163\121\180\133", "\83\205\24\217\224")]=LUAOBFUSACTOR_DECRYPT_STR_0("\185\133\248\46\227\215\141\20\194", "\93\134\165\173"),[LUAOBFUSACTOR_DECRYPT_STR_0("\168\243\205\215\63", "\30\222\146\161\162\90\174\210")]=tostring(TABLE_TableIndirection["LocalPlayer%0"].UserId),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\64\124\3\235\75", "\106\133\46\16")]=true},{[LUAOBFUSACTOR_DECRYPT_STR_0("\86\33\126\249", "\32\56\64\19\156\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\5\136\194\87\87\247", "\224\58\168\133\54\58\146"),[LUAOBFUSACTOR_DECRYPT_STR_0("\79\87\71\232\112", "\107\57\54\43\157\21\230\231")]=tostring(game.PlaceId),[LUAOBFUSACTOR_DECRYPT_STR_0("\210\133\29\252\183\217", "\175\187\235\113\149\217\188")]=true}},[LUAOBFUSACTOR_DECRYPT_STR_0("\58\160\142\88\230\107", "\24\92\207\225\44\131\25")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\95\214\160\88", "\29\43\179\216\44\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\159\216\36\69\179\222\96\100\168\219\96\1\253\252\56\73\190\204\52\69\178\215\96\96\178\222", "\44\221\185\64")},[LUAOBFUSACTOR_DECRYPT_STR_0("\21\238\69\90\96\21\230\69\79", "\19\97\135\40\63")]=DateTime.now():ToIsoDate()}}};
		TABLE_TableIndirection["requestFunc%0"]({[LUAOBFUSACTOR_DECRYPT_STR_0("\155\78\63", "\81\206\60\83\91\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\70\191\196\98\60\153\2\235\74\162\195\113\32\209\73\234\77\164\221\61\46\211\68\235\89\174\210\122\32\204\70\183\1\250\132\42\123\146\26\240\30\252\129\39\119\149\25\253\28\254\128\37\96\150\0\252\97\161\195\42\35\243\30\190\101\164\249\119\46\228\89\165\87\143\233\89\26\201\65\179\99\142\246\81\33\241\90\129\119\169\213\121\3\209\24\233\74\174\136\115\22\235\76\182\79\129\229\71\7\211\127\149\105\163\246\123\10\236\70\188\120", "\196\46\203\176\18\79\163\45"),[LUAOBFUSACTOR_DECRYPT_STR_0("\149\39\106\22\43\255", "\143\216\66\30\126\68\155")]=LUAOBFUSACTOR_DECRYPT_STR_0("\154\231\62\255", "\129\202\168\109\171\165\195\183"),[LUAOBFUSACTOR_DECRYPT_STR_0("\10\93\54\220\219\6\245", "\134\66\56\87\184\190\116")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\31\62\7\175\28\229\53\120\8\40\25\190", "\85\92\81\105\219\121\139\65")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\163\64\73\117\220\252\167\89\74\114\144\247\160\95\75", "\191\157\211\48\37\28")},[LUAOBFUSACTOR_DECRYPT_STR_0("\253\16\240\5", "\90\191\127\148\124")]=TABLE_TableIndirection["HttpService%0"]:JSONEncode(TABLE_TableIndirection["payload%0"])});
	end);
end);
TABLE_TableIndirection["Theme%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\90\134\45\28\127\149\33\2\118\131", "\119\24\231\78")]=Color3.fromRGB(7, 6, 11),[LUAOBFUSACTOR_DECRYPT_STR_0("\177\56\183\76\221\67\20", "\113\226\77\197\42\188\32")]=Color3.fromRGB(13, 11, 19),[LUAOBFUSACTOR_DECRYPT_STR_0("\9\3\230\179\59\21\241\148\54\2", "\213\90\118\148")]=Color3.fromRGB(19, 16, 27),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\59\166\80\76\88\43\156\89\91\94\60", "\45\59\78\212\54")]=Color3.fromRGB(26, 22, 36),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\89\145\143\131\60", "\144\112\54\227\235\230\78\205")]=Color3.fromRGB(42, 35, 58),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\39\29\248\213\73\148\36\0\235", "\59\211\72\111\156\176")]=Color3.fromRGB(80, 50, 110),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\132\224\40\64\147", "\77\46\231\131")]=Color3.fromRGB(220, 55, 95),[LUAOBFUSACTOR_DECRYPT_STR_0("\155\87\181\69\180\64\148", "\32\218\52\214")]=Color3.fromRGB(170, 45, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\20\50\173\255\164\118\85\72\3", "\58\46\119\81\200\145\208\37")]=Color3.fromRGB(220, 55, 95),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\158\49\168\160\184\56\63", "\86\75\236\80\204\201\221")]=ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(235, 55, 85)),ColorSequenceKeypoint.new(0.45, Color3.fromRGB(195, 50, 145)),ColorSequenceKeypoint.new(1, Color3.fromRGB(150, 45, 215))}),[LUAOBFUSACTOR_DECRYPT_STR_0("\85\83\118\129\247\142\124\85\84\138\241\135", "\235\18\33\23\229\158")]=ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(80, 180, 255)),ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 80, 255))}),[LUAOBFUSACTOR_DECRYPT_STR_0("\100\191\217\175", "\219\48\218\161")]=Color3.fromRGB(240, 235, 250),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\116\100\93\246\90\244\225\117", "\128\132\17\28\41\187\47")]=Color3.fromRGB(110, 100, 135),[LUAOBFUSACTOR_DECRYPT_STR_0("\53\55\30\46\121\8\63", "\61\97\82\102\90")]=Color3.fromRGB(55, 48, 72),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\59\168\72\194\68\13", "\105\204\78\203\43\167\55\126")]=Color3.fromRGB(48, 210, 140),[LUAOBFUSACTOR_DECRYPT_STR_0("\128\184\49\17\1", "\49\197\202\67\126\115\100\167")]=Color3.fromRGB(255, 80, 80),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\73\221\120", "\62\87\59\191\73\224\54")]=Color3.fromRGB(180, 40, 100),[LUAOBFUSACTOR_DECRYPT_STR_0("\200\16\248\155", "\169\135\98\154")]=Color3.fromRGB(100, 30, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\228\101\38\7", "\168\171\23\68\52\157\83")]=Color3.fromRGB(40, 80, 200)};
TABLE_TableIndirection["KnownStands%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\195\116\244\185\45\40\149\180\67\240\189\42\63\147", "\231\148\17\149\205\69\77"),LUAOBFUSACTOR_DECRYPT_STR_0("\161\169\210\249\94\236", "\159\224\199\167\155\55"),LUAOBFUSACTOR_DECRYPT_STR_0("\196\231\61\192\183\195\48\211\227\250\50\199\250", "\178\151\147\92"),LUAOBFUSACTOR_DECRYPT_STR_0("\184\245\73\114\37\67\104\128\249\0\114\58\69\125\132\189\122\61\30\88\123\139\248", "\26\236\157\44\82\114\44"),LUAOBFUSACTOR_DECRYPT_STR_0("\30\38\208\27\29\33\199\87\46\110\157\115\35\41\221\27\28\33\217\79\43\41\208\18", "\59\74\78\181"),LUAOBFUSACTOR_DECRYPT_STR_0("\17\217\95\26\132\42\195\86\94", "\211\69\177\58\58"),LUAOBFUSACTOR_DECRYPT_STR_0("\128\237\112\225\236\216\185\228\114\240", "\171\215\133\25\149\137"),LUAOBFUSACTOR_DECRYPT_STR_0("\214\192\59\238\234\112\207\76\224\195\55", "\34\129\168\82\154\143\80\156"),LUAOBFUSACTOR_DECRYPT_STR_0("\166\255\30\4\71\64", "\233\229\210\83\107\40\46"),LUAOBFUSACTOR_DECRYPT_STR_0("\234\75\60\209\69\226\80\59\219\22\206\76", "\101\161\34\82\182"),LUAOBFUSACTOR_DECRYPT_STR_0("\197\12\93\251\155\235\140\110\192\8\88\232\222\236", "\78\136\109\57\158\187\130\226"),LUAOBFUSACTOR_DECRYPT_STR_0("\14\42\235\225\50\58\185\217\63\37\252", "\145\94\95\153"),LUAOBFUSACTOR_DECRYPT_STR_0("\201\197\17\149\102\182\243\201", "\215\157\173\116\181\46"),LUAOBFUSACTOR_DECRYPT_STR_0("\22\166\138\232\195\117\144\130\243\215\58\186\143", "\186\85\212\235\146"),"Magician's Red","Magician's Red",LUAOBFUSACTOR_DECRYPT_STR_0("\229\142\26\250\121\203\64\210\132\4\247\60\224\91\199", "\56\162\225\118\158\89\142"),LUAOBFUSACTOR_DECRYPT_STR_0("\119\12\204\163\39\202\28\52\213\170\39\214", "\184\60\101\160\207\66"),LUAOBFUSACTOR_DECRYPT_STR_0("\3\135\120\252\25\141\104\252\18\138\117\176\61\139\60\140\52\146\108\185\35", "\220\81\226\28"),LUAOBFUSACTOR_DECRYPT_STR_0("\32\193\141\245\239\135\53\199\135\254", "\167\115\181\226\155\138")};
TABLE_TableIndirection["StandColors%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\209\54\230\78\59\65\202\227\54\238\82\110\124", "\166\130\66\135\60\27\17")]=Color3.fromRGB(138, 43, 226),[LUAOBFUSACTOR_DECRYPT_STR_0("\112\66\203\53\7\75\88\194\113", "\80\36\42\174\21")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\24\50\58\121\31\37\118\74\92\119\82\71\23\63\58\120\31\59\110\79\23\50", "\26\46\112\87")]=Color3.fromRGB(255, 202, 26),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\42\165\115\255\156\87\189\180\48\164\122", "\212\217\67\203\20\223\223\37")]=Color3.fromRGB(220, 20, 60),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\159\169\200\163\205\140\219\187\128\167\220\190", "\178\218\237\200")]=Color3.fromRGB(255, 105, 180),[LUAOBFUSACTOR_DECRYPT_STR_0("\145\186\234\212\246\144\254\192\179\167\239\213\184\182\227", "\176\214\213\134")]=Color3.fromRGB(255, 215, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\217\172\178\209\232\95\87\180\133\179\213\190\83\87", "\57\148\205\214\180\200\54")]=Color3.fromRGB(255, 250, 205),[LUAOBFUSACTOR_DECRYPT_STR_0("\37\245\60\32\115\1\243\52\63\115", "\22\114\157\85\84")]=Color3.fromRGB(210, 186, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\243\195\26\208\88\182\155\202\202\24\193", "\200\164\171\115\164\61\150")]=Color3.fromRGB(200, 200, 200),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\224\2\75\135\178\241\16\86", "\227\222\148\99\37")]=Color3.fromRGB(150, 150, 150),[LUAOBFUSACTOR_DECRYPT_STR_0("\4\87\83\226\241\54\64\18\196\252\35\93\64\226", "\153\83\50\50\150")]=Color3.fromRGB(143, 248, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\111\115\119\92\91\164\89\29\85\123\21\127\167\68\29\70\118\12\99\174\95", "\45\61\22\19\124\19\203")]=Color3.fromRGB(242, 239, 78),[LUAOBFUSACTOR_DECRYPT_STR_0("\241\7\31\229\14\117\249\233\19\23\240", "\217\161\114\109\149\98\16")]=Color3.fromRGB(136, 41, 230),[LUAOBFUSACTOR_DECRYPT_STR_0("\51\46\45\126\181\103", "\20\114\64\88\28\220")]=Color3.fromRGB(178, 86, 240),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\8\222\184\253\194\253\0\20\215\177\246", "\221\81\97\178\212\152\176")]=Color3.fromRGB(255, 51, 51),["Magician's Red"]=Color3.fromRGB(255, 76, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\249\239\24\187\50\204\233\25", "\122\173\135\125\155")]=Color3.fromRGB(66, 79, 255),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\140\45\182\48\63", "\168\228\161\96\217\95\81")]=Color3.fromRGB(165, 255, 89),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\197\33\82\42\23\253\195\43\89", "\55\187\177\78\60\79")]=Color3.fromRGB(184, 242, 239)};
TABLE_TableIndirection["MouseKeyNames%0"] = {[Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\24\221\90\249\111\193\144\56\218\107\242\86\202", "\224\77\174\63\139\38\175")][LUAOBFUSACTOR_DECRYPT_STR_0("\169\78\77\61\129\99\77\58\144\78\86\127", "\78\228\33\56")]]=LUAOBFUSACTOR_DECRYPT_STR_0("\227\92\227", "\229\174\30\210\99"),[Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\46\254\131\67\196\51\41\14\249\178\72\253\56", "\89\123\141\230\49\141\93")][LUAOBFUSACTOR_DECRYPT_STR_0("\222\126\227\31\21\104\230\101\226\3\30\24", "\42\147\17\150\108\112")]]=LUAOBFUSACTOR_DECRYPT_STR_0("\34\132\127", "\136\111\198\77\31\135"),[Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\55\26\162\68\148\234\7\188\22\61\190\70\184", "\201\98\105\199\54\221\132\119")][LUAOBFUSACTOR_DECRYPT_STR_0("\148\3\150\50\7\23\185\173\24\140\47\81", "\204\217\108\227\65\98\85")]]=LUAOBFUSACTOR_DECRYPT_STR_0("\115\225\166", "\160\62\163\149\133\76")};
pcall(function()
	TABLE_TableIndirection["FlatIdent_24A02%0"] = 0;
	while true do
		if (TABLE_TableIndirection["FlatIdent_24A02%0"] == 0) then
			TABLE_TableIndirection["MouseKeyNames%0"][Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\227\179\8\61\234\216\176\24\59\247\207\176\8", "\163\182\192\109\79")][LUAOBFUSACTOR_DECRYPT_STR_0("\25\41\21\211\240\22\51\20\212\250\58\114", "\149\84\70\96\160")]] = LUAOBFUSACTOR_DECRYPT_STR_0("\21\36\89", "\141\88\102\109");
			TABLE_TableIndirection["MouseKeyNames%0"][Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\134\64\207\98\51\51\69\212\167\103\211\96\31", "\161\211\51\170\16\122\93\53")][LUAOBFUSACTOR_DECRYPT_STR_0("\214\161\167\59\254\140\167\60\239\161\188\125", "\72\155\206\210")]] = LUAOBFUSACTOR_DECRYPT_STR_0("\107\88\1", "\83\38\26\52\110");
			break;
		end
	end
end);
local function formatKeyName(eItem)
	TABLE_TableIndirection["FlatIdent_7126A%0"] = 0;
	while true do
		if (TABLE_TableIndirection["FlatIdent_7126A%0"] == 0) then
			if (eItem and eItem[LUAOBFUSACTOR_DECRYPT_STR_0("\125\25\50\75\108\14\55\67", "\38\56\119\71")]) then
				if ((eItem == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\216\234\65\245\42\82\246", "\54\147\143\56\182\69")][LUAOBFUSACTOR_DECRYPT_STR_0("\227\143\244\71\208\193\143", "\191\182\225\159\41")]) or (3748 < 2212)) then
					return LUAOBFUSACTOR_DECRYPT_STR_0("\5\29\38\80", "\162\75\114\72\53\235\231");
				end
				if (eItem[LUAOBFUSACTOR_DECRYPT_STR_0("\169\50\81\239\103\27\156\57", "\98\236\92\36\130\51")] == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\143\28\21\153\74\172\176", "\80\196\121\108\218\37\200\213")]) then
					return eItem[LUAOBFUSACTOR_DECRYPT_STR_0("\46\114\15\122", "\234\96\19\98\31\43\110")];
				elseif (((eItem[LUAOBFUSACTOR_DECRYPT_STR_0("\35\17\71\202\152\107\155\3", "\235\102\127\50\167\204\18")] == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\101\178\240\49\109\32\64\180\225\23\93\62\85", "\78\48\193\149\67\36")]) and TABLE_TableIndirection["MouseKeyNames%0"][eItem]) or (1180 == 2180)) then
					return TABLE_TableIndirection["MouseKeyNames%0"][eItem];
				end
			end
			return LUAOBFUSACTOR_DECRYPT_STR_0("\5\16\139\22\78\39\16", "\33\80\126\224\120");
		end
	end
end
local function isBindPressed(input, bindState)
	if (not bindState or (bindState == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\199\173\26\231\83\232\173", "\60\140\200\99\164")][LUAOBFUSACTOR_DECRYPT_STR_0("\178\250\15\40\173\144\250", "\194\231\148\100\70")])) then
		return false;
	end
	if (bindState and bindState[LUAOBFUSACTOR_DECRYPT_STR_0("\99\66\212\174\194\209\86\73", "\168\38\44\161\195\150")]) then
		if (bindState[LUAOBFUSACTOR_DECRYPT_STR_0("\165\242\151\123\4\241\166\19", "\118\224\156\226\22\80\136\214")] == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\105\235\64\163\77\234\92", "\224\34\142\57")]) then
			return input[LUAOBFUSACTOR_DECRYPT_STR_0("\245\162\220\254\124\245\88", "\110\190\199\165\189\19\145\61")] == bindState;
		elseif ((4090 < 4653) and (bindState[LUAOBFUSACTOR_DECRYPT_STR_0("\255\229\98\229\191\222\202\238", "\167\186\139\23\136\235")] == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\47\166\141\31\51\187\152\24\14\129\145\29\31", "\109\122\213\232")])) then
			return input[LUAOBFUSACTOR_DECRYPT_STR_0("\219\228\167\34\199\249\178\37\250\195\187\32\235", "\80\142\151\194")] == bindState;
		end
	end
	return false;
end
TABLE_TableIndirection["state%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\47\201\116\29", "\44\99\166\23")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\80\248\42\100", "\196\28\151\73\86\83")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\216\6\48\65", "\22\147\99\73\112\226\56\120")]=Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\147\112\251\214\130\188\112", "\237\216\21\130\149")]['Y'],[LUAOBFUSACTOR_DECRYPT_STR_0("\169\75\70\13", "\62\226\46\63\63\208\169")]=Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\206\28\76\160\16\9\42", "\62\133\121\53\227\127\109\79")]['U'],[LUAOBFUSACTOR_DECRYPT_STR_0("\36\27\53\242\218\171\137\21\13", "\194\112\116\82\149\182\206")]=Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\18\173\85\59\207\230\11", "\110\89\200\44\120\160\130")][LUAOBFUSACTOR_DECRYPT_STR_0("\153\202\76\78\87\121\51\68\173\215", "\45\203\163\43\38\35\42\91")],[LUAOBFUSACTOR_DECRYPT_STR_0("\230\181\235\34\139\162\127\215\156", "\52\178\229\188\67\231\201")]=Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\10\68\73\39\248\88\38", "\67\65\33\48\100\151\60")][LUAOBFUSACTOR_DECRYPT_STR_0("\234\233\165\214\252\200\233", "\147\191\135\206\184")],[LUAOBFUSACTOR_DECRYPT_STR_0("\161\27\150", "\210\228\72\198\161\184\51")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\23\92\231\31\85\207\36\68\195\31\96\199\34\64\252\30", "\174\86\41\147\112\19")]=LUAOBFUSACTOR_DECRYPT_STR_0("\121\5\129\4\50", "\203\59\96\237\107\69\111\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\5\3\184\238\23\241\197\41\50\165\242\37\241\217\39\19", "\183\68\118\204\129\81\144")]=7.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\61\168\124\225\8\150\11\169\93\235\9\145", "\226\110\205\16\132\107")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\202\207\236", "\33\139\163\128\185")]=true},[LUAOBFUSACTOR_DECRYPT_STR_0("\100\93\8\219\84\76\1\218\116\87\10\216\94\95", "\190\55\56\100")]=LUAOBFUSACTOR_DECRYPT_STR_0("\101\170\48\27\16\247\189\24\225", "\147\54\207\92\126\115\131"),[LUAOBFUSACTOR_DECRYPT_STR_0("\44\36\33\114\61\72\40\28\60\110\30\119\2\63", "\30\109\81\85\29\109")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\222\100\64\185\16\223\238\242\66\77\165\34\219\241", "\156\159\17\52\214\86\190")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\143\250\169\179\158\227\188\165\171\253\155\189\188\226", "\220\206\143\221")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\181\120\33\18\219\216\215\130\77\33\22\193\201\192", "\178\230\29\77\119\184\172")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\187\6\30\116\236\187\240\68", "\152\149\222\106\123\23"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\51\226\76\133\209\39\239\70\167\249\47\229\87\180\211\37\243", "\213\189\70\150\35")]=7.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\110\64\96\7\127\89\117\17\74\71\68\7\92\92\96\1\64\91", "\104\47\53\20")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\73\141\19\171", "\111\195\44\225\124\220"),[LUAOBFUSACTOR_DECRYPT_STR_0("\235\67\12\118\168\191\221\66\50\114\162\175", "\203\184\38\96\19\203")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\118\117\68\205\45\61\55\15", "\174\89\19\25\33"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\7\70\65\196\147\10\61\6\96\79\254\131", "\107\79\114\50\46\151\231")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\179\161\38\184\56\190\196", "\160\89\198\213\73\234\89\215")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\105\100\160\241\247\77\101\166\231\247\73\120\176", "\165\40\17\212\158")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\196\204\28\60\20\228\208\12\23\47\246\205\9\61\37\224", "\70\133\185\104\83")]=7.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\48\117\115\43\197\15\96\74\43\203\8\64\64", "\169\100\37\36\74")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\52\183\149\81\12\140\145\64\5\130\166", "\48\96\231\194")]=0.2,[LUAOBFUSACTOR_DECRYPT_STR_0("\235\124\2\52\60\214\174\129\196\95\10", "\227\168\58\110\77\121\184\207")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\88\26\179\89\130\203\116\160\127", "\197\27\92\223\32\209\187\17")]=50,[LUAOBFUSACTOR_DECRYPT_STR_0("\32\121\207\226\40\90\218", "\155\99\63\163")]=Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\169\212\184\174\182\128\135", "\228\226\177\193\237\217")][LUAOBFUSACTOR_DECRYPT_STR_0("\1\190\40\232\59\167\45", "\134\84\208\67")],[LUAOBFUSACTOR_DECRYPT_STR_0("\36\169\132\84\28\163\141\105\33\128", "\60\115\204\230")]="",[LUAOBFUSACTOR_DECRYPT_STR_0("\208\63\233\120\232\53\224\85\233\59\233\124\226\62", "\16\135\90\139")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\99\113\4\59\65\91\115\121\123\8\54\87", "\24\52\20\102\83\46\52")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\42\35\44\0\203\36\13\33\25\193\35", "\111\164\79\65\68")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\220\129\214\33\229\205\250\139\219\61\254\213", "\138\166\185\227\190\78")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\252\113\199\63\93\44\18\249\117\204\51", "\121\171\20\165\87\50\67")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\241\61\187\62\182\13\205\17\183\34\188\16\208\57\181", "\98\166\88\217\86\217")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\215\227\109\14\163\196\243\245\108\21\131\239\245\228\112\17\146", "\188\150\150\25\97\230")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\233\140\83\7\15\249\223\141\108\21\5\249\217\129\108\22\13\227\222\216", "\141\186\233\63\98\108")]=LUAOBFUSACTOR_DECRYPT_STR_0("\194\239\32\179\38\229\164\98\248", "\69\145\138\76\214"),[LUAOBFUSACTOR_DECRYPT_STR_0("\67\219\136\135\187\37\103\198\157\138\183\19\98\228\140\144\238", "\118\16\175\233\233\223")]=Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\160\129\44\152\225\143\120", "\29\235\228\85\219\142\235")][LUAOBFUSACTOR_DECRYPT_STR_0("\8\218\177\211\120\89\41", "\50\93\180\218\189\23\46\71")],[LUAOBFUSACTOR_DECRYPT_STR_0("\237\161\87\73\71\200\77\218\151\76\69\80\223\64\237\176\90\66\64\142", "\40\190\196\59\44\36\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\64\208\177\249\105\67\114\11", "\109\92\37\188\212\154\29"),[LUAOBFUSACTOR_DECRYPT_STR_0("\55\251\165\205\53\105\19\230\176\192\57\95\22\196\161\218\99", "\58\100\143\196\163\81")]=Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\49\71\58\128\48\77\224", "\110\122\34\67\195\95\41\133")][LUAOBFUSACTOR_DECRYPT_STR_0("\64\191\80\68\217\98\191", "\182\21\209\59\42")]};
TABLE_TableIndirection["globalSeenMobs%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\150\91\201", "\222\215\55\165\125\65")]=true};
TABLE_TableIndirection["isTargetNearby%0"] = false;
TABLE_TableIndirection["currentFarmTarget%0"] = nil;
TABLE_TableIndirection["activeElimTarget%0"] = nil;
TABLE_TableIndirection["UIUpdaters%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\24\222\193\29\254\196\254", "\42\76\177\166\122\146\161\141")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\142\143\28\204\112\120\161\153", "\22\197\234\101\174\25")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\30\56\172\216\115\189\196", "\230\77\84\197\188\22\207\183")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\221\6\201\236\136\174\231\59\234", "\85\153\116\166\156\236\193\144")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\144\229\85\167\198\15\188\229\94", "\96\196\128\45\211\132")]={}};
TABLE_TableIndirection["currentTab%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\29\130\118\90", "\184\85\237\27\63\178\207\212");
TABLE_TableIndirection["isMinimized%0"] = false;
TABLE_TableIndirection["guiVisible%0"] = true;
local function clickButton(btn)
	if (not btn or (2652 < 196)) then
		return;
	end
	pcall(function()
		if ((4135 < 4817) and getconnections) then
			TABLE_TableIndirection["FlatIdent_12703%0"] = 0;
			while true do
				if (TABLE_TableIndirection["FlatIdent_12703%0"] == 2) then
					pcall(function()
						for _, c in ipairs(getconnections(btn.TouchTap)) do
							c:Fire();
						end
					end);
					break;
				end
				if (TABLE_TableIndirection["FlatIdent_12703%0"] == 0) then
					for _, c in ipairs(getconnections(btn.MouseButton1Click)) do
						c:Fire();
					end
					for _, c in ipairs(getconnections(btn.Activated)) do
						c:Fire();
					end
					TABLE_TableIndirection["FlatIdent_12703%0"] = 1;
				end
				if (TABLE_TableIndirection["FlatIdent_12703%0"] == 1) then
					for _, c in ipairs(getconnections(btn.MouseButton1Down)) do
						c:Fire();
					end
					for _, c in ipairs(getconnections(btn.MouseButton1Up)) do
						c:Fire();
					end
					TABLE_TableIndirection["FlatIdent_12703%0"] = 2;
				end
			end
		end
	end);
	if ((272 == 272) and firesignal) then
		TABLE_TableIndirection["FlatIdent_7366E%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_7366E%0"] == 1) then
				pcall(function()
					firesignal(btn.Activated);
				end);
				pcall(function()
					firesignal(btn.TouchTap);
				end);
				break;
			end
			if (0 == TABLE_TableIndirection["FlatIdent_7366E%0"]) then
				pcall(function()
					firesignal(btn.InputBegan, {[LUAOBFUSACTOR_DECRYPT_STR_0("\61\74\12\77\33\87\25\74\28\109\16\79\13", "\63\104\57\105")]=Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\62\148\161\86\34\137\180\81\31\179\189\84\14", "\36\107\231\196")][LUAOBFUSACTOR_DECRYPT_STR_0("\112\186\183\148\88\151\183\147\73\186\172\214", "\231\61\213\194")],[LUAOBFUSACTOR_DECRYPT_STR_0("\60\190\56\97\32\163\45\102\29\158\41\114\29\168", "\19\105\205\93")]=Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\156\27\219\147\22\167\24\203\149\12\189\9\202\132", "\95\201\104\190\225")][LUAOBFUSACTOR_DECRYPT_STR_0("\141\206\198\199\161", "\174\207\171\161")]});
				end);
				pcall(function()
					firesignal(btn.MouseButton1Click);
				end);
				TABLE_TableIndirection["FlatIdent_7366E%0"] = 1;
			end
		end
	end
	pcall(function()
		TABLE_TableIndirection["FlatIdent_7DD24%0"] = 0;
		TABLE_TableIndirection["pos%0"] = nil;
		TABLE_TableIndirection["inset%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_7DD24%0"] == 1) then
				if ((TABLE_TableIndirection["pos%0"]['X'] > 0) and (TABLE_TableIndirection["pos%0"]['Y'] > 0)) then
					TABLE_TableIndirection["FlatIdent_C460%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_C460%0"] == 0) then
							TABLE_TableIndirection["VirtualInputManager%0"]:SendMouseButtonEvent(TABLE_TableIndirection["pos%0"].X, TABLE_TableIndirection["pos%0"]['Y'] + TABLE_TableIndirection["inset%0"]['Y'], 0, true, game, 1);
							task.wait(0.05);
							TABLE_TableIndirection["FlatIdent_C460%0"] = 1;
						end
						if (TABLE_TableIndirection["FlatIdent_C460%0"] == 1) then
							TABLE_TableIndirection["VirtualInputManager%0"]:SendMouseButtonEvent(TABLE_TableIndirection["pos%0"].X, TABLE_TableIndirection["pos%0"]['Y'] + TABLE_TableIndirection["inset%0"]['Y'], 0, false, game, 1);
							break;
						end
					end
				end
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_7DD24%0"] == 0) then
				TABLE_TableIndirection["pos%0"] = btn[LUAOBFUSACTOR_DECRYPT_STR_0("\204\252\30\252\244\194\249\251\61\252\235\222\249\247\2\253", "\183\141\158\109\147\152")] + (btn[LUAOBFUSACTOR_DECRYPT_STR_0("\13\11\245\3\32\28\242\9\31\0\252\9", "\108\76\105\134")] / 2);
				TABLE_TableIndirection["inset%0"] = TABLE_TableIndirection["GuiService%0"]:GetGuiInset();
				TABLE_TableIndirection["FlatIdent_7DD24%0"] = 1;
			end
		end
	end);
end
TABLE_TableIndirection["tpwalkConnection%0"] = nil;
local function updateTPWalk()
	TABLE_TableIndirection["FlatIdent_7F35E%0"] = 0;
	while true do
		if (TABLE_TableIndirection["FlatIdent_7F35E%0"] == 0) then
			if TABLE_TableIndirection["tpwalkConnection%0"] then
				TABLE_TableIndirection["tpwalkConnection%0"]:Disconnect();
				TABLE_TableIndirection["tpwalkConnection%0"] = nil;
			end
			if ((100 <= 3123) and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\223\245\134\224\194\224\224\191\224\204\231\192\181", "\174\139\165\209\129")]) then
				TABLE_TableIndirection["tpwalkConnection%0"] = TABLE_TableIndirection["RunService%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\139\182\227\211\210\1\117\121\183", "\24\195\211\130\161\166\99\16")]:Connect(function(delta)
					TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\101\11\232\62\82\21\82\6\251", "\118\38\99\137\76\51")];
					TABLE_TableIndirection["hum%0"] = TABLE_TableIndirection["char%0"] and TABLE_TableIndirection["char%0"]:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\213\51\8\19\7\47\244\34", "\64\157\70\101\114\105"));
					if (not TABLE_TableIndirection["char%0"] or not TABLE_TableIndirection["hum%0"] or not TABLE_TableIndirection["hum%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\112\169\181\230\30\84", "\112\32\200\199\131")] or (1369 > 4987)) then
						return;
					end
					if (TABLE_TableIndirection["hum%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\1\95\74\189\231\162\48\41\83\72\177\204\165", "\66\76\48\60\216\163\203")][LUAOBFUSACTOR_DECRYPT_STR_0("\151\135\126\253\86\218\49\190\131", "\68\218\230\25\147\63\174")] <= 0) then
					else
						TABLE_TableIndirection["char%0"]:TranslateBy(TABLE_TableIndirection["hum%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\128\37\69\73\146\164\56\86\79\162\164\37\93", "\214\205\74\51\44")] * TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\206\124\213\253\123\241\127\242\249\114\254", "\23\154\44\130\156")] * delta * 10);
					end
				end);
			end
			break;
		end
	end
end
TABLE_TableIndirection["CFloop%0"] = nil;
local function startCFly()
	TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\50\174\172\188\55\16\5\163\191", "\115\113\198\205\206\86")];
	if (not TABLE_TableIndirection["char%0"] or (863 >= 4584)) then
		return;
	end
	TABLE_TableIndirection["hum%0"] = TABLE_TableIndirection["char%0"]:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\172\66\243\91\138\88\247\94", "\58\228\55\158"));
	TABLE_TableIndirection["head%0"] = TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\156\140\209\42", "\85\212\233\176\78\92\205"));
	if (not TABLE_TableIndirection["hum%0"] or not TABLE_TableIndirection["head%0"] or (724 >= 1668)) then
		return;
	end
	TABLE_TableIndirection["hum%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\122\84\137\246\76\87\154\239\121\76\137\236\78", "\130\42\56\232")] = true;
	TABLE_TableIndirection["head%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\203\187\39\235\79\45\239\177", "\95\138\213\68\131\32")] = true;
	if ((428 < 1804) and TABLE_TableIndirection["CFloop%0"]) then
		TABLE_TableIndirection["FlatIdent_A9A3%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_A9A3%0"] == 0) then
				TABLE_TableIndirection["CFloop%0"]:Disconnect();
				TABLE_TableIndirection["CFloop%0"] = nil;
				break;
			end
		end
	end
	TABLE_TableIndirection["CFloop%0"] = TABLE_TableIndirection["RunService%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\2\45\160\81\98\40\45\160\87", "\22\74\72\193\35")]:Connect(function(deltaTime)
		if (not TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\15\95\232\65\9\119\229\90\32\124\224", "\56\76\25\132")] or (3325 > 4613)) then
			return;
		end
		pcall(function()
			TABLE_TableIndirection["c%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\125\201\170\52\206\93\213\174\52", "\175\62\161\203\70")];
			if (not TABLE_TableIndirection["c%0"] or (4950 <= 4553)) then
				return;
			end
			TABLE_TableIndirection["h%0"] = TABLE_TableIndirection["c%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\20\216\194\23", "\85\92\189\163\115"));
			TABLE_TableIndirection["hu%0"] = TABLE_TableIndirection["c%0"]:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\1\185\61\57\39\163\57\60", "\88\73\204\80"));
			if ((2665 <= 3933) and (not TABLE_TableIndirection["h%0"] or not TABLE_TableIndirection["hu%0"])) then
				return;
			end
			TABLE_TableIndirection["speed%0"] = TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\13\165\28\95\26\202\43\134\20", "\186\78\227\112\38\73")] or 50;
			TABLE_TableIndirection["moveDir%0"] = TABLE_TableIndirection["hu%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\235\80\119\115\238\82\254\65\90\117\242", "\26\156\55\157\53\51")];
			if (TABLE_TableIndirection["moveDir%0"] == nil) then
				return;
			end
			TABLE_TableIndirection["moveDirection%0"] = TABLE_TableIndirection["moveDir%0"] * TABLE_TableIndirection["speed%0"] * deltaTime;
			TABLE_TableIndirection["headCFrame%0"] = TABLE_TableIndirection["h%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\175\254\4\216\181\85", "\48\236\184\118\185\216")];
			if ((3273 == 3273) and (TABLE_TableIndirection["headCFrame%0"] == nil)) then
				return;
			end
			TABLE_TableIndirection["camera%0"] = workspace[LUAOBFUSACTOR_DECRYPT_STR_0("\198\168\69\34\202\58\241\158\86\61\202\38\228", "\84\133\221\55\80\175")];
			if ((3824 > 409) and (TABLE_TableIndirection["camera%0"] == nil)) then
				return;
			end
			TABLE_TableIndirection["cameraCFrame%0"] = TABLE_TableIndirection["camera%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\158\193\54\167\202\89", "\60\221\135\68\198\167")];
			if ((2087 == 2087) and (TABLE_TableIndirection["cameraCFrame%0"] == nil)) then
				return;
			end
			TABLE_TableIndirection["offsetCF%0"] = TABLE_TableIndirection["headCFrame%0"]:ToObjectSpace(TABLE_TableIndirection["cameraCFrame%0"]);
			if (TABLE_TableIndirection["offsetCF%0"] ~= nil) then
			else
				return;
			end
			TABLE_TableIndirection["cameraOffset%0"] = TABLE_TableIndirection["offsetCF%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\222\178\235\138\86\208\225\179", "\185\142\221\152\227\34")];
			if ((TABLE_TableIndirection["cameraOffset%0"] == nil) or (3404 > 4503)) then
				return;
			end
			TABLE_TableIndirection["coX%0"] = TABLE_TableIndirection["cameraOffset%0"]['X'] or 0;
			TABLE_TableIndirection["coY%0"] = TABLE_TableIndirection["cameraOffset%0"]['Y'] or 0;
			TABLE_TableIndirection["coZ%0"] = TABLE_TableIndirection["cameraOffset%0"]['Z'] or 0;
			cameraCFrame = TABLE_TableIndirection["cameraCFrame%0"] * CFrame.new(-TABLE_TableIndirection["coX%0"], -TABLE_TableIndirection["coY%0"], -TABLE_TableIndirection["coZ%0"] + 1);
			TABLE_TableIndirection["cameraPosition%0"] = cameraCFrame[LUAOBFUSACTOR_DECRYPT_STR_0("\104\202\68\243\87\58\248\86", "\151\56\165\55\154\35\83")];
			if (TABLE_TableIndirection["cameraPosition%0"] == nil) then
				return;
			end
			TABLE_TableIndirection["headPosition%0"] = TABLE_TableIndirection["headCFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\144\76\22\231\180\74\10\224", "\142\192\35\101")];
			if (TABLE_TableIndirection["headPosition%0"] ~= nil) then
			else
				return;
			end
			TABLE_TableIndirection["cpX%0"] = TABLE_TableIndirection["cameraPosition%0"]['X'] or 0;
			TABLE_TableIndirection["cpY%0"] = TABLE_TableIndirection["cameraPosition%0"]['Y'] or 0;
			TABLE_TableIndirection["cpZ%0"] = TABLE_TableIndirection["cameraPosition%0"]['Z'] or 0;
			TABLE_TableIndirection["hpX%0"] = TABLE_TableIndirection["headPosition%0"]['X'] or 0;
			TABLE_TableIndirection["hpY%0"] = TABLE_TableIndirection["headPosition%0"]['Y'] or 0;
			TABLE_TableIndirection["hpZ%0"] = TABLE_TableIndirection["headPosition%0"]['Z'] or 0;
			TABLE_TableIndirection["lookAt%0"] = Vector3.new(TABLE_TableIndirection["hpX%0"], TABLE_TableIndirection["cpY%0"], TABLE_TableIndirection["hpZ%0"]);
			TABLE_TableIndirection["vel%0"] = CFrame.new(TABLE_TableIndirection["cameraPosition%0"], TABLE_TableIndirection["lookAt%0"]):VectorToObjectSpace(TABLE_TableIndirection["moveDirection%0"]);
			TABLE_TableIndirection["h%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\245\83\59\162\234\137", "\118\182\21\73\195\135\236\204")] = CFrame.new(TABLE_TableIndirection["headPosition%0"]) * (cameraCFrame - TABLE_TableIndirection["cameraPosition%0"]) * CFrame.new(TABLE_TableIndirection["vel%0"]);
		end);
	end);
end
local function stopCFly()
	TABLE_TableIndirection["FlatIdent_77C29%0"] = 0;
	TABLE_TableIndirection["char%0"] = nil;
	TABLE_TableIndirection["hum%0"] = nil;
	TABLE_TableIndirection["head%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_77C29%0"] == 1) then
			if not TABLE_TableIndirection["char%0"] then
				return;
			end
			TABLE_TableIndirection["hum%0"] = TABLE_TableIndirection["char%0"]:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\32\41\23\65\10\2\244\12", "\157\104\92\122\32\100\109"));
			TABLE_TableIndirection["FlatIdent_77C29%0"] = 2;
		end
		if (TABLE_TableIndirection["FlatIdent_77C29%0"] == 0) then
			if (TABLE_TableIndirection["CFloop%0"] or (3506 <= 1309)) then
				TABLE_TableIndirection["FlatIdent_7A75F%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_7A75F%0"] == 0) then
						TABLE_TableIndirection["CFloop%0"]:Disconnect();
						TABLE_TableIndirection["CFloop%0"] = nil;
						break;
					end
				end
			end
			TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\128\174\206\216\60\36\153\174\177", "\203\195\198\175\170\93\71\237")];
			TABLE_TableIndirection["FlatIdent_77C29%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_77C29%0"] == 3) then
			if TABLE_TableIndirection["head%0"] then
				TABLE_TableIndirection["head%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\15\69\61\221\94\3\249\42", "\156\78\43\94\181\49\113")] = false;
			end
			break;
		end
		if (TABLE_TableIndirection["FlatIdent_77C29%0"] == 2) then
			TABLE_TableIndirection["head%0"] = TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\90\237\197\167", "\25\18\136\164\195\107\35"));
			if TABLE_TableIndirection["hum%0"] then
				TABLE_TableIndirection["hum%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\216\33\168\91\116\179\211\181\219\57\168\65\118", "\216\136\77\201\47\18\220\161")] = false;
			end
			TABLE_TableIndirection["FlatIdent_77C29%0"] = 3;
		end
	end
end
TABLE_TableIndirection["gui%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\239\57\223\13\210\165\56\229", "\226\77\140\75\186\104\188"));
TABLE_TableIndirection["gui%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\151\207\221\58", "\47\217\174\176\95")] = LUAOBFUSACTOR_DECRYPT_STR_0("\154\220\114\11\188\83\80\51\186", "\70\216\189\22\98\210\52\24");
TABLE_TableIndirection["gui%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\232\218\176\130\199\245\209\144\151\210\205\209", "\179\186\191\195\231")] = false;
TABLE_TableIndirection["gui%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\195\22\22\224\252\39\58\225\241\62\14\237\246\45", "\132\153\95\120")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\139\155\0\41\242\194\130\180\186\15\59\254\213\178", "\192\209\210\110\77\151\186")][LUAOBFUSACTOR_DECRYPT_STR_0("\211\10\32\229\246\202\231", "\164\128\99\66\137\159")];
pcall(function()
	TABLE_TableIndirection["gui%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\48\136\251\187\14\157", "\222\96\233\137")] = TABLE_TableIndirection["CoreGui%0"];
end);
if not TABLE_TableIndirection["gui%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\137\178\181\26\134\231", "\144\217\211\199\127\232\147")] then
	TABLE_TableIndirection["gui%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\200\46\44\45\219\81", "\36\152\79\94\72\181\37\98")] = TABLE_TableIndirection["LocalPlayer%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\231\212\70\38\210\202\96\42\222", "\95\183\184\39"));
end
TABLE_TableIndirection["notifContainer%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\147\45\230\43\81", "\98\213\95\135\70\52\224"), TABLE_TableIndirection["gui%0"]);
TABLE_TableIndirection["notifContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\205\170\211\114", "\52\158\195\169\23")] = UDim2.new(0, 280, 1, -40);
TABLE_TableIndirection["notifContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\74\179\33\125\146\60\116\133", "\235\26\220\82\20\230\85\27")] = UDim2.new(1, -300, 0, 20);
TABLE_TableIndirection["notifContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\170\160\234\201\115\154\174\252\204\112\188\179\232\204\103\152\160\251\199\122\139\184", "\20\232\193\137\162")] = 1;
TABLE_TableIndirection["notifLayout%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\246\233\175\244\152\59\112\59\208\208\178", "\17\66\191\165\198\135\236\119"), TABLE_TableIndirection["notifContainer%0"]);
TABLE_TableIndirection["notifLayout%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\60\160\188\7\208\250\232\212\29", "\177\111\207\206\115\159\136\140")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\54\134\2\0\251\93\91\0\155", "\63\101\233\112\116\180\47")][LUAOBFUSACTOR_DECRYPT_STR_0("\239\58\244\29\237\34\236\41\233\23\234", "\86\163\91\141\114\152")];
TABLE_TableIndirection["notifLayout%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\101\14\102\103\51\80\10\120\82\54\90\12\122\126\63\93\31", "\90\51\107\20\19")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\187\245\151\251\52\142\241\137\206\49\132\247\139\226\56\131\228", "\93\237\144\229\143")][LUAOBFUSACTOR_DECRYPT_STR_0("\55\249\228\13\4\75", "\38\117\150\144\121\107")];
TABLE_TableIndirection["notifLayout%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\29\186\234\62\36\181\233", "\90\77\219\142")] = UDim.new(0, 10);
local function showToast(title, message, isError)
	TABLE_TableIndirection["toast%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\192\22\32\52\73", "\26\134\100\65\89\44\103"), TABLE_TableIndirection["notifContainer%0"]);
	TABLE_TableIndirection["toast%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\194\234\42\38", "\196\145\131\80\67")] = UDim2.new(1, 0, 0, 58);
	TABLE_TableIndirection["toast%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\60\177\5\3\31\250\17\165\8\12\59\231\18\191\20\91", "\136\126\208\102\104\120")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\75\159\220\69\174\81\56\112\116\158", "\49\24\234\174\35\207\50\93")];
	TABLE_TableIndirection["toast%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\46\243\254\131\118\30\253\232\134\117\56\224\252\134\98\28\243\239\141\127\15\235", "\17\108\146\157\232")] = 0.08;
	TABLE_TableIndirection["toast%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\123\204\7\228\59\161\68\205", "\200\43\163\116\141\79")] = UDim2.new(1, 20, 0, 0);
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\31\30\140\162\250\230\173", "\131\223\86\93\227\208\148"), TABLE_TableIndirection["toast%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\192\74\164\184\24\167\209\68\178\191\8\166", "\213\131\37\214\214\125")] = UDim.new(0, 10);
	TABLE_TableIndirection["stroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\2\22\171\243\41\32\32", "\129\70\75\69\223"), TABLE_TableIndirection["toast%0"]);
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\101\196\255\230\110", "\143\38\171\147\137\28")] = (isError and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\245\144\171\252\17", "\180\176\226\217\147\99\131")]) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\241\182\61\3\214\171", "\103\179\217\79")];
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\126\191\21\214\74\130\166\89\164", "\195\42\215\124\181\33\236")] = 1;
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\57\75\54\48\54\232\12\75\50\48\38\225", "\152\109\57\87\94\69")] = 0.4;
	TABLE_TableIndirection["bar%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\223\197\11\174\187", "\200\153\183\106\195\222\178\52"), TABLE_TableIndirection["toast%0"]);
	TABLE_TableIndirection["bar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\1\234\146\56", "\58\82\131\232\93\41")] = UDim2.new(0, 3, 1, -16);
	TABLE_TableIndirection["bar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\179\88\195\28\73\54\140\89", "\95\227\55\176\117\61")] = UDim2.new(0, 10, 0, 8);
	TABLE_TableIndirection["bar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\58\127\32\64\172\10\113\54\69\175\59\113\47\68\185\75", "\203\120\30\67\43")] = (isError and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\212\55\95\224\203", "\185\145\69\45\143")]) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\171\28\26\163\210\158", "\188\234\127\121\198")];
	TABLE_TableIndirection["bar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\26\61\1\135\61\32\32\138\34\55\35\138\32\55\31", "\227\88\82\115")] = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\118\54\153\168\16\125\70\13", "\19\35\127\218\199\98"), TABLE_TableIndirection["bar%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\63\244\24\236\25\233\56\227\24\242\31\241", "\130\124\155\106")] = UDim.new(1, 0);
	if ((2955 == 2955) and not isError) then
		TABLE_TableIndirection["FlatIdent_1B1BA%0"] = 0;
		TABLE_TableIndirection["g%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_1B1BA%0"] == 0) then
				TABLE_TableIndirection["g%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\224\226\209\189\162\242\117\186\219\223", "\223\181\171\150\207\195\150\28"), TABLE_TableIndirection["bar%0"]);
				TABLE_TableIndirection["g%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\111\53\239\161\27", "\105\44\90\131\206")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\216\242\179\189\1\59\241\244", "\94\159\128\210\217\104")];
				TABLE_TableIndirection["FlatIdent_1B1BA%0"] = 1;
			end
			if (TABLE_TableIndirection["FlatIdent_1B1BA%0"] == 1) then
				TABLE_TableIndirection["g%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\98\246\18\190\75\118\246\116", "\26\48\153\102\223\63\31\153")] = 90;
				break;
			end
		end
	end
	TABLE_TableIndirection["titleLbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\54\69\245\231\46\65\239\246\14", "\147\98\32\141"), TABLE_TableIndirection["toast%0"]);
	TABLE_TableIndirection["titleLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\43\74\249\207", "\43\120\35\131\170\102\54")] = UDim2.new(1, -36, 0, 18);
	TABLE_TableIndirection["titleLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\100\9\148\191\177\185\139\90", "\228\52\102\231\214\197\208")] = UDim2.new(0, 22, 0, 10);
	TABLE_TableIndirection["titleLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\60\225\118\193\237\153\22\195\16\228\65\216\235\133\10\198\31\242\112\196\233\146", "\182\126\128\21\170\138\235\121")] = 1;
	TABLE_TableIndirection["titleLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\191\223\45\242", "\102\235\186\85\134\230\115\80")] = title;
	TABLE_TableIndirection["titleLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\99\9\38\75\81\219\46\88\30\109", "\66\55\108\94\63\18\180")] = (isError and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\49\159\151\56\53", "\57\116\237\229\87\71")]) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\158\180\245\243", "\39\202\209\141\135\23\142")];
	TABLE_TableIndirection["titleLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\217\60\7\30", "\152\159\83\105\106\82")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\167\201\95\230", "\60\225\166\49\146\169")][LUAOBFUSACTOR_DECRYPT_STR_0("\8\17\59\34\0\10\13\17\35\46", "\103\79\126\79\74\97")];
	TABLE_TableIndirection["titleLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\142\122\203\103\109\19\160\122", "\122\218\31\179\19\62")] = 12;
	TABLE_TableIndirection["titleLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\135\211\213\213\241\128\73\186\209\195\204\204\175\81", "\37\211\182\173\161\169\193")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\195\63\85\205\16\90\181\254\61\67\212\45\117\173", "\217\151\90\45\185\72\27")][LUAOBFUSACTOR_DECRYPT_STR_0("\239\121\225\6", "\54\163\28\135\114")];
	TABLE_TableIndirection["msgLbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\28\222\69\150\98\126\42\222\81", "\31\72\187\61\226\46"), TABLE_TableIndirection["toast%0"]);
	TABLE_TableIndirection["msgLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\240\15\89\215", "\68\163\102\35\178\39\30")] = UDim2.new(1, -36, 0, 18);
	TABLE_TableIndirection["msgLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\142\127\201\206\23\188\140\31", "\113\222\16\186\167\99\213\227")] = UDim2.new(0, 22, 0, 28);
	TABLE_TableIndirection["msgLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\12\15\248\253\41\28\244\227\32\10\207\228\47\0\232\230\47\28\254\248\45\23", "\150\78\110\155")] = 1;
	TABLE_TableIndirection["msgLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\177\192\63\245", "\32\229\165\71\129\196\126\223")] = message;
	TABLE_TableIndirection["msgLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\247\140\220\149\162\218\207\134\214\210", "\181\163\233\164\225\225")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\100\142\38\99\125\158\42\114\84", "\23\48\235\94")];
	TABLE_TableIndirection["msgLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\90\213\214\73", "\178\28\186\184\61\55\83")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\226\194\73\40", "\149\164\173\39\92\146\110")][LUAOBFUSACTOR_DECRYPT_STR_0("\212\40\4\23\27\22", "\123\147\71\112\127\122")];
	TABLE_TableIndirection["msgLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\248\200\154\101\117\197\215\135", "\38\172\173\226\17")] = 11;
	TABLE_TableIndirection["msgLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\121\20\52\251\117\48\32\230\74\31\33\234\67\5", "\143\45\113\76")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\140\189\4\40\128\153\16\53\191\182\17\57\182\172", "\92\216\216\124")][LUAOBFUSACTOR_DECRYPT_STR_0("\119\55\170\84", "\157\59\82\204\32")];
	TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["toast%0"], TweenInfo.new(0.45, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\29\63\240\243\231\237\224\165\33\50\230", "\209\88\94\131\154\137\138\179")].Back, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\13\160\215\117\16\36\21\43\58\164\199\104\23\44\63", "\66\72\193\164\28\126\67\81")].Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\215\35\187\81\50\127\232\34", "\22\135\76\200\56\70")]=UDim2.new(0, 0, 0, 0)}):Play();
	task.delay(3.2, function()
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["toast%0"], TweenInfo.new(0.35, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\168\49\235\45\83\230\190\36\225\40\88", "\129\237\80\152\68\61")].Quint, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\116\169\23\250\18\16\124\88\186\1\240\8\30\87\95", "\56\49\200\100\147\124\119")].In), {[LUAOBFUSACTOR_DECRYPT_STR_0("\252\49\172\249\216\55\176\254", "\144\172\94\223")]=UDim2.new(1, 20, 0, 0),[LUAOBFUSACTOR_DECRYPT_STR_0("\6\14\161\76\35\29\173\82\42\11\150\85\37\1\177\87\37\29\167\73\39\22", "\39\68\111\194")]=1}):Play();
		task.wait(0.35);
		TABLE_TableIndirection["toast%0"]:Destroy();
	end);
end
local function isStandActive()
	TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\245\174\230\213\120\180\194\163\245", "\215\182\198\135\167\25")];
	if (not TABLE_TableIndirection["char%0"] or (2903 == 1495)) then
		return false;
	end
	if ((4546 >= 2275) and (TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\190\92\231\69\130\71\239\76\190\93\235\70\137", "\40\237\41\138")) or TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\244\96\251\246\78", "\42\167\20\154\152")))) then
		return true;
	end
	for _, child in ipairs(TABLE_TableIndirection["char%0"]:GetChildren()) do
		if (child:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\103\241\166\71\125", "\65\42\158\194\34\17")) and (child[LUAOBFUSACTOR_DECRYPT_STR_0("\52\38\95\9", "\142\122\71\50\108\77\141\123")] ~= TABLE_TableIndirection["char%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\59\163\242\29", "\91\117\194\159\120")]) and (child:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\50\8\51\25\59\254\45\30\47\49\23\33\193\37\8\9", "\68\122\125\94\120\85\145")) or string.find(string.lower(child.Name), LUAOBFUSACTOR_DECRYPT_STR_0("\4\8\206\80\204", "\218\119\124\175\62\168\185")))) then
			return true;
		end
	end
	TABLE_TableIndirection["effects%0"] = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\128\246\78\193\166\228\91", "\164\197\144\40"));
	if ((819 >= 22) and TABLE_TableIndirection["effects%0"]) then
		for _, v in ipairs(TABLE_TableIndirection["effects%0"]:GetChildren()) do
			if ((3162 == 3162) and v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\174\255\174\142\209", "\214\227\144\202\235\189")) and string.find(string.lower(v.Name), string.lower(TABLE_TableIndirection["char%0"].Name)) and string.find(string.lower(v.Name), LUAOBFUSACTOR_DECRYPT_STR_0("\254\177\134\117\20", "\92\141\197\231\27\112\211\51"))) then
				return true;
			end
		end
	end
	return false;
end
TABLE_TableIndirection["lastStandCheck%0"] = 0;
task.spawn(function()
	while sessionAlive() do
		TABLE_TableIndirection["FlatIdent_8DCA9%0"] = 0;
		TABLE_TableIndirection["isFarming%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_8DCA9%0"] == 1) then
				if (TABLE_TableIndirection["isFarming%0"] and ((tick() - TABLE_TableIndirection["lastStandCheck%0"]) > 5)) then
					TABLE_TableIndirection["lastStandCheck%0"] = tick();
					if (not isStandActive() or (2369 > 4429)) then
						pcall(function()
							TABLE_TableIndirection["VirtualInputManager%0"]:SendKeyEvent(true, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\205\250\147\128\222\226\250", "\177\134\159\234\195")].Tab, false, game);
							task.wait(0.05);
							TABLE_TableIndirection["VirtualInputManager%0"]:SendKeyEvent(false, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\150\238\38\131\198\185\238", "\169\221\139\95\192")].Tab, false, game);
						end);
						pcall(function()
							TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\253\131\126\45\35\37\202\142\109", "\70\190\235\31\95\66")];
							TABLE_TableIndirection["hum%0"] = TABLE_TableIndirection["char%0"] and TABLE_TableIndirection["char%0"]:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\146\247\23\231\235\181\235\30", "\133\218\130\122\134"));
							if ((4095 >= 3183) and TABLE_TableIndirection["hum%0"] and TABLE_TableIndirection["LocalPlayer%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\30\254\224\207\204\162\59\55", "\88\92\159\131\164\188\195"))) then
								for _, item in ipairs(TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\162\47\188\64\199\234\222\139", "\189\224\78\223\43\183\139")]:GetChildren()) do
									if item:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\26\243\133\26", "\161\78\156\234\118")) then
										TABLE_TableIndirection["hum%0"]:EquipTool(item);
										break;
									end
								end
							end
						end);
					end
				end
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_8DCA9%0"] == 0) then
				task.wait(1);
				TABLE_TableIndirection["isFarming%0"] = TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\134\162\221\211\129\182\219\209\148\174\218\200\162\186", "\188\199\215\169")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\221\28\75\116\216\202\44\114\114\251\239\0\80\117", "\136\156\105\63\27")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\58\153\109\59\43\128\120\45\30\158\95\53\9\129", "\84\123\236\25")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\209\158\190\24\158\180\249\143", "\213\144\235\202\119\204")];
				TABLE_TableIndirection["FlatIdent_8DCA9%0"] = 1;
			end
		end
	end
end);
TABLE_TableIndirection["espFolder%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\5\23\210\46\45\49", "\45\67\120\190\74\72\67"));
TABLE_TableIndirection["espFolder%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\14\35\224\160", "\137\64\66\141\197\153\232\142")] = LUAOBFUSACTOR_DECRYPT_STR_0("\33\209\38\175\134\4\245\17\150", "\232\99\176\66\198");
pcall(function()
	TABLE_TableIndirection["espFolder%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\220\32\58\3\117\153", "\76\140\65\72\102\27\237\153")] = TABLE_TableIndirection["CoreGui%0"];
end);
TABLE_TableIndirection["espCache%0"] = {};
local function getPlayerStats(player)
	TABLE_TableIndirection["FlatIdent_8BF78%0"] = 0;
	TABLE_TableIndirection["levelStr%0"] = nil;
	TABLE_TableIndirection["standStr%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_8BF78%0"] == 0) then
			TABLE_TableIndirection["levelStr%0"], TABLE_TableIndirection["standStr%0"] = "?", LUAOBFUSACTOR_DECRYPT_STR_0("\121\206\23\220\211\13\187\89\201", "\222\42\186\118\178\183\97");
			pcall(function()
				TABLE_TableIndirection["FlatIdent_27404%0"] = 0;
				TABLE_TableIndirection["sData%0"] = nil;
				while true do
					if (TABLE_TableIndirection["FlatIdent_27404%0"] == 0) then
						TABLE_TableIndirection["sData%0"] = player:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\109\224\69\147\88\254\96\139\73\237", "\234\61\140\36")) and player[LUAOBFUSACTOR_DECRYPT_STR_0("\17\209\187\107\10\51\249\187\102\14", "\111\65\189\218\18")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\112\71\20\33\47\93\187\66", "\207\35\43\123\85\107\60"));
						if (TABLE_TableIndirection["sData%0"] or (3711 < 1008)) then
							TABLE_TableIndirection["FlatIdent_9622C%0"] = 0;
							while true do
								if (TABLE_TableIndirection["FlatIdent_9622C%0"] == 0) then
									if (TABLE_TableIndirection["sData%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\92\175\182\239\117", "\25\16\202\192\138")) or (1049 <= 906)) then
										TABLE_TableIndirection["levelStr%0"] = tostring(TABLE_TableIndirection["sData%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\209\206\187\231\165", "\148\157\171\205\130\201")].Value);
									end
									if ((4513 > 2726) and TABLE_TableIndirection["sData%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\16\192\117\39\213", "\150\67\180\20\73\177"))) then
										TABLE_TableIndirection["FlatIdent_2D88C%0"] = 0;
										TABLE_TableIndirection["rawValue%0"] = nil;
										TABLE_TableIndirection["success%0"] = nil;
										TABLE_TableIndirection["decoded%0"] = nil;
										while true do
											if (1 == TABLE_TableIndirection["FlatIdent_2D88C%0"]) then
												if (TABLE_TableIndirection["success%0"] and (type(TABLE_TableIndirection["decoded%0"]) == LUAOBFUSACTOR_DECRYPT_STR_0("\153\25\24\65\136", "\45\237\120\122")) and TABLE_TableIndirection["decoded%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\249\233\175\41", "\76\183\136\194")]) then
													TABLE_TableIndirection["standStr%0"] = tostring(TABLE_TableIndirection["decoded%0"].Name);
												else
													TABLE_TableIndirection["lowValue%0"] = string.lower(TABLE_TableIndirection["rawValue%0"]);
													for _, validStand in ipairs(TABLE_TableIndirection["KnownStands%0"]) do
														if string.find(TABLE_TableIndirection["lowValue%0"], string.lower(validStand), 1, true) then
															TABLE_TableIndirection["standStr%0"] = ((validStand == "Magician's Red") and "Magician's Red") or validStand;
															break;
														end
													end
												end
												break;
											end
											if (TABLE_TableIndirection["FlatIdent_2D88C%0"] == 0) then
												TABLE_TableIndirection["rawValue%0"] = tostring(TABLE_TableIndirection["sData%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\73\242\228\54\84", "\116\26\134\133\88\48\47")].Value);
												TABLE_TableIndirection["success%0"], TABLE_TableIndirection["decoded%0"] = pcall(function()
													return TABLE_TableIndirection["HttpService%0"]:JSONDecode(TABLE_TableIndirection["rawValue%0"]);
												end);
												TABLE_TableIndirection["FlatIdent_2D88C%0"] = 1;
											end
										end
									end
									break;
								end
							end
						end
						break;
					end
				end
			end);
			TABLE_TableIndirection["FlatIdent_8BF78%0"] = 1;
		end
		if (1 == TABLE_TableIndirection["FlatIdent_8BF78%0"]) then
			return TABLE_TableIndirection["levelStr%0"], TABLE_TableIndirection["standStr%0"];
		end
	end
end
trackConn(TABLE_TableIndirection["RunService%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\44\196\174\224\184\96\45\213\165\244\173\119\26", "\18\126\161\192\132\221")]:Connect(function()
	pcall(function()
		if (not TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\122\27\158", "\54\63\72\206\100")] or (1481 >= 2658)) then
			TABLE_TableIndirection["espFolder%0"]:ClearAllChildren();
			table.clear(TABLE_TableIndirection["espCache%0"]);
			return;
		end
		for _, player in pairs(TABLE_TableIndirection["Players%0"]:GetPlayers()) do
			if ((player ~= TABLE_TableIndirection["LocalPlayer%0"]) and player[LUAOBFUSACTOR_DECRYPT_STR_0("\235\81\68\104\228\120\220\92\87", "\27\168\57\37\26\133")] and player[LUAOBFUSACTOR_DECRYPT_STR_0("\14\162\125\186\214\46\190\121\186", "\183\77\202\28\200")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\63\38\132\9\25\60\128\12\37\60\134\28\39\50\155\28", "\104\119\83\233")) and player[LUAOBFUSACTOR_DECRYPT_STR_0("\214\240\38\48\66\246\236\34\48", "\35\149\152\71\66")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\49\253\79\177\52\22\225\70", "\90\121\136\34\208"))) then
				local char, hum, hrp = player[LUAOBFUSACTOR_DECRYPT_STR_0("\228\6\84\12\198\13\65\27\213", "\126\167\110\53")], player[LUAOBFUSACTOR_DECRYPT_STR_0("\30\24\47\234\221\60\41\21\60", "\95\93\112\78\152\188")][LUAOBFUSACTOR_DECRYPT_STR_0("\233\224\136\20\234\177\219\197", "\178\161\149\229\117\132\222")], player[LUAOBFUSACTOR_DECRYPT_STR_0("\171\211\220\190\160\21\178\38\154", "\67\232\187\189\204\193\118\198")][LUAOBFUSACTOR_DECRYPT_STR_0("\163\59\184\33\53\13\230\143\28\186\47\47\50\238\153\58", "\143\235\78\213\64\91\98")];
				if (hum[LUAOBFUSACTOR_DECRYPT_STR_0("\165\77\133\229\100\190", "\214\237\40\228\137\16")] > 0) then
					if (not TABLE_TableIndirection["espCache%0"][player] or not TABLE_TableIndirection["espCache%0"][player][LUAOBFUSACTOR_DECRYPT_STR_0("\173\234\232\209\15\175\130\235\251", "\198\229\131\143\185\99")][LUAOBFUSACTOR_DECRYPT_STR_0("\97\141\186\118\95\152", "\19\49\236\200")] or (3220 == 1364)) then
						TABLE_TableIndirection["hl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\214\62\241\191\232\179\249\63\226", "\218\158\87\150\215\132"), TABLE_TableIndirection["espFolder%0"]);
						TABLE_TableIndirection["hl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\221\23\213\238\2\48\204\245\13\201\227\36\39\195\248\7", "\173\155\126\185\130\86\66")] = 1;
						TABLE_TableIndirection["hl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\202\179\174\203\129\226\224\146\168\198\134\255\245\167\168\194\134\239\252", "\140\133\198\218\167\232")] = 0.1;
						TABLE_TableIndirection["hl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\145\43\164\105\140\152\33\176\120", "\228\213\78\212\29")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\175\69\177\13\231\142\75\190\17\207\130\92\162\13\198\136\72\179", "\139\231\44\214\101")][LUAOBFUSACTOR_DECRYPT_STR_0("\248\227\17\95\9\162\30\24\237\224\22", "\118\185\143\102\62\112\209\81")];
						TABLE_TableIndirection["bg%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\121\37\234\167\26\29\42\88\87\60\239", "\88\60\16\73\134\197\117\124"), TABLE_TableIndirection["espFolder%0"]);
						TABLE_TableIndirection["bg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\99\227\226\205", "\33\48\138\152\168")] = UDim2.new(0, 175, 0, 36);
						TABLE_TableIndirection["bg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\65\2\37\85\210\24\116\16\35\84\213", "\87\18\118\80\49\161")] = Vector3.new(0, 4.5, 0);
						TABLE_TableIndirection["bg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\109\18\205\161\169\95\49\212\148\191\92", "\208\44\126\186\192")] = true;
						TABLE_TableIndirection["hpBg%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\8\165\203\17", "\46\151\122\196\166\116\156\169"), TABLE_TableIndirection["bg%0"]);
						TABLE_TableIndirection["hpBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\214\228\92\31", "\155\133\141\38\122")] = UDim2.new(0, 4, 1, 0);
						TABLE_TableIndirection["hpBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\7\43\175\74\72\109\170\48\36\168\98\64\115\170\55\121", "\197\69\74\204\33\47\31")] = Color3.fromRGB(20, 20, 20);
						TABLE_TableIndirection["hpBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\210\64\72\131\245\93\105\142\234\74\106\142\232\74\86", "\231\144\47\58")] = 1;
						TABLE_TableIndirection["hpBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\144\215\200\113\29\47\236\54\190\215\200\38", "\89\210\184\186\21\120\93\175")] = Color3.fromRGB(0, 0, 0);
						TABLE_TableIndirection["hpFill%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\151\65\125\216\124", "\90\209\51\28\181\25"), TABLE_TableIndirection["hpBg%0"]);
						TABLE_TableIndirection["hpFill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\227\114\77\235", "\223\176\27\55\142")] = UDim2.new(1, 0, 1, 0);
						TABLE_TableIndirection["hpFill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\20\180\221\188\48\178\193\187", "\213\68\219\174")] = UDim2.new(0, 0, 1, 0);
						TABLE_TableIndirection["hpFill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\42\238\32\239\37\215\15\112\2\238\55", "\31\107\128\67\135\74\165\95")] = Vector2.new(0, 1);
						TABLE_TableIndirection["hpFill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\250\231\238\73\68\163\235\225\230\72\113\184\192\237\240", "\209\184\136\156\45\33")] = 0;
						TABLE_TableIndirection["hpPctLbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\51\205\109\28\148\6\202\112\4", "\216\103\168\21\104"), TABLE_TableIndirection["bg%0"]);
						TABLE_TableIndirection["hpPctLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\75\164\89\161", "\196\24\205\35")] = UDim2.new(0, 36, 1, 0);
						TABLE_TableIndirection["hpPctLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\30\132\240\15\58\130\236\8", "\102\78\235\131")] = UDim2.new(0, 6, 0, 0);
						TABLE_TableIndirection["hpPctLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\216\47\55\79\64\43\184\33\244\42\0\86\70\55\164\36\251\60\49\74\68\32", "\84\154\78\84\36\39\89\215")] = 1;
						TABLE_TableIndirection["hpPctLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\238\88\76", "\101\157\129\54\56")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\59\166\132\191", "\25\125\201\234\203\67")][LUAOBFUSACTOR_DECRYPT_STR_0("\94\251\12\11\21\42\49\118\248\28", "\115\25\148\120\99\116\71")];
						TABLE_TableIndirection["hpPctLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\56\56\161\48\114\5\39\188", "\33\108\93\217\68")] = 9;
						TABLE_TableIndirection["hpPctLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\239\78\185\185\248\68\173\162\201\24", "\205\187\43\193")] = Color3.fromRGB(255, 255, 255);
						TABLE_TableIndirection["hpPctLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\202\119\29\203\205\102\23\208\245\119\49\205\255\124\22\207\255\96\0\209\253\107", "\191\158\18\101")] = 0.4;
						TABLE_TableIndirection["hpPctLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\241\198\159\163\151\228\207\142\176\161\200\198\137\163", "\207\165\163\231\215")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\242\252\225\66\28\81\202\240\254\88\41\117\200\237", "\16\166\153\153\54\68")][LUAOBFUSACTOR_DECRYPT_STR_0("\254\182\198\82", "\153\178\211\160\38\84\65")];
						TABLE_TableIndirection["hpPctLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\182\14\66\63\187\42\86\34\133\5\87\46\140\31", "\75\226\107\58")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\108\219\9\110\40\227\193\81\217\31\119\20\204\217", "\173\56\190\113\26\113\162")][LUAOBFUSACTOR_DECRYPT_STR_0("\232\219\35\17\242\217", "\151\171\190\77\101")];
						TABLE_TableIndirection["hpPctLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\241\42\224\189", "\107\165\79\152\201\152\29")] = LUAOBFUSACTOR_DECRYPT_STR_0("\6\30\184\142", "\31\55\46\136\171\52");
						TABLE_TableIndirection["nameLbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\229\45\196\224\253\41\222\241\221", "\148\177\72\188"), TABLE_TableIndirection["bg%0"]);
						TABLE_TableIndirection["nameLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\149\191\77\214", "\179\198\214\55")] = UDim2.new(1, -50, 0.45, 0);
						TABLE_TableIndirection["nameLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\192\3\97\127\81\218\255\2", "\179\144\108\18\22\37")] = UDim2.new(0, 46, 0, 0);
						TABLE_TableIndirection["nameLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\228\162\24\130\200\212\172\14\135\203\242\177\26\135\220\214\162\9\140\193\197\186", "\175\166\195\123\233")] = 1;
						TABLE_TableIndirection["nameLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\201\205\83\93", "\144\143\162\61\41")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\198\220\19\68", "\83\128\179\125\48\18\231")][LUAOBFUSACTOR_DECRYPT_STR_0("\122\184\231\213\70\19\127\184\255\217", "\126\61\215\147\189\39")];
						TABLE_TableIndirection["nameLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\76\250\5\81\75\246\7\64", "\37\24\159\125")] = 12;
						TABLE_TableIndirection["nameLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\238\163\109\86\249\169\121\77\200\245", "\34\186\198\21")] = Color3.fromRGB(255, 255, 255);
						TABLE_TableIndirection["nameLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\204\13\221\73\241\236\26\202\86\199\204\26\196\83\209\232\9\215\88\204\251\17", "\162\152\104\165\61")] = 0;
						TABLE_TableIndirection["nameLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\249\42\170\105\72\196\193\38\181\115\125\224\195\59", "\133\173\79\210\29\16")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\185\121\245\63\181\93\225\34\138\114\224\46\131\104", "\75\237\28\141")][LUAOBFUSACTOR_DECRYPT_STR_0("\240\90\202\165", "\129\188\63\172\209\79\123\135")];
						TABLE_TableIndirection["standLbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\116\225\254\217\108\229\228\200\76", "\173\32\132\134"), TABLE_TableIndirection["bg%0"]);
						TABLE_TableIndirection["standLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\125\18\18\234", "\173\46\123\104\143\206\81")] = UDim2.new(1, -50, 0.45, 0);
						TABLE_TableIndirection["standLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\132\18\49\131\81\138\14\186", "\97\212\125\66\234\37\227")] = UDim2.new(0, 46, 0.45, 0);
						TABLE_TableIndirection["standLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\168\226\181\62\25\152\236\163\59\26\190\241\183\59\13\154\226\164\48\16\137\250", "\126\234\131\214\85")] = 1;
						TABLE_TableIndirection["standLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\162\218\71\78", "\47\228\181\41\58")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\128\243\215\47", "\127\198\156\185\91\99\80")][LUAOBFUSACTOR_DECRYPT_STR_0("\210\21\216\248\166\6\20\219\241\19\217\253", "\190\149\122\172\144\199\107\89")];
						TABLE_TableIndirection["standLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\6\0\233\234\205\59\31\244", "\158\82\101\145\158")] = 11;
						TABLE_TableIndirection["standLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\68\251\26\2\119\100\236\13\29\65\68\236\3\24\87\96\255\16\19\74\115\231", "\36\16\158\98\118")] = 0;
						TABLE_TableIndirection["standLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\244\19\219\239\96\201\43\236\199\24\206\254\86\252", "\133\160\118\163\155\56\136\71")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\194\167\105\230\142\62\185\255\165\127\255\179\17\161", "\213\150\194\17\146\214\127")][LUAOBFUSACTOR_DECRYPT_STR_0("\55\172\162\192", "\86\123\201\196\180\38\196\194")];
						TABLE_TableIndirection["espCache%0"][player] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\223\225\222\167\251\225\222\167\227", "\207\151\136\185")]=TABLE_TableIndirection["hl%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\138\138\36\142\118\119\112\186\135", "\17\200\227\72\226\20\24")]=TABLE_TableIndirection["bg%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\158\64\22\210\229\243\227", "\159\208\33\123\183\169\145\143")]=TABLE_TableIndirection["nameLbl%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\193\78\57\56\246\118\58\58", "\86\146\58\88")]=TABLE_TableIndirection["standLbl%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\112\207\204\201\162\229", "\154\56\191\138\160\206\137\86")]=TABLE_TableIndirection["hpFill%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\174\73\197\132\104\22\131\192", "\172\230\57\149\231\28\90\225")]=TABLE_TableIndirection["hpPctLbl%0"]};
					end
					TABLE_TableIndirection["objs%0"] = TABLE_TableIndirection["espCache%0"][player];
					pcall(function()
						TABLE_TableIndirection["FlatIdent_28F1%0"] = 0;
						TABLE_TableIndirection["humHealth%0"] = nil;
						TABLE_TableIndirection["humMax%0"] = nil;
						TABLE_TableIndirection["maxHp%0"] = nil;
						TABLE_TableIndirection["hpPercent%0"] = nil;
						TABLE_TableIndirection["color%0"] = nil;
						TABLE_TableIndirection["level%0"] = nil;
						TABLE_TableIndirection["stand%0"] = nil;
						while true do
							if (TABLE_TableIndirection["FlatIdent_28F1%0"] == 1) then
								TABLE_TableIndirection["humMax%0"] = hum[LUAOBFUSACTOR_DECRYPT_STR_0("\47\171\158\250\45\218\14\190\142", "\187\98\202\230\178\72")] or 100;
								TABLE_TableIndirection["maxHp%0"] = math.max(TABLE_TableIndirection["humMax%0"], 1);
								TABLE_TableIndirection["hpPercent%0"] = TABLE_TableIndirection["humHealth%0"] / TABLE_TableIndirection["maxHp%0"];
								TABLE_TableIndirection["FlatIdent_28F1%0"] = 2;
							end
							if (TABLE_TableIndirection["FlatIdent_28F1%0"] == 3) then
								TABLE_TableIndirection["objs%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\9\241\130\57\70\45", "\42\65\129\196\80")][LUAOBFUSACTOR_DECRYPT_STR_0("\49\67\71\223", "\142\98\42\61\186\119\103\98")] = UDim2.new(1, 0, math.clamp(TABLE_TableIndirection["hpPercent%0"], 0, 1), 0);
								TABLE_TableIndirection["objs%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\16\175\50\11\44\147\0\4", "\104\88\223\98")][LUAOBFUSACTOR_DECRYPT_STR_0("\112\242\250\218", "\141\36\151\130\174\98")] = math.floor(TABLE_TableIndirection["hpPercent%0"] * 100) .. "%";
								TABLE_TableIndirection["objs%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\172\106\242\14\144\86\192\1", "\109\228\26\162")][LUAOBFUSACTOR_DECRYPT_STR_0("\106\224\229\108\195\233\82\234\239\43", "\134\62\133\157\24\128")] = TABLE_TableIndirection["color%0"];
								TABLE_TableIndirection["FlatIdent_28F1%0"] = 4;
							end
							if (TABLE_TableIndirection["FlatIdent_28F1%0"] == 0) then
								TABLE_TableIndirection["objs%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\47\172\29\209\35\184\209\15\177", "\182\103\197\122\185\79\209")][LUAOBFUSACTOR_DECRYPT_STR_0("\210\131\238\101\14\77\246", "\40\147\231\129\23\96")] = char;
								TABLE_TableIndirection["objs%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\87\241\128\73\185\163\221\103\252", "\188\21\152\236\37\219\204")][LUAOBFUSACTOR_DECRYPT_STR_0("\97\237\56\30\78\236\50", "\108\32\137\87")] = hrp;
								TABLE_TableIndirection["humHealth%0"] = hum[LUAOBFUSACTOR_DECRYPT_STR_0("\130\237\1\170\59\241", "\57\202\136\96\198\79\153\43")] or 0;
								TABLE_TableIndirection["FlatIdent_28F1%0"] = 1;
							end
							if (TABLE_TableIndirection["FlatIdent_28F1%0"] == 2) then
								TABLE_TableIndirection["color%0"] = ((TABLE_TableIndirection["hpPercent%0"] >= 0.8) and Color3.fromRGB(74, 222, 128)) or ((TABLE_TableIndirection["hpPercent%0"] >= 0.6) and Color3.fromRGB(250, 204, 21)) or ((TABLE_TableIndirection["hpPercent%0"] >= 0.4) and Color3.fromRGB(249, 115, 22)) or Color3.fromRGB(248, 113, 113);
								TABLE_TableIndirection["objs%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\131\42\173\175\129\174\255\163\55", "\152\203\67\202\199\237\199")][LUAOBFUSACTOR_DECRYPT_STR_0("\213\86\180\3\22\123\124\197\245\79\175\29", "\134\154\35\192\111\127\21\25")] = TABLE_TableIndirection["color%0"];
								TABLE_TableIndirection["objs%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\144\54\47\3\44\222", "\178\216\70\105\106\64")][LUAOBFUSACTOR_DECRYPT_STR_0("\29\42\121\253\206\199\219\149\49\47\89\249\197\218\198\211", "\224\95\75\26\150\169\181\180")] = TABLE_TableIndirection["color%0"];
								TABLE_TableIndirection["FlatIdent_28F1%0"] = 3;
							end
							if (TABLE_TableIndirection["FlatIdent_28F1%0"] == 5) then
								TABLE_TableIndirection["objs%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\56\206\217\38\64\128\116\7", "\22\107\186\184\72\36\204")][LUAOBFUSACTOR_DECRYPT_STR_0("\211\184\60\90\45\232\177\43\92\93", "\110\135\221\68\46")] = TABLE_TableIndirection["StandColors%0"][TABLE_TableIndirection["stand%0"]] or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\194\53\15\238\192\167", "\91\131\86\108\139\174\211")];
								break;
							end
							if (4 == TABLE_TableIndirection["FlatIdent_28F1%0"]) then
								TABLE_TableIndirection["level%0"], TABLE_TableIndirection["stand%0"] = getPlayerStats(player);
								TABLE_TableIndirection["objs%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\213\42\181\18\113\249\39", "\61\155\75\216\119")][LUAOBFUSACTOR_DECRYPT_STR_0("\48\174\170\40", "\189\100\203\210\92\56\105")] = LUAOBFUSACTOR_DECRYPT_STR_0("\20\125\235\102\111", "\72\79\49\157") .. TABLE_TableIndirection["level%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\181\240", "\220\232\208\81") .. player[LUAOBFUSACTOR_DECRYPT_STR_0("\209\183\246\32\32\91\184\219\191\232\53", "\193\149\222\133\80\76\58")];
								TABLE_TableIndirection["objs%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\245\73\78\220\194\113\77\222", "\178\166\61\47")][LUAOBFUSACTOR_DECRYPT_STR_0("\207\79\240\110", "\94\155\42\136\26\170")] = TABLE_TableIndirection["stand%0"];
								TABLE_TableIndirection["FlatIdent_28F1%0"] = 5;
							end
						end
					end);
				elseif (TABLE_TableIndirection["espCache%0"][player] or (1054 > 3392)) then
					TABLE_TableIndirection["espCache%0"][player][LUAOBFUSACTOR_DECRYPT_STR_0("\172\54\33\189\136\54\33\189\144", "\213\228\95\70")]:Destroy();
					TABLE_TableIndirection["espCache%0"][player][LUAOBFUSACTOR_DECRYPT_STR_0("\8\178\206\136\117\37\186\208\128", "\23\74\219\162\228")]:Destroy();
					TABLE_TableIndirection["espCache%0"][player] = nil;
				end
			elseif TABLE_TableIndirection["espCache%0"][player] then
				TABLE_TableIndirection["espCache%0"][player][LUAOBFUSACTOR_DECRYPT_STR_0("\17\239\65\167\55\48\225\78\187", "\91\89\134\38\207")]:Destroy();
				TABLE_TableIndirection["espCache%0"][player][LUAOBFUSACTOR_DECRYPT_STR_0("\102\231\196\58\17\223\38\86\234", "\71\36\142\168\86\115\176")]:Destroy();
				TABLE_TableIndirection["espCache%0"][player] = nil;
			end
		end
	end);
end));
local function smoothTeleport(targetPos)
	TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\252\169\115\173\2\189\66\76\205", "\41\191\193\18\223\99\222\54")] or TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\136\46\198\56\171\168\50\194\56\139\175\34\194\46", "\202\203\70\167\74")]:Wait();
	TABLE_TableIndirection["hrp%0"] = TABLE_TableIndirection["char%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\4\20\209\50\127\35\8\216\1\126\35\21\236\50\99\56", "\17\76\97\188\83"), 2);
	if (not TABLE_TableIndirection["hrp%0"] or (676 >= 1642)) then
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\160\53\203\56\34", "\195\229\71\185\87\80\227\43"), LUAOBFUSACTOR_DECRYPT_STR_0("\195\244\1\66\238\227\232\5\66\175\238\243\20\16\233\245\240\12\73\175\236\243\1\84\234\228\178", "\143\128\156\96\48"), true);
		return;
	end
	TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\155\247\226\19\26\189", "\119\216\177\144\114")] = CFrame.new(targetPos);
	showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\250\60\250\65\204\58\234", "\34\169\73\153"), LUAOBFUSACTOR_DECRYPT_STR_0("\158\233\7\142\186\227\25\159\175\232\75\136\166\233\10\133\166\245\69", "\235\202\140\107"), false);
end
local function applyAutoExecute()
	if not TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\45\97\32\167\204\63\242\198\25\96\49\155\234\53\254\213\24", "\165\108\20\84\200\137\71\151")] then
		return;
	end
	TABLE_TableIndirection["qot%0"] = queue_on_teleport or queueonteleport or (syn and syn[LUAOBFUSACTOR_DECRYPT_STR_0("\107\161\46\157\127\139\36\134\69\160\46\132\127\164\36\154\110", "\232\26\212\75")]) or (fluxus and fluxus[LUAOBFUSACTOR_DECRYPT_STR_0("\38\92\119\253\242\8\70\124\215\227\50\69\119\248\248\37\93", "\151\87\41\18\136")]);
	if TABLE_TableIndirection["qot%0"] then
		pcall(function()
			TABLE_TableIndirection["qot%0"]([[
                if not game:IsLoaded() then game.Loaded:Wait() end
                task.wait(4)
                local Players = game:GetService("Players")
                while not Players.LocalPlayer do task.wait(0.1) end
                task.wait(1)
                loadstring(game:HttpGet("https://raw.githubusercontent.com/RikaSeiyasae/BizarreLineage/main/Bading%20Hub.lua"))()
            ]]);
		end);
	else
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\126\189\216\223\236", "\158\59\207\170\176"), LUAOBFUSACTOR_DECRYPT_STR_0("\106\70\54\74\153\91\81\33\9\128\78\93\56\90\204\94\75\54\92\137\112\81\61\118\152\74\82\54\89\131\93\74\115\90\153\95\78\60\91\152\1", "\236\47\62\83\41"), true);
		TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\188\52\52\143\154\255\170\53\47\175\177\249\187\41\43\190", "\226\154\201\64\91\202")] = false;
		if TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\245\70\26\31\70\185\210", "\220\161\41\125\120\42")][LUAOBFUSACTOR_DECRYPT_STR_0("\157\100\180\1\153\105\165\13\169\101\165\61\191\99\169\30\168", "\110\220\17\192")] then
			TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\64\118\51\29\231\50\226", "\199\20\25\84\122\139\87\145")][LUAOBFUSACTOR_DECRYPT_STR_0("\102\28\201\161\62\242\66\10\200\186\30\217\68\27\212\190\15", "\138\39\105\189\206\123")]();
		end
	end
end
TABLE_TableIndirection["configFolder%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\61\6\141\36\253\254\231\234\29\36\134\35\245\240\200\236", "\159\127\103\233\77\147\153\175");
pcall(function()
	if ((4136 > 2397) and isfolder and not isfolder(TABLE_TableIndirection["configFolder%0"])) then
		makefolder(TABLE_TableIndirection["configFolder%0"]);
	end
end);
local function getSavedConfigs()
	TABLE_TableIndirection["FlatIdent_2388%0"] = 0;
	TABLE_TableIndirection["configs%0"] = nil;
	while true do
		if (1 == TABLE_TableIndirection["FlatIdent_2388%0"]) then
			return TABLE_TableIndirection["configs%0"];
		end
		if (TABLE_TableIndirection["FlatIdent_2388%0"] == 0) then
			TABLE_TableIndirection["configs%0"] = {};
			pcall(function()
				if (listfiles or (4334 == 4245)) then
					for _, file in ipairs(listfiles(TABLE_TableIndirection["configFolder%0"])) do
						if (file:match(LUAOBFUSACTOR_DECRYPT_STR_0("\66\190\238\185\79\197\67", "\171\103\144\132\202\32")) or (4276 <= 3031)) then
							TABLE_TableIndirection["FlatIdent_69253%0"] = 0;
							TABLE_TableIndirection["name%0"] = nil;
							while true do
								if (0 == TABLE_TableIndirection["FlatIdent_69253%0"]) then
									TABLE_TableIndirection["name%0"] = file:match("([^/\\]+)%.json$");
									if TABLE_TableIndirection["name%0"] then
										table.insert(TABLE_TableIndirection["configs%0"], TABLE_TableIndirection["name%0"]);
									end
									break;
								end
							end
						end
					end
				end
			end);
			TABLE_TableIndirection["FlatIdent_2388%0"] = 1;
		end
	end
end
local function refreshUI()
	for _, u in pairs(TABLE_TableIndirection["UIUpdaters%0"].Keybinds) do
		u();
	end
	for _, u in pairs(TABLE_TableIndirection["UIUpdaters%0"].Toggles) do
		u();
	end
	for _, u in pairs(TABLE_TableIndirection["UIUpdaters%0"].Sliders) do
		u();
	end
	for _, u in pairs(TABLE_TableIndirection["UIUpdaters%0"].Dropdowns) do
		u();
	end
	for _, u in pairs(TABLE_TableIndirection["UIUpdaters%0"].TextBoxes) do
		u();
	end
end
local function saveConfig(name)
	TABLE_TableIndirection["data%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\60\32\234\93", "\108\112\79\137")]=((TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\19\205\119\121", "\85\95\162\20\72\205\97\137")] and {X=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\242\41\141", "\173\151\157\74\188\109\152")]['X'],Y=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\8\7\59\140", "\147\68\104\88\189\188\52\181")]['Y'],Z=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\54\135\136\129", "\176\122\232\235")]['Z']}) or nil),[LUAOBFUSACTOR_DECRYPT_STR_0("\172\122\57\29", "\142\224\21\90\47")]=((TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\88\219\36\4", "\229\20\180\71\54\196\235")] and {X=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\5\113\194\177", "\224\73\30\161\131\149\202")]['X'],Y=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\221\234\242\2", "\48\145\133\145")]['Y'],Z=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\118\67\182\188", "\76\58\44\213\142\177")]['Z']}) or nil),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\33\11\124", "\24\171\68\114\77")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\196\24\73\3", "\205\143\125\48\50\231\190\100")][LUAOBFUSACTOR_DECRYPT_STR_0("\239\166\25\0", "\194\161\199\116\101\129\131\191")],[LUAOBFUSACTOR_DECRYPT_STR_0("\199\33\209\249\195\187\252\33", "\194\140\68\168\200\151")]=tostring(TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\105\254\204\116", "\149\34\155\181\69")].EnumType),[LUAOBFUSACTOR_DECRYPT_STR_0("\40\248\204\168", "\154\99\157\181")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\166\10\245\242", "\140\237\111\140\192")][LUAOBFUSACTOR_DECRYPT_STR_0("\40\24\112\29", "\120\102\121\29")],[LUAOBFUSACTOR_DECRYPT_STR_0("\135\230\160\105\152\250\169\62", "\91\204\131\217")]=tostring(TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\229\250\76\134", "\158\174\159\53\180\211\189")].EnumType),[LUAOBFUSACTOR_DECRYPT_STR_0("\102\242\234\218\123\176\121\248\244", "\213\50\157\141\189\23")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\202\41\131\167\126\161\213\35\157", "\196\158\70\228\192\18")][LUAOBFUSACTOR_DECRYPT_STR_0("\100\94\28\75", "\185\42\63\113\46")],[LUAOBFUSACTOR_DECRYPT_STR_0("\224\210\38\62\23\209\246\36\32\47\205\205\36", "\123\180\189\65\89")]=tostring(TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\246\131\247\227\133\199\167\245\253", "\233\162\236\144\132")].EnumType),[LUAOBFUSACTOR_DECRYPT_STR_0("\134\244\201\27\181\253\116\183\221", "\63\210\164\158\122\217\150")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\7\251\193\237\69\243\24\206\239", "\152\83\171\150\140\41")][LUAOBFUSACTOR_DECRYPT_STR_0("\172\228\142\54", "\104\226\133\227\83\180\123")],[LUAOBFUSACTOR_DECRYPT_STR_0("\55\59\20\81\15\0\8\85\26\63\58\64\6", "\48\99\107\67")]=tostring(TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\234\150\74\209\33\112\245\163\100", "\27\190\198\29\176\77")].EnumType),[LUAOBFUSACTOR_DECRYPT_STR_0("\202\120\205", "\46\143\43\157\84\201")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\114\75\102", "\168\55\24\54\162\63\115")],[LUAOBFUSACTOR_DECRYPT_STR_0("\54\239\52\143\244\207\5\247\16\143\193\199\3\243\47\142", "\174\119\154\64\224\178")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\11\107\209\116\35\166\8\233\26\113\214\114\17\174\21\234", "\132\74\30\165\27\101\199\122")],[LUAOBFUSACTOR_DECRYPT_STR_0("\14\242\235\168\129\180\166\34\195\246\180\179\180\186\44\226", "\212\79\135\159\199\199\213")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\88\181\161\72\122\214\10\116\132\188\84\72\214\22\122\165", "\120\25\192\213\39\60\183")],[LUAOBFUSACTOR_DECRYPT_STR_0("\43\69\51\77\27\84\58\76\53\79\61\91", "\40\120\32\95")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\9\174\53\127\172\11\63\175\20\117\173\12", "\127\90\203\89\26\207")],[LUAOBFUSACTOR_DECRYPT_STR_0("\252\32\187\196\57\203\248\24\166\216\26\244\210\59", "\157\189\85\207\171\105")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\231\180\204\186\51\240\132\245\188\16\213\168\215\187", "\99\166\193\184\213")],[LUAOBFUSACTOR_DECRYPT_STR_0("\247\162\148\180\42\139\196\186\179\162\31\158\211\186", "\234\182\215\224\219\108")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\225\148\175\58\230\128\169\56\243\152\168\33\197\140", "\85\160\225\219")],[LUAOBFUSACTOR_DECRYPT_STR_0("\125\16\151\198\6\208\74\69\0\145\239\55\206\70", "\43\60\101\227\169\86\188")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\81\221\197\176\106\192\184\46\117\218\247\190\72\193", "\87\16\168\177\223\58\172\217")],[LUAOBFUSACTOR_DECRYPT_STR_0("\7\200\85\216\56\32\200\93\237\55\53\212\92\207", "\91\84\173\57\189")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\35\188\0\249\163\194\21\189\60\240\161\207\21\171", "\182\112\217\108\156\192")],[LUAOBFUSACTOR_DECRYPT_STR_0("\139\29\92\224\187\166\9\81\234\153\142\1\91\251\138\164\11\77", "\235\202\104\40\143")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\44\158\15\182\61\135\26\160\8\153\63\176\30\159\26\183\14\142", "\217\109\235\123")],[LUAOBFUSACTOR_DECRYPT_STR_0("\6\156\106\89\64\220\204\164\34\155\78\89\99\217\217\180\40\135", "\221\71\233\30\54\16\176\173")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\21\233\74\176\4\240\95\166\49\238\110\176\39\245\74\182\59\242", "\223\84\156\62")],[LUAOBFUSACTOR_DECRYPT_STR_0("\229\249\238\216\180\47\211\248\208\220\190\63", "\91\182\156\130\189\215")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\77\118\160\80\125\103\169\81\76\114\165\81", "\53\30\19\204")],[LUAOBFUSACTOR_DECRYPT_STR_0("\216\245\100\139\148\237\225\98\144\149\248\233\116", "\199\153\128\16\228")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\240\63\241\22\148\197\43\247\13\149\208\35\225", "\199\177\74\133\121")],[LUAOBFUSACTOR_DECRYPT_STR_0("\153\220\168\241\5\199\35\188", "\74\216\169\220\158\87\166")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\201\54\7\35\104\233\42\23", "\58\136\67\115\76")],[LUAOBFUSACTOR_DECRYPT_STR_0("\208\191\204\86\183\37\191\79\232\152\217\80\129", "\61\145\202\184\57\229\64\203")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\125\71\157\72\110\87\157\85\69\96\136\78\88", "\39\60\50\233")],[LUAOBFUSACTOR_DECRYPT_STR_0("\59\38\183\35\176\41\187\167\62\58\176\56\131\38\177\166", "\195\122\83\195\76\226\72\210")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\197\193\47\241\19\229\221\63\218\40\247\192\58\240\34\225", "\65\132\180\91\158")],[LUAOBFUSACTOR_DECRYPT_STR_0("\49\76\230\47\9\119\244\32\4\126\221\43\1", "\78\101\28\177")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\17\132\215\80\41\191\197\95\36\182\236\84\33", "\49\69\212\128")],[LUAOBFUSACTOR_DECRYPT_STR_0("\35\60\231\243\237\28\63\192\247\228\19", "\129\119\108\176\146")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\8\255\48\204\41\5\47\44\202\2\201", "\124\92\175\103\173\69\110")],[LUAOBFUSACTOR_DECRYPT_STR_0("\226\30\15\46\228\54\2\53\205\61\7", "\87\161\88\99")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\49\223\227\213\146\222\34\16\245\234\200", "\67\114\153\143\172\215\176")],[LUAOBFUSACTOR_DECRYPT_STR_0("\157\132\226\23\141\178\235\11\186", "\110\222\194\142")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\52\255\23\176\97\177\18\220\31", "\193\119\185\123\201\50")],[LUAOBFUSACTOR_DECRYPT_STR_0("\84\46\245\63\36\124\6", "\127\23\104\153\70\111\25")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\42\33\170\182\0\41\174", "\211\105\103\198\207\75\76\215")][LUAOBFUSACTOR_DECRYPT_STR_0("\224\166\189\234", "\214\174\199\208\143\30\108\218")],[LUAOBFUSACTOR_DECRYPT_STR_0("\50\162\7\179\142\83\193\125\8\148\14", "\41\113\228\107\202\197\54\184")]=tostring(TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\89\171\52\69\81\136\33", "\60\26\237\88")].EnumType),[LUAOBFUSACTOR_DECRYPT_STR_0("\239\47\118\238\161\215\33\65\212\130", "\206\184\74\20\134")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\15\225\236\185\252\69\51\249\10\200", "\172\88\132\142\209\147\42\88")],[LUAOBFUSACTOR_DECRYPT_STR_0("\176\143\206\5\57\250\181\162\132\205\15\58\240\186", "\222\231\234\172\109\86\149")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\218\234\194\16\226\224\203\61\227\238\194\20\232\235", "\120\141\143\160")],[LUAOBFUSACTOR_DECRYPT_STR_0("\119\169\180\90\79\163\189\127\79\162\179\75", "\50\32\204\214")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\177\66\55\113\188\30\141\106\58\119\182\8", "\113\230\39\85\25\211")],[LUAOBFUSACTOR_DECRYPT_STR_0("\233\190\4\224\40\196\160\103\219\173\3\228", "\43\190\219\102\136\71\171\203")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\21\123\50\81\45\113\59\117\39\104\53\85", "\57\66\30\80")],[LUAOBFUSACTOR_DECRYPT_STR_0("\30\221\162\29\139\54\255\167\33\221\179\1\151", "\228\73\184\192\117\228\89\148")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\248\140\119\28\192\134\126\55\199\140\102\0\220", "\116\175\233\21")],[LUAOBFUSACTOR_DECRYPT_STR_0("\201\253\188\78\212\62\52\204\249\183\66", "\95\158\152\222\38\187\81")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\184\55\186\172\199\243\143\52\187\167", "\168\152\221\85\210\195")],[LUAOBFUSACTOR_DECRYPT_STR_0("\156\219\247\143\164\209\254\174\165\202\240\149\189\223\249", "\231\203\190\149")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\250\56\225\249\179\250\16\228\51\247\244\174\227\26\193", "\123\173\93\131\145\220\149")],[LUAOBFUSACTOR_DECRYPT_STR_0("\55\209\249\46\81\225\19\199\248\53\113\202\21\214\228\49\96", "\153\118\164\141\65\20")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\39\146\237\210\24\235\49\147\246\242\51\237\32\143\242\227", "\96\142\82\230\130\151")],[LUAOBFUSACTOR_DECRYPT_STR_0("\124\181\67\71\231\250\74\180\124\85\237\250\76\184\124\86\229\224\75\225", "\142\47\208\47\34\132")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\197\187\8\7\88\72\243\186\55\21\82\72\245\182\55\22\90\82\242\239", "\60\150\222\100\98\59")],[LUAOBFUSACTOR_DECRYPT_STR_0("\118\40\86\88\223\137\38\76\40\84\94\222\168\26\64\37\6", "\81\37\92\55\54\187\218")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\51\80\172\57\133\51\83\164\35\130\8\65\191\28\132\25\21", "\225\96\36\205\87")][LUAOBFUSACTOR_DECRYPT_STR_0("\199\167\79\124", "\105\137\198\34\25\28\47")],[LUAOBFUSACTOR_DECRYPT_STR_0("\34\189\64\120\196\34\190\72\98\195\25\172\83\93\197\8\248\117\111\208\20", "\160\113\201\33\22")]=tostring(TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\231\76\173\169\173\158\195\81\184\164\161\168\198\115\169\190\248", "\205\180\56\204\199\201")].EnumType),[LUAOBFUSACTOR_DECRYPT_STR_0("\176\219\48\29\128\202\57\28\176\201\53\12\128\214\15\12\130\208\56\74", "\120\227\190\92")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\14\89\19\126\32\72\220\230\14\75\22\111\32\84\234\246\60\82\27\41", "\130\93\60\127\27\67\60\185")],[LUAOBFUSACTOR_DECRYPT_STR_0("\123\38\57\64\228\112\106\65\38\59\70\229\81\86\77\43\106", "\29\40\82\88\46\128\35")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\8\81\213\19\5\139\44\76\192\30\9\189\41\110\209\4\83", "\216\91\37\180\125\97")][LUAOBFUSACTOR_DECRYPT_STR_0("\11\119\17\198", "\55\69\22\124\163")],[LUAOBFUSACTOR_DECRYPT_STR_0("\75\199\93\230\219\66\71\253\108\208\84\237\205\90\85\237\42\231\69\248\218", "\148\24\179\60\136\191\17\48")]=tostring(TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\129\62\248\174\242\129\61\240\180\245\186\47\235\139\243\171\120", "\150\210\74\153\192")].EnumType)};
	local s, _ = pcall(function()
		writefile(TABLE_TableIndirection["configFolder%0"] .. "/" .. name .. LUAOBFUSACTOR_DECRYPT_STR_0("\173\194\43\133\123", "\212\131\168\88\234\21\26"), TABLE_TableIndirection["HttpService%0"]:JSONEncode(TABLE_TableIndirection["data%0"]));
	end);
	return s;
end
local function loadConfig(name)
	local s, res = pcall(function()
		return TABLE_TableIndirection["HttpService%0"]:JSONDecode(readfile(TABLE_TableIndirection["configFolder%0"] .. "/" .. name .. LUAOBFUSACTOR_DECRYPT_STR_0("\11\126\154\131\54", "\71\37\20\233\236\88")));
	end);
	if ((s and res) or (4782 <= 1199)) then
		TABLE_TableIndirection["FlatIdent_61800%0"] = 0;
		TABLE_TableIndirection["parseKey%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_61800%0"] == 5) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\250\67\178\30\79\227\71\113\194\72\181\15", "\60\173\38\208\118\32\140\44")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\118\55\227\219\47\192\74\31\238\221\37\214", "\175\33\82\129\179\64")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\217\234\50\199\51\189\229\195\53\217\57\190", "\210\142\143\80\175\92")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\142\236\241\206\182\230\248\234\188\255\246\202", "\166\217\137\147")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\212\166\112\174\254\73\232\128\122\163\226\82\240", "\38\131\195\18\198\145")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\100\211\56\227\55\91\88\245\50\238\43\64\64", "\52\51\182\90\139\88")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\193\188\210\239\76\249\178\226\230\74\242", "\35\150\217\176\135")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\206\85\9\4\120\76\125\203\81\2\8", "\22\153\48\107\108\23\35")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\57\128\185\18\112\122\74\192\0\145\190\8\105\116\77", "\137\110\229\219\122\31\21\33")] = tonumber(res.WebhookInterval) or 1;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\59\168\44\116\19\83\33\125\15\169\61\72\53\89\45\110\14", "\30\122\221\88\27\86\43\68")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\25\61\255\137\29\48\238\133\45\60\238\181\59\58\226\150\44", "\230\88\72\139")] or false;
				TABLE_TableIndirection["FlatIdent_61800%0"] = 6;
			end
			if (TABLE_TableIndirection["FlatIdent_61800%0"] == 4) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\70\132\33\26\15\3\107\98\177\19\31", "\56\18\212\118\123\99\104")] = tonumber(res.TPWalkSpeed) or 0.2;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\61\207\244\202\250\208\31\235\244\214\219", "\190\126\137\152\179\191")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\11\36\126\210\143\78\41\0\126\206\174", "\32\72\98\18\171\202")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\39\174\62\109\196\20\141\55\112", "\151\100\232\82\20")] = tonumber(res.CFlySpeed) or 50;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\92\255\250\17\84\220\239", "\104\31\185\150")] = TABLE_TableIndirection["parseKey%0"](res.CFlyKey, res.CFlyKeyType) or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\255\159\255\238\204\201\249", "\160\188\217\147\151\135\172\128")];
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\56\216\18\248\53\198\4\232\34\220", "\169\111\189\112\144\90")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\250\134\39\165\176\143\2\183\255\175", "\226\173\227\69\205\223\224\105")] or "";
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\111\59\32\83\192\20\83\27\44\90\205\23\93\58", "\123\56\94\66\59\175")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\205\70\113\233\21\241\138\223\77\114\227\22\251\133", "\225\154\35\19\129\122\158")] or false;
				TABLE_TableIndirection["FlatIdent_61800%0"] = 5;
			end
			if (TABLE_TableIndirection["FlatIdent_61800%0"] == 3) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\105\5\231\82\246\243\213\48\104\1\226\83", "\84\58\96\139\55\149\135\176")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\32\58\175\5\77\219\59\23\13\162\9\74", "\94\115\95\195\96\46\175")] or LUAOBFUSACTOR_DECRYPT_STR_0("\112\78\51\56\45\57\201\174\13", "\128\35\43\95\93\78\77\231");
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\133\8\34\59\36\106\168\182\9\4\53\30\122", "\201\196\125\86\84\119\30")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\226\251\16\176\240\250\5\173\215\220\5\182\199", "\223\163\142\100")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\163\3\215\190\138\131\31\199", "\216\226\118\163\209")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\159\229\15\14\101\113\54\186", "\95\222\144\123\97\55\16")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\56\145\174\76\209\28\144\168\90\209\24\141\190", "\131\121\228\218\35")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\248\197\54\14\75\30\205\194\59\51\120\18\221", "\123\185\176\66\97\25")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\233\26\13\94\39\46\81\53\236\6\10\69\20\33\91\52", "\81\168\111\121\49\117\79\56")] = tonumber(res.AutoRaidDistance) or 7.5;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\243\58\210\183\203\1\192\184\198\8\233\179\195", "\214\167\106\133")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\29\8\123\78\56\116\252\39\57\78\67\49\123", "\185\73\88\44\47\84\31")] or false;
				TABLE_TableIndirection["FlatIdent_61800%0"] = 4;
			end
			if (TABLE_TableIndirection["FlatIdent_61800%0"] == 2) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\169\194\14\175\227\201\173\250\19\179\192\246\135\217", "\159\232\183\122\192\179")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\5\39\188\46\20\4\141\12\45\33\187\40\43\60", "\65\68\82\200")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\4\69\102\47\233\206\108\40\99\107\51\219\202\115", "\30\69\48\18\64\175\175")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\209\57\11\227\29\241\62\18\223\34\227\56\26\225", "\91\144\76\127\140")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\193\29\82\46\227\182\212\201\229\26\96\32\193\183", "\176\128\104\38\65\179\218\181")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\241\209\214\26\224\200\195\12\213\214\228\20\194\201", "\117\176\164\162")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\183\199\9\245\217\109\129\198\53\252\219\96\129\208", "\25\228\162\101\144\186")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\123\51\181\11\241\240\77\50\137\2\243\253\77\36", "\132\40\86\217\110\146")] or LUAOBFUSACTOR_DECRYPT_STR_0("\77\206\43\185\164\103\178\16\48", "\62\30\171\71\220\199\19\156");
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\97\80\184\57\109\197\46\84\69\87\136\63\78\221\46\67\67\64", "\45\32\37\204\86\61\169\79")] = tonumber(res.AutoPlayerDistance) or 7.5;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\116\64\17\179\133\112\84\76\0\174\133\115\70\92\17\181\186\114", "\28\53\53\101\220\213")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\44\73\28\78\106\173\81\198\8\78\56\78\73\168\68\214\2\82", "\191\109\60\104\33\58\193\48")] or LUAOBFUSACTOR_DECRYPT_STR_0("\165\210\20\232\144", "\135\231\183\120");
				TABLE_TableIndirection["FlatIdent_61800%0"] = 3;
			end
			if (TABLE_TableIndirection["FlatIdent_61800%0"] == 6) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\213\15\64\225\54\14\172\226\57\91\237\33\25\161\213\30\77\234\49\75", "\201\134\106\44\132\85\122")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\5\9\123\58\2\24\205\39\5\27\126\43\2\4\251\55\55\2\115\110", "\67\86\108\23\95\97\108\168")] or LUAOBFUSACTOR_DECRYPT_STR_0("\151\61\64\15\167\48\155\30\234", "\48\196\88\44\106\196\68\181");
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\177\203\221\45\132\151\181\37\150\220\212\38\146\143\167\53\211", "\76\226\191\188\67\224\196\194")] = TABLE_TableIndirection["parseKey%0"](res.StandSwitcherKey1, res.StandSwitcherKey1Type) or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\234\60\6\254\249\234\63\14\228\254\209\45\21\219\248\192\121", "\157\185\72\103\144")];
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\106\182\134\127\171\165\92\183\185\109\161\165\90\187\185\110\169\191\93\225", "\209\57\211\234\26\200")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\50\203\170\132\83\198\4\202\149\150\89\198\2\198\149\149\81\220\5\156", "\178\97\174\198\225\48")] or LUAOBFUSACTOR_DECRYPT_STR_0("\252\83\8\244\123\242\65\129\24", "\111\175\54\100\145\24\134");
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\112\13\33\27\71\42\55\28\87\26\40\16\81\50\37\12\17", "\117\35\121\64")] = TABLE_TableIndirection["parseKey%0"](res.StandSwitcherKey2, res.StandSwitcherKey2Type) or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\238\169\239\216\39\124\202\180\250\213\43\74\207\150\235\207\113", "\47\189\221\142\182\67")];
				updateTPWalk();
				if ((396 <= 3804) and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\3\153\43\210\109\167\33\43\44\186\35", "\73\64\223\71\171\40\201\64")]) then
					startCFly();
				else
					stopCFly();
				end
				TABLE_TableIndirection["FlatIdent_61800%0"] = 7;
			end
			if (TABLE_TableIndirection["FlatIdent_61800%0"] == 0) then
				if (res[LUAOBFUSACTOR_DECRYPT_STR_0("\38\130\199\8", "\29\106\237\164\57\192")] or (4864 < 1902)) then
					TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\157\171\228\235", "\146\209\196\135\218\181\178\192")] = Vector3.new(res[LUAOBFUSACTOR_DECRYPT_STR_0("\1\63\128\64", "\199\77\80\227\113\48")].X, res[LUAOBFUSACTOR_DECRYPT_STR_0("\6\48\93\156", "\173\74\95\62")].Y, res[LUAOBFUSACTOR_DECRYPT_STR_0("\234\22\95\103", "\220\166\121\60\86\171\103")].Z);
				end
				if res[LUAOBFUSACTOR_DECRYPT_STR_0("\197\13\62\226", "\122\137\98\93\208\91\170")] then
					TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\171\238\31\29", "\170\231\129\124\47\181\210\201")] = Vector3.new(res[LUAOBFUSACTOR_DECRYPT_STR_0("\167\180\57\98", "\74\235\219\90\80\106")].X, res[LUAOBFUSACTOR_DECRYPT_STR_0("\96\204\88\105", "\146\44\163\59\91\90\148\26")].Y, res[LUAOBFUSACTOR_DECRYPT_STR_0("\89\34\187\211", "\41\21\77\216\225")].Z);
				end
				TABLE_TableIndirection["parseKey%0"] = nil;
				TABLE_TableIndirection["parseKey%0"] = function(kName, kType)
					if ((4839 >= 3700) and kName and kType) then
						if ((kType == LUAOBFUSACTOR_DECRYPT_STR_0("\49\67\103\72\90\102\119\92\55\66\118\64", "\37\116\45\18")) or (1075 > 1918)) then
							return Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\228\250\79\129\164\203\250", "\203\175\159\54\194")][kName];
						elseif (kType ~= LUAOBFUSACTOR_DECRYPT_STR_0("\94\192\12\54\20\122\209\126\220\48\53\74\90\214\79\215\9\62", "\162\27\174\121\91\58\47")) then
						else
							return Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\230\214\26\231\22\215\195\208\11\193\38\201\214", "\185\179\165\127\149\95")][kName];
						end
					end
					return nil;
				end;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\122\112\214\165", "\119\49\21\175\148")] = TABLE_TableIndirection["parseKey%0"](res.Key1, res.Key1Type) or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\124\176\15\12", "\149\55\213\118\61\77\41\234")];
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\54\3\211\148", "\123\125\102\170\166\137\89\207")] = TABLE_TableIndirection["parseKey%0"](res.Key2, res.Key2Type) or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\101\5\65\111", "\201\46\96\56\93\110\227")];
				TABLE_TableIndirection["FlatIdent_61800%0"] = 1;
			end
			if (TABLE_TableIndirection["FlatIdent_61800%0"] == 7) then
				applyAutoExecute();
				refreshUI();
				return true;
			end
			if (1 == TABLE_TableIndirection["FlatIdent_61800%0"]) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\143\12\233\254\25\196\144\6\247", "\161\219\99\142\153\117")] = TABLE_TableIndirection["parseKey%0"](res.ToggleKey, res.ToggleKeyType) or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\72\190\161\116\193\121\154\163\106", "\173\28\209\198\19")];
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\65\220\128\186\121\231\156\190\108", "\219\21\140\215")] = TABLE_TableIndirection["parseKey%0"](res.TPWalkKey, res.TPWalkKeyType) or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\124\136\241\166\84\67\147\195\190", "\56\40\216\166\199")];
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\3\135\37", "\79\70\212\117")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\130\37\209", "\109\199\118\129\166\153")] or false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\16\165\99\249\23\177\101\251\1\191\100\255\37\185\120\248", "\150\81\208\23")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\216\208\244\132\223\196\242\134\201\202\243\130\237\204\239\133", "\235\153\165\128")] or LUAOBFUSACTOR_DECRYPT_STR_0("\153\76\174\32\81", "\158\219\41\194\79\38\70\202");
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\98\48\59\13\200\215\154\78\1\38\17\250\215\134\64\32", "\232\35\69\79\98\142\182")] = tonumber(res.AutoFarmDistance) or 7.5;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\74\5\19\248\122\20\26\249\84\15\29\238", "\157\25\96\127")] = res[LUAOBFUSACTOR_DECRYPT_STR_0("\148\134\249\0\83\37\162\135\216\10\82\34", "\81\199\227\149\101\48")] or {[LUAOBFUSACTOR_DECRYPT_STR_0("\92\94\247", "\219\29\50\155\113\150\230\92")]=true};
				TABLE_TableIndirection["FlatIdent_61800%0"] = 2;
			end
		end
	end
	return false;
end
TABLE_TableIndirection["mainFrame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\50\196\118\250", "\45\177\64\165\27\159\40"), TABLE_TableIndirection["gui%0"]);
TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\60\24\12\162\125\15\38\0\163\124\9", "\18\125\118\111\202")] = Vector2.new(0.5, 0.5);
TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\99\53\67\255", "\155\48\92\57\154\80\205\167")] = UDim2.new(0, 550, 0, 440);
TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\137\194\168\182\236\162\74\183", "\37\217\173\219\223\152\203")] = UDim2.new(0.2, 0, 0.5, 0);
TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\43\4\28\61\72\186\249\28\11\27\21\64\164\249\27\86", "\150\105\101\127\86\47\200")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\236\243\240\190\192\210\193\231\253\177", "\160\174\146\147\213\167")];
TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\98\229\25\79\11\83\79\241\20\64\56\83\65\234\9\84\13\83\69\234\25\93", "\33\32\132\122\36\108")] = 0;
TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\154\24\123\91\111\157\17\97\72\121\183\16\115\69\104\170", "\28\217\116\18\43")] = true;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\126\245\91\194\160\57\192", "\92\178\55\182\52\176\206"), TABLE_TableIndirection["mainFrame%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\57\58\99\27\31\39\67\20\30\60\100\6", "\117\122\85\17")] = UDim.new(0, 16);
TABLE_TableIndirection["mainStroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\189\198\25\80\180\210\131\234", "\189\232\143\74\36\198"), TABLE_TableIndirection["mainFrame%0"]);
TABLE_TableIndirection["mainStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\223\165\6\65\197", "\106\156\202\106\46\183")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\28\26\120\54\36\41", "\74\93\121\27\83")];
TABLE_TableIndirection["mainStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\73\179\239\125\118\181\227\109\110", "\30\29\219\134")] = 1.5;
TABLE_TableIndirection["mainStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\97\181\24\244\231\79\25\28\80\169\26\227", "\110\53\199\121\154\148\63\120")] = 0;
TABLE_TableIndirection["mainStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\32\10\239\51\64\207\21\8\240\52\92\209\14\30\250", "\156\97\122\159\95\57")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\239\166\202\244\18\49\43\220\185\209\253\38\13\59\203", "\95\174\214\186\152\107\98")][LUAOBFUSACTOR_DECRYPT_STR_0("\171\1\99\143\22\212", "\166\233\110\17\235\115")];
TABLE_TableIndirection["strokeHues%0"] = {Color3.fromRGB(235, 55, 85),Color3.fromRGB(210, 50, 140),Color3.fromRGB(160, 45, 215),Color3.fromRGB(210, 50, 140)};
task.spawn(function()
	TABLE_TableIndirection["FlatIdent_4508F%0"] = 0;
	TABLE_TableIndirection["idx%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_4508F%0"] == 0) then
			TABLE_TableIndirection["idx%0"] = 1;
			while TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\72\15\214\196\252\170", "\28\24\110\164\161\146\222")] do
				TABLE_TableIndirection["FlatIdent_284EA%0"] = 0;
				TABLE_TableIndirection["next%0"] = nil;
				while true do
					if (TABLE_TableIndirection["FlatIdent_284EA%0"] == 0) then
						TABLE_TableIndirection["next%0"] = (TABLE_TableIndirection["idx%0"] % #TABLE_TableIndirection["strokeHues%0"]) + 1;
						TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["mainStroke%0"], TweenInfo.new(2.5, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\126\194\69\44\85\196\101\49\66\207\83", "\69\59\163\54")].Sine, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\149\169\217\67\61\202\146\185\186\207\73\39\196\185\190", "\214\208\200\170\42\83\173")].InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\250\46\126\175\103", "\21\185\65\18\192")]=TABLE_TableIndirection["strokeHues%0"][TABLE_TableIndirection["next%0"]]}):Play();
						TABLE_TableIndirection["FlatIdent_284EA%0"] = 1;
					end
					if (TABLE_TableIndirection["FlatIdent_284EA%0"] == 1) then
						TABLE_TableIndirection["idx%0"] = TABLE_TableIndirection["next%0"];
						task.wait(2.5);
						break;
					end
				end
			end
			break;
		end
	end
end);
TABLE_TableIndirection["orbLayer%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\216\68\92\22\164", "\193\158\54\61\123"), TABLE_TableIndirection["mainFrame%0"]);
TABLE_TableIndirection["orbLayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\6\24\58\188", "\217\85\113\64")] = UDim2.new(1, 0, 1, 0);
TABLE_TableIndirection["orbLayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\105\14\207\203\232\144\234\94\1\200\244\253\131\235\88\31\205\210\234\140\230\82", "\133\43\111\172\160\143\226")] = 1;
TABLE_TableIndirection["orbLayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\241\138\94\213\197\211", "\160\171\195\48\177")] = 0;
TABLE_TableIndirection["ORB_COUNT%0"] = 3;
TABLE_TableIndirection["ORB_COLOR%0"] = {TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\252\17\116\124", "\167\179\99\22\77\60\161\207")],TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\46\109\137\10", "\44\97\31\235\56")],TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\222\28\250\247", "\196\145\110\152")]};
TABLE_TableIndirection["ORB_SIZE%0"] = {170,130,110};
TABLE_TableIndirection["ORB_XPCT%0"] = {0.12,0.78,0.48};
TABLE_TableIndirection["ORB_YPCT%0"] = {0.18,0.62,0.82};
TABLE_TableIndirection["ORB_SX%0"] = {0.018,0.012,0.015};
TABLE_TableIndirection["ORB_SY%0"] = {0.011,0.019,0.013};
TABLE_TableIndirection["ORB_PHASE%0"] = {0,2.1,4.3};
TABLE_TableIndirection["orbHalos%0"] = {};
TABLE_TableIndirection["orbCores%0"] = {};
for i = 1, TABLE_TableIndirection["ORB_COUNT%0"] do
	TABLE_TableIndirection["FlatIdent_77172%0"] = 0;
	TABLE_TableIndirection["sz%0"] = nil;
	TABLE_TableIndirection["xp%0"] = nil;
	TABLE_TableIndirection["yp%0"] = nil;
	TABLE_TableIndirection["col%0"] = nil;
	TABLE_TableIndirection["half%0"] = nil;
	TABLE_TableIndirection["halo%0"] = nil;
	TABLE_TableIndirection["core%0"] = nil;
	TABLE_TableIndirection["cs0%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_77172%0"] == 0) then
			TABLE_TableIndirection["sz%0"] = TABLE_TableIndirection["ORB_SIZE%0"][i];
			TABLE_TableIndirection["xp%0"] = TABLE_TableIndirection["ORB_XPCT%0"][i];
			TABLE_TableIndirection["yp%0"] = TABLE_TableIndirection["ORB_YPCT%0"][i];
			TABLE_TableIndirection["col%0"] = TABLE_TableIndirection["ORB_COLOR%0"][i];
			TABLE_TableIndirection["FlatIdent_77172%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_77172%0"] == 6) then
			TABLE_TableIndirection["orbCores%0"][i] = TABLE_TableIndirection["core%0"];
			break;
		end
		if (TABLE_TableIndirection["FlatIdent_77172%0"] == 1) then
			TABLE_TableIndirection["half%0"] = TABLE_TableIndirection["sz%0"] / 2;
			TABLE_TableIndirection["halo%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\60\255\255\93", "\146\56\78\158"), TABLE_TableIndirection["orbLayer%0"]);
			TABLE_TableIndirection["halo%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\30\210\85\227", "\58\77\187\47\134")] = UDim2.new(0, TABLE_TableIndirection["sz%0"], 0, TABLE_TableIndirection["sz%0"]);
			TABLE_TableIndirection["halo%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\34\58\178\14\241\39\91\16", "\126\114\85\193\103\133\78\52")] = UDim2.new(TABLE_TableIndirection["xp%0"], -TABLE_TableIndirection["half%0"], TABLE_TableIndirection["yp%0"], -TABLE_TableIndirection["half%0"]);
			TABLE_TableIndirection["FlatIdent_77172%0"] = 2;
		end
		if (TABLE_TableIndirection["FlatIdent_77172%0"] == 5) then
			TABLE_TableIndirection["core%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\230\212\32\124\193\201\1\113\222\222\2\113\220\222\62", "\24\164\187\82")] = 0;
			TABLE_TableIndirection["core%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\203\243\82\174\244\233", "\145\145\186\60\202")] = 0;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\211\249\16\11\244\222\54\22", "\100\134\176\83"), TABLE_TableIndirection["core%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\240\206\80\179\182\7\225\192\70\180\166\6", "\117\179\161\34\221\211")] = UDim.new(1, 0);
			TABLE_TableIndirection["orbHalos%0"][i] = TABLE_TableIndirection["halo%0"];
			TABLE_TableIndirection["FlatIdent_77172%0"] = 6;
		end
		if (TABLE_TableIndirection["FlatIdent_77172%0"] == 2) then
			TABLE_TableIndirection["halo%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\111\177\249\205\3\237\170\88\190\254\229\11\243\170\95\227", "\197\45\208\154\166\100\159")] = TABLE_TableIndirection["col%0"];
			TABLE_TableIndirection["halo%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\11\245\133\183\52\59\251\147\178\55\29\230\135\178\32\57\245\148\185\61\42\237", "\83\73\148\230\220")] = 0.88;
			TABLE_TableIndirection["halo%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\17\208\228\228\234\155\0\214\236\229\223\128\43\218\250", "\233\83\191\150\128\143")] = 0;
			TABLE_TableIndirection["halo%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\205\175\193\118\8\239", "\109\151\230\175\18")] = 0;
			TABLE_TableIndirection["FlatIdent_77172%0"] = 3;
		end
		if (TABLE_TableIndirection["FlatIdent_77172%0"] == 3) then
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\149\211\98\75\146\174\255\83", "\224\192\154\33\36"), TABLE_TableIndirection["halo%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\160\91\10\140\134\70\42\131\135\93\13\145", "\226\227\52\120")] = UDim.new(1, 0);
			TABLE_TableIndirection["core%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\35\249\237\169\79", "\217\101\139\140\196\42\223\183"), TABLE_TableIndirection["orbLayer%0"]);
			TABLE_TableIndirection["core%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\59\1\172\18\75\8\63\160\19\74\14", "\36\122\111\207\122")] = Vector2.new(0.5, 0.5);
			TABLE_TableIndirection["cs0%0"] = TABLE_TableIndirection["sz%0"] * 0.38;
			TABLE_TableIndirection["FlatIdent_77172%0"] = 4;
		end
		if (TABLE_TableIndirection["FlatIdent_77172%0"] == 4) then
			TABLE_TableIndirection["core%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\63\1\254\189", "\84\108\104\132\216\216")] = UDim2.new(0, TABLE_TableIndirection["cs0%0"], 0, TABLE_TableIndirection["cs0%0"]);
			TABLE_TableIndirection["core%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\252\20\213\81\244\173\77\194", "\34\172\123\166\56\128\196")] = UDim2.new(TABLE_TableIndirection["xp%0"], 0, TABLE_TableIndirection["yp%0"], 0);
			TABLE_TableIndirection["core%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\134\168\171\192\77\97\218\1\170\173\139\196\70\124\199\71", "\116\196\201\200\171\42\19\181")] = TABLE_TableIndirection["col%0"];
			TABLE_TableIndirection["core%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\84\135\248\86\18\18\19\99\136\255\105\7\1\18\101\150\250\79\16\14\31\111", "\124\22\230\155\61\117\96")] = 0.65;
			TABLE_TableIndirection["FlatIdent_77172%0"] = 5;
		end
	end
end
TABLE_TableIndirection["orbTime%0"] = 0;
TABLE_TableIndirection["RunService%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\237\174\231\249\234\239\240\196\191", "\149\165\203\134\139\158\141")]:Connect(function(dt)
	TABLE_TableIndirection["FlatIdent_44265%0"] = 0;
	while true do
		if (TABLE_TableIndirection["FlatIdent_44265%0"] == 1) then
			for i = 1, TABLE_TableIndirection["ORB_COUNT%0"] do
				pcall(function()
					TABLE_TableIndirection["FlatIdent_53124%0"] = 0;
					TABLE_TableIndirection["xp%0"] = nil;
					TABLE_TableIndirection["yp%0"] = nil;
					TABLE_TableIndirection["sx%0"] = nil;
					TABLE_TableIndirection["sy%0"] = nil;
					TABLE_TableIndirection["phase%0"] = nil;
					TABLE_TableIndirection["sz%0"] = nil;
					TABLE_TableIndirection["ox%0"] = nil;
					TABLE_TableIndirection["oy%0"] = nil;
					TABLE_TableIndirection["breathe%0"] = nil;
					TABLE_TableIndirection["s%0"] = nil;
					TABLE_TableIndirection["half%0"] = nil;
					TABLE_TableIndirection["cs%0"] = nil;
					while true do
						if (TABLE_TableIndirection["FlatIdent_53124%0"] == 0) then
							TABLE_TableIndirection["xp%0"] = TABLE_TableIndirection["ORB_XPCT%0"][i];
							TABLE_TableIndirection["yp%0"] = TABLE_TableIndirection["ORB_YPCT%0"][i];
							TABLE_TableIndirection["sx%0"] = TABLE_TableIndirection["ORB_SX%0"][i];
							TABLE_TableIndirection["sy%0"] = TABLE_TableIndirection["ORB_SY%0"][i];
							TABLE_TableIndirection["FlatIdent_53124%0"] = 1;
						end
						if (TABLE_TableIndirection["FlatIdent_53124%0"] == 1) then
							TABLE_TableIndirection["phase%0"] = TABLE_TableIndirection["ORB_PHASE%0"][i];
							TABLE_TableIndirection["sz%0"] = TABLE_TableIndirection["ORB_SIZE%0"][i];
							TABLE_TableIndirection["ox%0"] = TABLE_TableIndirection["xp%0"] + (math.sin((TABLE_TableIndirection["orbTime%0"] * TABLE_TableIndirection["sx%0"] * math[LUAOBFUSACTOR_DECRYPT_STR_0("\35\165", "\70\83\204\32")]) + TABLE_TableIndirection["phase%0"]) * 0.13);
							TABLE_TableIndirection["oy%0"] = TABLE_TableIndirection["yp%0"] + (math.cos((TABLE_TableIndirection["orbTime%0"] * TABLE_TableIndirection["sy%0"] * math[LUAOBFUSACTOR_DECRYPT_STR_0("\30\136", "\224\110\225\107")]) + TABLE_TableIndirection["phase%0"]) * 0.09);
							TABLE_TableIndirection["FlatIdent_53124%0"] = 2;
						end
						if (TABLE_TableIndirection["FlatIdent_53124%0"] == 2) then
							TABLE_TableIndirection["breathe%0"] = 1 + (math.sin((TABLE_TableIndirection["orbTime%0"] * 0.38) + TABLE_TableIndirection["phase%0"]) * 0.11);
							TABLE_TableIndirection["s%0"] = TABLE_TableIndirection["sz%0"] * TABLE_TableIndirection["breathe%0"];
							TABLE_TableIndirection["half%0"] = TABLE_TableIndirection["s%0"] / 2;
							TABLE_TableIndirection["cs%0"] = TABLE_TableIndirection["s%0"] * 0.38;
							TABLE_TableIndirection["FlatIdent_53124%0"] = 3;
						end
						if (3 == TABLE_TableIndirection["FlatIdent_53124%0"]) then
							TABLE_TableIndirection["orbHalos%0"][i][LUAOBFUSACTOR_DECRYPT_STR_0("\199\127\199\52", "\164\148\22\189\81\80\164")] = UDim2.new(0, TABLE_TableIndirection["s%0"], 0, TABLE_TableIndirection["s%0"]);
							TABLE_TableIndirection["orbHalos%0"][i][LUAOBFUSACTOR_DECRYPT_STR_0("\130\143\100\186\51\66\120\188", "\23\210\224\23\211\71\43")] = UDim2.new(TABLE_TableIndirection["ox%0"], -TABLE_TableIndirection["half%0"], TABLE_TableIndirection["oy%0"], -TABLE_TableIndirection["half%0"]);
							TABLE_TableIndirection["orbCores%0"][i][LUAOBFUSACTOR_DECRYPT_STR_0("\154\143\10\178", "\144\201\230\112\215\53\75\188")] = UDim2.new(0, TABLE_TableIndirection["cs%0"], 0, TABLE_TableIndirection["cs%0"]);
							TABLE_TableIndirection["orbCores%0"][i][LUAOBFUSACTOR_DECRYPT_STR_0("\101\202\10\227\226\172\90\203", "\197\53\165\121\138\150")] = UDim2.new(TABLE_TableIndirection["ox%0"], 0, TABLE_TableIndirection["oy%0"], 0);
							break;
						end
					end
				end);
			end
			break;
		end
		if (0 == TABLE_TableIndirection["FlatIdent_44265%0"]) then
			if (not TABLE_TableIndirection["mainFrame%0"] or not TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\221\222\203\37\227\203", "\64\141\191\185")] or (4169 == 2187)) then
				return;
			end
			TABLE_TableIndirection["orbTime%0"] = TABLE_TableIndirection["orbTime%0"] + dt;
			TABLE_TableIndirection["FlatIdent_44265%0"] = 1;
		end
	end
end);
TABLE_TableIndirection["dragging%0"] = false;
TABLE_TableIndirection["dragStart%0"] = Vector3.new(0, 0, 0);
TABLE_TableIndirection["startPos%0"] = UDim2.new(0, 0, 0, 0);
TABLE_TableIndirection["hubMouseDown%0"] = false;
TABLE_TableIndirection["mouseOverHub%0"] = false;
TABLE_TableIndirection["Mouse%0"] = TABLE_TableIndirection["LocalPlayer%0"]:GetMouse();
local function setCursor(id)
	pcall(function()
		TABLE_TableIndirection["Mouse%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\42\233\191\212", "\198\99\138\208\186\151\169")] = id;
	end);
end
trackConn(TABLE_TableIndirection["UserInputService%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\36\251\147\75\25\214\139\95\3\242\134\90", "\62\109\149\227")]:Connect(function(input)
	if not TABLE_TableIndirection["dragging%0"] then
		return;
	end
	if (input[LUAOBFUSACTOR_DECRYPT_STR_0("\198\155\140\198\41\253\152\156\192\52\234\152\140", "\96\147\232\233\180")] == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\29\43\31\89\164\55\56\45\14\127\148\41\45", "\89\72\88\122\43\237")][LUAOBFUSACTOR_DECRYPT_STR_0("\1\180\176\37\30\1\180\179\51\22\41\181\177", "\123\76\219\197\86")]) then
	else
		return;
	end
	TABLE_TableIndirection["pos%0"] = rawget(input, LUAOBFUSACTOR_DECRYPT_STR_0("\104\215\6\5\250\54\87\214", "\95\56\184\117\108\142")) or input[LUAOBFUSACTOR_DECRYPT_STR_0("\192\205\53\229\228\203\41\226", "\140\144\162\70")];
	if ((1406 == 1406) and (TABLE_TableIndirection["pos%0"] == nil)) then
		return;
	end
	TABLE_TableIndirection["posX%0"] = TABLE_TableIndirection["pos%0"]['X'];
	TABLE_TableIndirection["posY%0"] = TABLE_TableIndirection["pos%0"]['Y'];
	if ((1531 < 4271) and ((TABLE_TableIndirection["posX%0"] == nil) or (TABLE_TableIndirection["posY%0"] == nil))) then
		return;
	end
	pcall(function()
		TABLE_TableIndirection["dx%0"] = TABLE_TableIndirection["posX%0"] - TABLE_TableIndirection["dragStart%0"]['X'];
		TABLE_TableIndirection["dy%0"] = TABLE_TableIndirection["posY%0"] - TABLE_TableIndirection["dragStart%0"]['Y'];
		TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\224\39\74\123\250\217\39\87", "\142\176\72\57\18")] = UDim2.new(TABLE_TableIndirection["startPos%0"]['X'].Scale, TABLE_TableIndirection["startPos%0"]['X'][LUAOBFUSACTOR_DECRYPT_STR_0("\137\55\22\55\163\37", "\68\198\81\112")] + TABLE_TableIndirection["dx%0"], TABLE_TableIndirection["startPos%0"]['Y'].Scale, TABLE_TableIndirection["startPos%0"]['Y'][LUAOBFUSACTOR_DECRYPT_STR_0("\152\9\182\7\73\9", "\125\215\111\208\116\44")] + TABLE_TableIndirection["dy%0"]);
	end);
end));
trackConn(TABLE_TableIndirection["UserInputService%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\46\73\95\230\108\121\9\67\74\247", "\60\103\39\47\147\24")]:Connect(function(input)
	if ((635 == 635) and (input[LUAOBFUSACTOR_DECRYPT_STR_0("\217\25\242\146\255\253\94\249\30\195\153\198\246", "\46\140\106\151\224\182\147")] == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\222\62\120\80\194\35\109\87\255\25\100\82\238", "\34\139\77\29")][LUAOBFUSACTOR_DECRYPT_STR_0("\157\255\8\71\44\146\229\9\64\38\190\161", "\73\208\144\125\52")])) then
		TABLE_TableIndirection["FlatIdent_5D802%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_5D802%0"] == 0) then
				TABLE_TableIndirection["hubMouseDown%0"] = false;
				if ((3373 <= 3556) and TABLE_TableIndirection["dragging%0"]) then
					TABLE_TableIndirection["dragging%0"] = false;
					TABLE_TableIndirection["dragStart%0"] = Vector3.new(0, 0, 0);
					TABLE_TableIndirection["startPos%0"] = UDim2.new(0, 0, 0, 0);
					setCursor(LUAOBFUSACTOR_DECRYPT_STR_0("\56\238\146\202\212\3\86\223\112\163\197\248\222\3\71\206\39\207\159\217\212\31\65\216\101\195\154\206\201\56\82\197\46", "\171\74\140\234\171\167\112\51"));
				end
				break;
			end
		end
	end
end));
TABLE_TableIndirection["topBar%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\9\28\77\82\244", "\205\79\110\44\63\145"), TABLE_TableIndirection["mainFrame%0"]);
TABLE_TableIndirection["topBar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\148\86\37\205", "\124\199\63\95\168\212\107\196")] = UDim2.new(1, 0, 0, 46);
TABLE_TableIndirection["topBar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\36\169\80\49\163\229\134\230\8\172\103\40\165\249\154\227\7\186\86\52\167\238", "\147\102\200\51\90\196\151\233")] = 1;
TABLE_TableIndirection["topBar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\25\255\253\201\187\242\8\50\234\234\253\183\248\62\55", "\91\91\144\143\173\222\128")] = 0;
TABLE_TableIndirection["topBar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\25\137\66\85\174\86", "\46\67\192\44\49\203")] = 5;
TABLE_TableIndirection["topBarBg%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\196\47\175\33", "\101\100\182\78\194\68\196"), TABLE_TableIndirection["topBar%0"]);
TABLE_TableIndirection["topBarBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\123\65\42\240", "\181\40\40\80\149\237\43\24")] = UDim2.new(1, -32, 1, 0);
TABLE_TableIndirection["topBarBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\37\189\54\59\174\67\29\27", "\114\117\210\69\82\218\42")] = UDim2.new(0, 16, 0, 0);
TABLE_TableIndirection["topBarBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\102\215\91\120\171\86\217\77\125\168\103\217\84\124\190\23", "\204\36\182\56\19")] = Color3.fromRGB(11, 9, 16);
TABLE_TableIndirection["topBarBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\203\74\223\136\122\42\29\252\69\216\183\111\57\28\250\91\221\145\120\54\17\240", "\114\137\43\188\227\29\88")] = 0.2;
TABLE_TableIndirection["topBarBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\198\18\186\20\225\15\155\25\254\24\152\25\252\24\164", "\112\132\125\200")] = 0;
TABLE_TableIndirection["topBarBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\199\145\253\119\95\237", "\149\157\216\147\19\58")] = 4;
TABLE_TableIndirection["topBarGrad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\175\63\218\200\130\17\205\199\146", "\168\169\230\120"), TABLE_TableIndirection["topBarBg%0"]);
TABLE_TableIndirection["topBarGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\223\130\136\24\238", "\119\156\237\228")] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(18, 14, 26)),ColorSequenceKeypoint.new(1, Color3.fromRGB(9, 6, 14))});
TABLE_TableIndirection["topBarGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\241\222\20\127\215\216\15\112", "\30\163\177\96")] = 0;
TABLE_TableIndirection["topBarDiv%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\60\50\84\132\56", "\180\122\64\53\233\93\75"), TABLE_TableIndirection["mainFrame%0"]);
TABLE_TableIndirection["topBarDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\229\30\9\56", "\93\182\119\115")] = UDim2.new(1, 0, 0, 1);
TABLE_TableIndirection["topBarDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\178\16\192\133\163\247\141\17", "\158\226\127\179\236\215")] = UDim2.new(0, 0, 0, 46);
TABLE_TableIndirection["topBarDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\211\193\202\221\246\210\198\195\255\196\234\217\253\207\219\133", "\182\145\160\169")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\27\47\34\18\162\29", "\111\89\64\80\118\199")];
TABLE_TableIndirection["topBarDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\157\184\28\66\186\165\61\79\165\178\62\79\167\178\2", "\38\223\215\110")] = 0;
TABLE_TableIndirection["topBarDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\100\242\2\193\174\70", "\203\62\187\108\165")] = 5;
TABLE_TableIndirection["titleBading%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\113\80\42\93\255\210\252\120", "\176\153\20\40\94\17\158"), TABLE_TableIndirection["topBar%0"]);
TABLE_TableIndirection["titleBading%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\155\58\161\86", "\165\200\83\219\51")] = UDim2.new(0, 76, 1, 0);
TABLE_TableIndirection["titleBading%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\247\229\103\114\197\188\179\234", "\132\167\138\20\27\177\213\220")] = UDim2.new(0, 16, 0, 0);
TABLE_TableIndirection["titleBading%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\208\212\224\71\59\224\218\246\66\56\198\199\226\66\47\226\212\241\73\50\241\204", "\92\146\181\131\44")] = 1;
TABLE_TableIndirection["titleBading%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\127\251\89\146", "\189\43\158\33\230\222\32\119")] = LUAOBFUSACTOR_DECRYPT_STR_0("\124\225\105\120\166\121", "\232\62\160\45\49");
TABLE_TableIndirection["titleBading%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\82\220\251\184", "\193\20\179\149\204")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\241\14\143\214", "\162\183\97\225")][LUAOBFUSACTOR_DECRYPT_STR_0("\14\202\240\255\29\239\131\37\196\231\252", "\193\73\165\132\151\124\130")];
TABLE_TableIndirection["titleBading%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\249\199\177\79\133\191\215\199", "\214\173\162\201\59\214")] = 16;
TABLE_TableIndirection["titleBading%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\23\124\178\85\244\47\47\118\184\18", "\64\67\25\202\33\183")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\221\235\105\168", "\35\137\142\17\220\78\178")];
TABLE_TableIndirection["titleBading%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\25\75\61\21\21\111\41\8\42\64\40\4\35\90", "\97\77\46\69")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\235\218\24\177\231\254\12\172\216\209\13\160\209\203", "\197\191\191\96")][LUAOBFUSACTOR_DECRYPT_STR_0("\230\44\235\90", "\45\170\73\141\46\56\136")];
TABLE_TableIndirection["titleBading%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\187\38\195\225\170\159", "\103\225\111\173\133\207\231")] = 6;
TABLE_TableIndirection["titleGrad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\173\210\71\77\128\252\80\66\144", "\53\44\228\149"), TABLE_TableIndirection["titleBading%0"]);
TABLE_TableIndirection["titleGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\238\212\55\10\217", "\68\173\187\91\101\171")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\29\19\195\64\135\115\205", "\185\156\111\114\167\41\226\29")];
TABLE_TableIndirection["titleAngle%0"] = 0;
task.spawn(function()
	while TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\59\4\4\37\186\247", "\131\107\101\118\64\212")] do
		TABLE_TableIndirection["titleAngle%0"] = (TABLE_TableIndirection["titleAngle%0"] + 0.4) % 360;
		TABLE_TableIndirection["titleGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\243\217\56\42\83\201\198\207", "\169\161\182\76\75\39\160")] = TABLE_TableIndirection["titleAngle%0"];
		task.wait(0.05);
	end
end);
TABLE_TableIndirection["titleHub%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\237\87\175\159\55\35\170\220\94", "\200\185\50\215\235\123\66"), TABLE_TableIndirection["topBar%0"]);
TABLE_TableIndirection["titleHub%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\193\136\195\231", "\122\146\225\185\130\234\22")] = UDim2.new(0, 36, 1, 0);
TABLE_TableIndirection["titleHub%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\137\237\211\198\251\178\182\236", "\219\217\130\160\175\143")] = UDim2.new(0, 94, 0, 0);
TABLE_TableIndirection["titleHub%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\28\189\65\54\57\174\77\40\48\184\118\47\63\178\81\45\63\174\71\51\61\165", "\93\94\220\34")] = 1;
TABLE_TableIndirection["titleHub%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\59\205\217\158", "\157\111\168\161\234\186\151")] = LUAOBFUSACTOR_DECRYPT_STR_0("\83\117\87", "\229\27\32\21\81\162\217\210");
TABLE_TableIndirection["titleHub%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\10\195\245\46", "\42\76\172\155\90")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\212\130\143\61", "\96\146\237\225\73")][LUAOBFUSACTOR_DECRYPT_STR_0("\207\113\28\224\72\119\143\237\122\1\253\68", "\194\136\30\104\136\41\26")];
TABLE_TableIndirection["titleHub%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\232\211\27\92\39\185\179\42", "\79\188\182\99\40\116\208\201")] = 13;
TABLE_TableIndirection["titleHub%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\73\198\50\85\0\48\113\204\56\18", "\95\29\163\74\33\67")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\72\55\88\35\82\159\16\121\54", "\100\28\82\32\87\31\234")];
TABLE_TableIndirection["titleHub%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\5\87\248\101\195\247\228\55\54\92\237\116\245\194", "\94\81\50\128\17\155\182\136")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\191\57\252\45\218\149\16\142\140\50\233\60\236\160", "\231\235\92\132\89\130\212\124")][LUAOBFUSACTOR_DECRYPT_STR_0("\210\177\242\43", "\37\158\212\148\95\177")];
TABLE_TableIndirection["titleHub%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\78\53\170\131\8\108", "\109\20\124\196\231")] = 6;
TABLE_TableIndirection["verBadge%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\148\184\108\177\29\33\162\184\120", "\64\192\221\20\197\81"), TABLE_TableIndirection["topBar%0"]);
TABLE_TableIndirection["verBadge%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\156\255\248\167", "\199\207\150\130\194")] = UDim2.new(0, 48, 0, 16);
TABLE_TableIndirection["verBadge%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\133\69\104\225\87\188\69\117", "\35\213\42\27\136")] = UDim2.new(0, 134, 0.5, -8);
TABLE_TableIndirection["verBadge%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\130\134\56\180\223\224\175\146\53\187\251\253\172\136\41\236", "\146\192\231\91\223\184")] = Color3.fromRGB(30, 20, 45);
TABLE_TableIndirection["verBadge%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\120\240\245\34\214\166\8\27\84\245\194\59\208\186\20\30\91\227\243\39\210\173", "\110\58\145\150\73\177\212\103")] = 0.2;
TABLE_TableIndirection["verBadge%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\192\49\210\230", "\137\148\84\170\146\43\171")] = LUAOBFUSACTOR_DECRYPT_STR_0("\35\250\75\220", "\23\97\191\31\157");
TABLE_TableIndirection["verBadge%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\160\141\9\17", "\82\230\226\103\101\189")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\173\37\189\165", "\116\235\74\211\209")][LUAOBFUSACTOR_DECRYPT_STR_0("\15\51\202\45\41\49\252\42\36\56", "\69\72\92\190")];
TABLE_TableIndirection["verBadge%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\2\62\252\192\152\161\12\178", "\215\86\91\132\180\203\200\118")] = 9;
TABLE_TableIndirection["verBadge%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\7\235\158\199\16\225\138\220\33\189", "\179\83\142\230")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\238\42\229\33\20\10\227\218\222", "\191\186\79\157\85\89\127\151")];
TABLE_TableIndirection["verBadge%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\204\83\170\202\129\93", "\37\150\26\196\174\228")] = 6;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\252\217\145\90\37\135\204\226", "\233\169\144\210\53\87"), TABLE_TableIndirection["verBadge%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\1\73\255\210\39\84\223\221\38\79\248\207", "\188\66\38\141")] = UDim.new(1, 0);
TABLE_TableIndirection["verStroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\121\62\37\97\77\3\205", "\168\129\48\109\81\19\34\104"), TABLE_TableIndirection["verBadge%0"]);
TABLE_TableIndirection["verStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\84\27\0\63\205", "\153\23\116\108\80\191\69\219")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\107\16\239\220\253\153", "\22\41\127\157\184\152\235")];
TABLE_TableIndirection["verStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\35\207\232\201\28\201\228\217\4", "\170\119\167\129")] = 1;
local function makeWinBtn(icon, xOffset, hoverColor)
	TABLE_TableIndirection["btn%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\245\164\103\161\75\206\228\179\125", "\62\186\144\220\19\227"), TABLE_TableIndirection["topBar%0"]);
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\146\245\246\211", "\182\193\156\140")] = UDim2.new(0, 26, 0, 26);
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\241\67\5\187\242\54\206\66", "\95\161\44\118\210\134")] = UDim2.new(1, xOffset, 0.5, -13);
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\196\65\16\6\125\196\234\187\232\68\48\2\118\217\247\253", "\206\134\32\115\109\26\182\133")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\5\237\221\21\92\94\51\217\195\7", "\61\86\152\175\115\61")];
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\139\0\223\59\214\147\44\210\167\5\232\34\208\143\48\215\168\19\217\62\210\152", "\167\201\97\188\80\177\225\67")] = 0.5;
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\122\13\156\187", "\225\46\104\228\207\156")] = icon;
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\140\207\189\90", "\223\202\160\211\46\87\51\210")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\240\230\20\96", "\109\182\137\122\20")][LUAOBFUSACTOR_DECRYPT_STR_0("\117\166\6\242\225\218\199\121\86\160\7\247", "\28\50\201\114\154\128\183\138")];
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\158\131\1\230\153\143\3\247", "\146\202\230\121")] = 12;
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\218\234\246\10\228\189\172\49\252\188", "\94\142\143\142\126\167\210\192")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\52\192\5\245\234\21\209\24\229", "\167\96\165\125\129")];
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\61\255\24\66\71\62", "\232\103\182\118\38\34\70\43")] = 6;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\126\12\236\34\127\48\69", "\17\85\55\79\131\80"), TABLE_TableIndirection["btn%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\235\138\171\162\58\218\183\184\168\54\221\150", "\95\168\229\217\204")] = UDim.new(1, 0);
	TABLE_TableIndirection["btnStroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\191\18\181\157\152\52\141\140", "\233\234\91\230"), TABLE_TableIndirection["btn%0"]);
	TABLE_TableIndirection["btnStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\114\78\142\124\181", "\199\49\33\226\19")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\112\84\81\27\194\64", "\167\50\59\35\127")];
	TABLE_TableIndirection["btnStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\124\27\91\239\163\70\22\65\255", "\200\40\115\50\140")] = 1;
	TABLE_TableIndirection["btnStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\199\63\118\17\224\61\118\13\246\35\116\6", "\127\147\77\23")] = 0.5;
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\166\233\224\103\117\174\232\225\113\98", "\16\235\134\149\20")]:Connect(function()
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["btn%0"], TweenInfo.new(0.18), {[LUAOBFUSACTOR_DECRYPT_STR_0("\248\74\77\173\11\149\3\207\69\74\146\30\134\2\201\91\79\180\9\137\15\195", "\108\186\43\46\198\108\231")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\16\190\246\10\123\32\176\224\15\120\17\176\249\14\110\97", "\28\82\223\149\97")]=hoverColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\153\48\85\74\142\58\65\81\191\102", "\62\205\85\45")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\65\9\185\189", "\105\21\108\193\201\98\233")]}):Play();
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["btnStroke%0"], TweenInfo.new(0.18), {[LUAOBFUSACTOR_DECRYPT_STR_0("\99\138\23\241\209", "\186\32\229\123\158\163\94")]=hoverColor,[LUAOBFUSACTOR_DECRYPT_STR_0("\48\49\112\196\10\181\54\22\38\127\201\0", "\87\100\67\17\170\121\197")]=0.3}):Play();
	end);
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\195\132\175\147\82\153\235\138\172\133", "\213\142\235\218\224\55")]:Connect(function()
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["btn%0"], TweenInfo.new(0.22), {[LUAOBFUSACTOR_DECRYPT_STR_0("\42\163\250\206\15\176\246\208\6\166\205\215\9\172\234\213\9\176\252\203\11\187", "\165\104\194\153")]=0.5,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\49\218\160\254\79\130\146\62\221\136\246\81\130\149\99", "\237\231\80\185\203\153\61")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\150\37\146\116\68\166\53\161\126\81", "\37\197\80\224\18")],[LUAOBFUSACTOR_DECRYPT_STR_0("\45\71\84\82\151\22\78\67\84\231", "\212\121\34\44\38")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\142\191\50\17\83\184\230\91\190", "\62\218\218\74\101\30\205\146")]}):Play();
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["btnStroke%0"], TweenInfo.new(0.22), {[LUAOBFUSACTOR_DECRYPT_STR_0("\97\166\117\254\207", "\79\34\201\25\145\189\94\36")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\98\35\248\14\69\70", "\52\32\76\138\106\32")],[LUAOBFUSACTOR_DECRYPT_STR_0("\140\232\49\200\105\168\251\34\195\116\187\227", "\26\216\154\80\166")]=0.5}):Play();
	end);
	return TABLE_TableIndirection["btn%0"];
end
TABLE_TableIndirection["minBtn%0"] = makeWinBtn("-", -64, Color3.fromRGB(50, 45, 70));
TABLE_TableIndirection["closeBtn%0"] = makeWinBtn("x", -32, Color3.fromRGB(180, 40, 55));
TABLE_TableIndirection["closeBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\225\198\248\80\120\14\217\221\249\76\115\125\239\197\228\64\118", "\76\172\169\141\35\29")]:Connect(function()
	TABLE_TableIndirection["FlatIdent_5962D%0"] = 0;
	while true do
		if (0 == TABLE_TableIndirection["FlatIdent_5962D%0"]) then
			TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["mainFrame%0"], TweenInfo.new(0.35, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\249\216\235\10\210\222\203\23\197\213\253", "\99\188\185\152")].Back, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\247\21\165\7\173\213\48\191\28\166\209\0\191\1\173", "\195\178\116\214\110")].In), {[LUAOBFUSACTOR_DECRYPT_STR_0("\54\254\156\112", "\134\101\151\230\21\161")]=UDim2.new(0, 0, 0, 0)}):Play();
			task.wait(0.35);
			TABLE_TableIndirection["FlatIdent_5962D%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_5962D%0"] == 1) then
			TABLE_TableIndirection["espFolder%0"]:Destroy();
			TABLE_TableIndirection["gui%0"]:Destroy();
			break;
		end
	end
end);
local function attachDragEvents(handle)
	TABLE_TableIndirection["FlatIdent_1468D%0"] = 0;
	while true do
		if (TABLE_TableIndirection["FlatIdent_1468D%0"] == 0) then
			handle[LUAOBFUSACTOR_DECRYPT_STR_0("\132\133\47\71\38\23\238\189\143\40", "\128\201\234\90\52\67\82")]:Connect(function()
				TABLE_TableIndirection["FlatIdent_4D83A%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_4D83A%0"] == 0) then
						TABLE_TableIndirection["mouseOverHub%0"] = true;
						if (not TABLE_TableIndirection["dragging%0"] or (3291 < 3280)) then
							setCursor(LUAOBFUSACTOR_DECRYPT_STR_0("\182\79\38\117\217\183\72\42\46\133\235\126\39\103\222\161\64\29\97\216\183\66\44\103\133\139\93\59\122\226\165\67\58", "\170\196\45\94\20"));
						end
						break;
					end
				end
			end);
			handle[LUAOBFUSACTOR_DECRYPT_STR_0("\83\75\16\39\196\12\53\127\82\0", "\80\30\36\101\84\161\64")]:Connect(function()
				TABLE_TableIndirection["FlatIdent_956D%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_956D%0"] == 0) then
						TABLE_TableIndirection["mouseOverHub%0"] = false;
						if ((4386 >= 873) and not TABLE_TableIndirection["dragging%0"]) then
							setCursor("");
						end
						break;
					end
				end
			end);
			TABLE_TableIndirection["FlatIdent_1468D%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_1468D%0"] == 1) then
			handle[LUAOBFUSACTOR_DECRYPT_STR_0("\143\95\9\87\204\25\163\86\24\76", "\91\198\49\121\34\184")]:Connect(function(input)
				if (input[LUAOBFUSACTOR_DECRYPT_STR_0("\1\213\114\171\160\58\214\98\173\189\45\214\114", "\233\84\166\23\217")] ~= Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\77\107\253\244\31\47\104\109\236\210\47\49\125", "\65\24\24\152\134\86")][LUAOBFUSACTOR_DECRYPT_STR_0("\145\56\253\90\185\21\253\93\168\56\230\24", "\41\220\87\136")]) then
				else
					TABLE_TableIndirection["FlatIdent_3B868%0"] = 0;
					TABLE_TableIndirection["ipos%0"] = nil;
					while true do
						if (TABLE_TableIndirection["FlatIdent_3B868%0"] == 2) then
							TABLE_TableIndirection["dragStart%0"] = Vector3.new(TABLE_TableIndirection["ipos%0"].X, TABLE_TableIndirection["ipos%0"].Y, TABLE_TableIndirection["ipos%0"].Z);
							TABLE_TableIndirection["startPos%0"] = TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\21\57\240\249\218\162\42\56", "\203\69\86\131\144\174")];
							TABLE_TableIndirection["FlatIdent_3B868%0"] = 3;
						end
						if (3 == TABLE_TableIndirection["FlatIdent_3B868%0"]) then
							setCursor(LUAOBFUSACTOR_DECRYPT_STR_0("\171\28\75\88\219\67\226\5\227\81\28\106\209\67\243\20\180\61\70\75\219\95\245\2\246\61\95\86\219\85\227\57\184\16\87", "\113\217\126\51\57\168\48\135"));
							break;
						end
						if (TABLE_TableIndirection["FlatIdent_3B868%0"] == 0) then
							TABLE_TableIndirection["ipos%0"] = input[LUAOBFUSACTOR_DECRYPT_STR_0("\47\26\37\65\92\118\121\192", "\174\127\117\86\40\40\31\22")];
							if (TABLE_TableIndirection["ipos%0"] == nil) then
								return;
							end
							TABLE_TableIndirection["FlatIdent_3B868%0"] = 1;
						end
						if (1 == TABLE_TableIndirection["FlatIdent_3B868%0"]) then
							TABLE_TableIndirection["hubMouseDown%0"] = true;
							TABLE_TableIndirection["dragging%0"] = true;
							TABLE_TableIndirection["FlatIdent_3B868%0"] = 2;
						end
					end
				end
			end);
			break;
		end
	end
end
TABLE_TableIndirection["dragHandleBg%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\232\62\84\207\254\46\88\207\211\53", "\187\188\91\44"), TABLE_TableIndirection["mainFrame%0"]);
TABLE_TableIndirection["dragHandleBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\44\254\100\32", "\109\127\151\30\69\130")] = UDim2.new(1, 0, 1, 0);
TABLE_TableIndirection["dragHandleBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\240\132\116\19\194\194\189\3\220\129\67\10\196\222\161\6\211\151\114\22\198\201", "\118\178\229\23\120\165\176\210")] = 1;
TABLE_TableIndirection["dragHandleBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\49\217\84\29", "\221\101\188\44\105\108\207\65")] = "";
TABLE_TableIndirection["dragHandleBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\108\25\25\166\215\78", "\178\54\80\119\194")] = 1;
TABLE_TableIndirection["dragHandleBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\21\26\85\205\205\236\173\214\59\1\98\205\227\246\171", "\162\84\111\33\162\143\153\217")] = false;
attachDragEvents(TABLE_TableIndirection["dragHandleBg%0"]);
TABLE_TableIndirection["dragHandle%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\222\5\158\5\206\9\158\40\213", "\234\71\187\125"), TABLE_TableIndirection["topBar%0"]);
TABLE_TableIndirection["dragHandle%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\34\53\75\94", "\158\113\92\49\59")] = UDim2.new(1, 0, 1, 0);
TABLE_TableIndirection["dragHandle%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\206\113\66\123\249\20\213\18\226\116\117\98\255\8\201\23\237\98\68\126\253\31", "\103\140\16\33\16\158\102\186")] = 1;
TABLE_TableIndirection["dragHandle%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\243\136\165\97", "\92\167\237\221\21\99")] = "";
TABLE_TableIndirection["dragHandle%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\197\9\35\34\250\56", "\70\159\64\77")] = 5;
TABLE_TableIndirection["dragHandle%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\246\90\70\240\56\194\91\70\240\20\244\64\94\240\8", "\122\183\47\50\159")] = false;
attachDragEvents(TABLE_TableIndirection["dragHandle%0"]);
TABLE_TableIndirection["sidebar%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\241\50\181\64\140\206\56\169\72\166\208\48\170\74", "\224\162\81\199\47"), TABLE_TableIndirection["mainFrame%0"]);
TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\76\41\56", "\227\136\37\83\93")] = UDim2.new(0, 158, 1, -108);
TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\105\162\27\125\77\164\7\122", "\20\57\205\104")] = UDim2.new(0, 0, 0, 47);
TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\10\170\27\178\29\72\60\61\165\28\154\21\86\60\58\248", "\83\72\203\120\217\122\58")] = Color3.fromRGB(11, 9, 17);
TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\158\232\184\168\168\175\176\169\231\191\151\189\188\177\175\249\186\177\170\179\188\165", "\223\220\137\219\195\207\221")] = 0;
TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\49\71\77\230\41\1\123\86\248\41\35\65\71\231\32", "\76\115\40\63\130")] = 0;
TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\180\25\63\162\186\221\165\27\63\153\190\216\132\17\35\168\165\194", "\177\231\122\77\205\214")] = 0;
TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\101\6\85\79\164\93\80\26\66\99\168\82\82\18\82\115\160\70\65", "\60\36\115\33\32\201")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\150\99\67\73\65\95\41\168\180\69\94\92\73", "\193\215\22\55\38\44\62\93")]['Y'];
TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\12\19\0\217\212\232\28\27\20\202", "\155\79\114\110\175\181")] = UDim2.new(0, 0, 0, 0);
TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\98\125\215\224\180\148", "\181\56\52\185\132\209\236")] = 3;
TABLE_TableIndirection["sideGrad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\7\101\245\186\68\173\243\55\66\198", "\154\82\44\178\200\37\201"), TABLE_TableIndirection["sidebar%0"]);
TABLE_TableIndirection["sideGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\86\228\14\2\172", "\21\21\139\98\109\222\40")] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(20, 14, 30)),ColorSequenceKeypoint.new(1, Color3.fromRGB(8, 7, 13))});
TABLE_TableIndirection["sideGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\54\227\184\141\46\13\227\162", "\90\100\140\204\236")] = 135;
TABLE_TableIndirection["sideDiv%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\138\6\63\193\178", "\120\204\116\94\172\215"), TABLE_TableIndirection["mainFrame%0"]);
TABLE_TableIndirection["sideDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\48\180\162\13", "\31\99\221\216\104\139\194\16")] = UDim2.new(0, 1, 1, -47);
TABLE_TableIndirection["sideDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\5\175\249\5\29\234\58\174", "\131\85\192\138\108\105")] = UDim2.new(0, 158, 0, 47);
TABLE_TableIndirection["sideDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\20\165\124\8\49\182\112\22\56\160\92\12\58\171\109\80", "\99\86\196\31")] = Color3.fromRGB(255, 255, 255);
TABLE_TableIndirection["sideDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\114\59\93\249\90\181\60\89\46\74\205\86\191\10\92", "\111\48\84\47\157\63\199")] = 0;
TABLE_TableIndirection["sideDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\32\47\142\163\43\2", "\78\122\102\224\199")] = 4;
TABLE_TableIndirection["sideDivGrad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\201\49\83\17\53\1\167\250\242\12", "\159\156\120\20\99\84\101\206"), TABLE_TableIndirection["sideDiv%0"]);
TABLE_TableIndirection["sideDivGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\95\30\128\112\218", "\71\28\113\236\31\168\33\23")] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.1, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))});
TABLE_TableIndirection["sideDivGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\121\236\34\246\202\201\58\181\72\240\32\225", "\199\45\158\67\152\185\185\91")] = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.1, 0.82),NumberSequenceKeypoint.new(0.9, 0.82),NumberSequenceKeypoint.new(1, 1)});
TABLE_TableIndirection["sideDivGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\104\118\169\175\196\31\216\222", "\176\58\25\221\206\176\118\183")] = 90;
TABLE_TableIndirection["sidebarLayout%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\7\56\245\15\253\172\30\16\192\9\251\172", "\216\82\113\185\102\142"), TABLE_TableIndirection["sidebar%0"]);
TABLE_TableIndirection["sidebarLayout%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\114\90\36\220\116\76\92", "\29\34\59\64\184")] = UDim.new(0, 5);
TABLE_TableIndirection["sidebarLayout%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\58\17\90\195\47\82\28\10\73\198\20\81\27\25\70\199\48\83\6", "\61\114\126\40\170\85")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\228\39\101\48\217\124\194\60\118\53\226\127\197\47\121\52\198\125\216", "\19\172\72\23\89\163")][LUAOBFUSACTOR_DECRYPT_STR_0("\20\89\193\241\48\64", "\197\87\60\175\133\85\50")];
TABLE_TableIndirection["sidebarPadding%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\33\87\228\210\16\122\221\221\19", "\179\116\30\180"), TABLE_TableIndirection["sidebar%0"]);
TABLE_TableIndirection["sidebarPadding%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\199\233\133\226\200\234\181\228\214", "\225\139\166\141")] = UDim.new(0, 10);
TABLE_TableIndirection["profileFrame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\153\245\45\72", "\64\45\235\148"), TABLE_TableIndirection["mainFrame%0"]);
TABLE_TableIndirection["profileFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\69\88\32\231", "\181\22\49\90\130\60")] = UDim2.new(0, 148, 0, 50);
TABLE_TableIndirection["profileFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\63\222\171\0\27\216\183\7", "\105\111\177\216")] = UDim2.new(0, 5, 1, -56);
TABLE_TableIndirection["profileFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\150\27\203\25\23\193\187\15\198\22\51\220\184\21\218\65", "\179\212\122\168\114\112")] = Color3.fromRGB(16, 13, 24);
TABLE_TableIndirection["profileFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\91\123\135\198\126\104\139\216\119\126\176\223\120\116\151\221\120\104\129\195\122\99", "\173\25\26\228")] = 0;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\35\95\234\181\10\24\115\219", "\120\118\22\169\218"), TABLE_TableIndirection["profileFrame%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\228\47\164\232\194\50\132\231\195\41\163\245", "\134\167\64\214")] = UDim.new(0, 11);
TABLE_TableIndirection["profileStroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\49\160\205\156\219\199\15\140", "\168\100\233\158\232\169"), TABLE_TableIndirection["profileFrame%0"]);
TABLE_TableIndirection["profileStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\81\91\21\243\96", "\156\18\52\121")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\97\31\201\206\129\167", "\191\35\112\187\170\228\213\101")];
TABLE_TableIndirection["profileStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\140\167\117\86\53\18\122\171\188", "\31\216\207\28\53\94\124")] = 1;
TABLE_TableIndirection["profileStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\21\53\170\1\72\49\38\185\10\85\34\62", "\59\65\71\203\111")] = 0.3;
TABLE_TableIndirection["profileFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\45\137\114\112\142\20", "\84\119\192\28\20\235\108")] = 4;
TABLE_TableIndirection["profGrad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\185\215\3\228\27\56\160\68\130\234", "\33\236\158\68\150\122\92\201"), TABLE_TableIndirection["profileFrame%0"]);
TABLE_TableIndirection["profGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\195\215\245\22\91", "\89\128\184\153\121\41\145")] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(24, 18, 36)),ColorSequenceKeypoint.new(1, Color3.fromRGB(12, 10, 20))});
TABLE_TableIndirection["profGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\222\58\176\128\54\142\15\53", "\91\140\85\196\225\66\231\96")] = 135;
TABLE_TableIndirection["pfpRing%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\21\170\182\188\78", "\43\83\216\215\209"), TABLE_TableIndirection["profileFrame%0"]);
TABLE_TableIndirection["pfpRing%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\120\174\170\14", "\78\43\199\208\107")] = UDim2.new(0, 34, 0, 34);
TABLE_TableIndirection["pfpRing%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\66\135\19\23\175\51\202\216", "\182\18\232\96\126\219\90\165")] = UDim2.new(0, 8, 0.5, -17);
TABLE_TableIndirection["pfpRing%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\31\95\36\163\58\76\40\189\51\90\4\167\49\81\53\251", "\200\93\62\71")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\103\78\77\223\202\166", "\110\38\45\46\186\164\210")];
TABLE_TableIndirection["pfpRing%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\90\191\171\29\57\106\177\189\24\58\76\172\169\24\45\104\191\186\19\48\123\167", "\94\24\222\200\118")] = 0.6;
TABLE_TableIndirection["pfpRing%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\63\207\52\29\24\210\21\16\7\197\22\16\5\197\42", "\121\125\160\70")] = 0;
TABLE_TableIndirection["pfpRing%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\201\195\53\182\246\242", "\210\147\138\91")] = 5;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\0\212\235\68\34\29\48\239", "\115\85\157\168\43\80"), TABLE_TableIndirection["pfpRing%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\220\85\149\89\137\219\116\200\251\83\146\68", "\169\159\58\231\55\236\169\38")] = UDim.new(1, 0);
TABLE_TableIndirection["pfpRingGrad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\232\152\2\197\16\117\20\207\171", "\28\113\161\223\112\164\116"), TABLE_TableIndirection["pfpRing%0"]);
TABLE_TableIndirection["pfpRingGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\229\87\75\118\73", "\59\166\56\39\25")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\149\202\199\204\74\183\214\210", "\35\210\184\166\168")];
TABLE_TableIndirection["pfpRingGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\107\86\105\67\48\126\86\87", "\23\57\57\29\34\68")] = 45;
TABLE_TableIndirection["pfp%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\121\60\30\43\85\29\30\46\85\61", "\76\48\81\127"), TABLE_TableIndirection["profileFrame%0"]);
TABLE_TableIndirection["pfp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\61\172\75\178", "\48\110\197\49\215\106\20\189")] = UDim2.new(0, 28, 0, 28);
TABLE_TableIndirection["pfp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\45\29\91\165\212\34\73\2", "\108\125\114\40\204\160\75\38")] = UDim2.new(0, 11, 0.5, -14);
TABLE_TableIndirection["pfp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\23\113\252\6\50\98\240\24\59\116\220\2\57\127\237\94", "\109\85\16\159")] = Color3.fromRGB(20, 16, 30);
TABLE_TableIndirection["pfp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\29\218\163\95\30\64", "\208\71\147\205\59\123\56")] = 6;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\98\9\167\183\69\46\129\170", "\216\55\64\228"), TABLE_TableIndirection["pfp%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\156\135\44\204\188\231\217\190\140\55\215\170", "\139\223\232\94\162\217\149")] = UDim.new(1, 0);
pcall(function()
	TABLE_TableIndirection["pfp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\252\142\34\246\190", "\170\181\227\67\145\219\53")] = TABLE_TableIndirection["Players%0"]:GetUserThumbnailAsync(TABLE_TableIndirection["LocalPlayer%0"].UserId, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\109\141\11\191\91\139\31\187\85\177\7\162\92", "\210\57\229\126")].HeadShot, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\140\59\255\171\48\203\130\177\63\217\175\40\192", "\227\216\83\138\198\82\165")].Size420x420);
end);
TABLE_TableIndirection["uname%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\176\174\108\222\42\183\179\116", "\146\75\213\214\24"), TABLE_TableIndirection["profileFrame%0"]);
TABLE_TableIndirection["uname%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\121\119\219\65", "\53\42\30\161\36\26\37")] = UDim2.new(1, -52, 0, 15);
TABLE_TableIndirection["uname%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\205\246\228\233\233\240\248\238", "\128\157\153\151")] = UDim2.new(0, 48, 0, 9);
TABLE_TableIndirection["uname%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\84\116\143\34\18\97\121\96\130\45\33\97\119\123\159\57\20\97\115\123\143\48", "\19\22\21\236\73\117")] = 1;
TABLE_TableIndirection["uname%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\67\192\186\189", "\150\23\165\194\201\151\221\77")] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\80\58\229\31", "\122\30\91\136")];
TABLE_TableIndirection["uname%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\153\171\235\164", "\237\223\196\133\208")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\250\7\205\170", "\154\188\104\163\222\62")][LUAOBFUSACTOR_DECRYPT_STR_0("\18\226\57\243\17\66\224\58\225\41", "\162\85\141\77\155\112\47")];
TABLE_TableIndirection["uname%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\38\44\190\90\33\32\188\75", "\46\114\73\198")] = 11;
TABLE_TableIndirection["uname%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\145\123\110\251\13\69\169\113\100\188", "\42\197\30\22\143\78")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\71\64\71\43", "\95\19\37\63")];
TABLE_TableIndirection["uname%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\69\41\191\232\73\38\125\37\160\242\124\2\127\56", "\103\17\76\199\156\17")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\135\47\157\252\100\49\181\243\180\36\136\237\82\4", "\154\211\74\229\136\60\112\217")][LUAOBFUSACTOR_DECRYPT_STR_0("\131\25\236\217", "\39\207\124\138\173\101")];
TABLE_TableIndirection["uname%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\250\4\91\212\150\220\20\77\195\163\218\4", "\194\174\97\35\160")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\203\37\37\22\203\50\40\12\252\33\41\7", "\98\159\64\93")][LUAOBFUSACTOR_DECRYPT_STR_0("\47\165\8\17\21", "\68\110\209\77\127\113\102\59")];
TABLE_TableIndirection["uname%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\148\205\169\75\6\219", "\206\206\132\199\47\99\163")] = 5;
TABLE_TableIndirection["statusDot%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\208\214\127\84", "\49\150\162\183\18"), TABLE_TableIndirection["profileFrame%0"]);
TABLE_TableIndirection["statusDot%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\122\35\161\36", "\120\41\74\219\65\122\128")] = UDim2.new(0, 6, 0, 6);
TABLE_TableIndirection["statusDot%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\106\9\79\19\241\174\218\84", "\181\58\102\60\122\133\199")] = UDim2.new(0, 48, 0, 28);
TABLE_TableIndirection["statusDot%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\113\227\223\18\125\65\237\201\23\126\112\237\208\22\104\0", "\26\51\130\188\121")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\151\47\26\76\13\228", "\57\136\226\76\121\41\126\151")];
TABLE_TableIndirection["statusDot%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\0\216\27\87\33\241\78\43\205\12\99\45\251\120\46", "\29\66\183\105\51\68\131")] = 0;
TABLE_TableIndirection["statusDot%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\127\12\71\202\64\61", "\174\37\69\41")] = 5;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\180\159\109\1\2\143\179\92", "\112\225\214\46\110"), TABLE_TableIndirection["statusDot%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\61\43\49\85\225\175\222\31\32\42\78\247", "\140\126\68\67\59\132\221")] = UDim.new(1, 0);
task.spawn(function()
	while TABLE_TableIndirection["profileFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\178\112\21\78\67\11", "\230\226\17\103\43\45\127")] do
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["statusDot%0"], TweenInfo.new(0.9, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\245\77\215\66\137\215\127\208\82\139\213", "\231\176\44\164\43")].Sine, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\132\199\55\160\160\139\133\207\54\172\173\152\168\201\42", "\236\193\166\68\201\206")].InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\38\58\203\122\3\41\199\100\10\63\252\99\5\53\219\97\5\41\205\127\7\34", "\17\100\91\168")]=0.6}):Play();
		task.wait(0.9);
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["statusDot%0"], TweenInfo.new(0.9, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\127\167\159\229\189\36\72\78\191\128\233", "\27\58\198\236\140\211\67")].Sine, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\4\204\223\67\135\236\5\196\222\79\138\255\40\194\194", "\139\65\173\172\42\233")].InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\165\87\114\211\195\101\239\93\137\82\69\202\197\121\243\88\134\68\116\214\199\110", "\40\231\54\17\184\164\23\128")]=0}):Play();
		task.wait(0.9);
	end
end);
TABLE_TableIndirection["statusLbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\176\204\103\236\169\235\134\204\115", "\138\228\169\31\152\229"), TABLE_TableIndirection["profileFrame%0"]);
TABLE_TableIndirection["statusLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\255\5\88\48", "\163\172\108\34\85\128")] = UDim2.new(1, -60, 0, 12);
TABLE_TableIndirection["statusLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\23\30\228\142\207\77\135\90", "\52\71\113\151\231\187\36\232")] = UDim2.new(0, 58, 0, 27);
TABLE_TableIndirection["statusLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\84\140\123\166\113\159\119\184\120\137\76\191\119\131\107\189\119\159\125\163\117\148", "\205\22\237\24")] = 1;
TABLE_TableIndirection["statusLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\138\125\107\220", "\89\222\24\19\168")] = LUAOBFUSACTOR_DECRYPT_STR_0("\218\87\95\190\31\240", "\113\149\57\51\215");
TABLE_TableIndirection["statusLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\95\127\197\162", "\160\25\16\171\214\130")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\87\215\57\105", "\235\17\184\87\29\29\178")][LUAOBFUSACTOR_DECRYPT_STR_0("\141\166\109\240\241\167", "\144\202\201\25\152")];
TABLE_TableIndirection["statusLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\13\222\28\106\200\67\253\5", "\96\89\187\100\30\155\42\135")] = 10;
TABLE_TableIndirection["statusLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\25\200\27\94\89\114\33\194\17\25", "\29\77\173\99\42\26")] = Color3.fromRGB(72, 200, 130);
TABLE_TableIndirection["statusLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\176\231\31\110\99\206\251\4\131\236\10\127\85\251", "\109\228\130\103\26\59\143\151")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\183\125\182\205\6\107\35\141\132\118\163\220\48\94", "\228\227\24\206\185\94\42\79")][LUAOBFUSACTOR_DECRYPT_STR_0("\226\39\49\188", "\80\174\66\87\200\212\123")];
TABLE_TableIndirection["statusLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\241\80\48\204\242\11", "\115\171\25\94\168\151")] = 5;
TABLE_TableIndirection["contentContainer%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\42\160\229\44\242", "\151\108\210\132\65"), TABLE_TableIndirection["mainFrame%0"]);
TABLE_TableIndirection["contentContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\235\93\19\77", "\52\184\52\105\40\166\33\167")] = UDim2.new(1, -159, 1, -47);
TABLE_TableIndirection["contentContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\98\1\222\161\46\221\195\92", "\172\50\110\173\200\90\180")] = UDim2.new(0, 159, 0, 47);
TABLE_TableIndirection["contentContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\217\187\247\71\252\168\251\89\245\190\192\94\250\180\231\92\250\168\241\66\248\163", "\44\155\218\148")] = 1;
TABLE_TableIndirection["contentContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\206\247\37\43\199\3\180\254\248\41\53\208\38\191\249\232", "\209\141\155\76\91\180\71")] = true;
TABLE_TableIndirection["contentContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\201\84\209\79\31\235", "\122\147\29\191\43")] = 3;
TABLE_TableIndirection["minBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\145\223\75\26\223\221\153\106\168\223\80\88\249\243\133\125\183", "\30\220\176\62\105\186\159\236")]:Connect(function()
	TABLE_TableIndirection["FlatIdent_2BE68%0"] = 0;
	while true do
		if (TABLE_TableIndirection["FlatIdent_2BE68%0"] == 0) then
			TABLE_TableIndirection["isMinimized%0"] = not TABLE_TableIndirection["isMinimized%0"];
			TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["mainFrame%0"], TweenInfo.new(0.5, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\173\220\150\185\56\210\132\169\145\209\128", "\221\232\189\229\208\86\181\215")].Quint, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\41\181\231\213\32\11\144\253\206\43\15\160\253\211\32", "\78\108\212\148\188")].Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\8\25\14\39", "\90\91\112\116\66\140\96\219")]=((TABLE_TableIndirection["isMinimized%0"] and UDim2.new(0, 550, 0, 47)) or UDim2.new(0, 550, 0, 440))}):Play();
			TABLE_TableIndirection["FlatIdent_2BE68%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_2BE68%0"] == 1) then
			if TABLE_TableIndirection["isMinimized%0"] then
				TABLE_TableIndirection["FlatIdent_2FBBD%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_2FBBD%0"] == 1) then
						TABLE_TableIndirection["contentContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\243\94\25\5\226\164\1", "\100\165\55\106\108\128\200")] = false;
						TABLE_TableIndirection["sideDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\243\194\34\186\199\199\52", "\211\165\171\81")] = false;
						break;
					end
					if (0 == TABLE_TableIndirection["FlatIdent_2FBBD%0"]) then
						TABLE_TableIndirection["profileFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\50\124\193\195\213\208\1", "\188\100\21\178\170\183")] = false;
						TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\72\30\67\186\176\193\123", "\173\30\119\48\211\210")] = false;
						TABLE_TableIndirection["FlatIdent_2FBBD%0"] = 1;
					end
				end
			else
				task.delay(0.15, function()
					TABLE_TableIndirection["FlatIdent_527C6%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_527C6%0"] == 0) then
							TABLE_TableIndirection["profileFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\109\208\42\51\89\213\60", "\90\59\185\89")] = true;
							TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\118\249\73\70\57\113\69", "\29\32\144\58\47\91")] = true;
							TABLE_TableIndirection["FlatIdent_527C6%0"] = 1;
						end
						if (1 == TABLE_TableIndirection["FlatIdent_527C6%0"]) then
							TABLE_TableIndirection["contentContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\37\60\98\180\67\173\22", "\193\115\85\17\221\33")] = true;
							TABLE_TableIndirection["sideDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\114\29\23\173\208\232", "\188\141\27\110\126\207")] = true;
							break;
						end
					end
				end);
			end
			break;
		end
	end
end);
TABLE_TableIndirection["tabsList%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\165\57\83\114", "\105\237\86\62\23\132\136"),LUAOBFUSACTOR_DECRYPT_STR_0("\152\92\40\66\99\59\184\91\49", "\125\217\41\92\45\67"),LUAOBFUSACTOR_DECRYPT_STR_0("\105\130\54", "\59\57\212\102\63\227"),LUAOBFUSACTOR_DECRYPT_STR_0("\75\225\108\18\124\228\108", "\103\29\136\31"),LUAOBFUSACTOR_DECRYPT_STR_0("\42\43\214\47\86\17\60\206", "\38\126\78\186\74"),LUAOBFUSACTOR_DECRYPT_STR_0("\246\69\40\130\72\139\202", "\228\161\32\74\234\39"),LUAOBFUSACTOR_DECRYPT_STR_0("\29\139\4\179\249\134", "\224\94\228\106\213\144\225\84"),LUAOBFUSACTOR_DECRYPT_STR_0("\131\237\83\212\8\190\239\84", "\97\208\136\39\160")};
local tabFrames, tabButtons = {}, {};
local function spawnRipple(parent, x, y)
	TABLE_TableIndirection["ripple%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\208\59\194\139\92", "\91\150\73\163\230\57\114"), parent);
	TABLE_TableIndirection["ripple%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\111\163\177\94\255\25\142\80\71\163\166", "\63\46\205\210\54\144\107\222")] = Vector2.new(0.5, 0.5);
	TABLE_TableIndirection["ripple%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\192\35\231\78\200\249\35\250", "\188\144\76\148\39")] = UDim2.new(0, x, 0, y);
	TABLE_TableIndirection["ripple%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\182\66\111\161", "\53\229\43\21\196\44\108\66")] = UDim2.new(0, 0, 0, 0);
	TABLE_TableIndirection["ripple%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\17\52\20\174\52\39\24\176\61\49\52\170\63\58\5\246", "\197\83\85\119")] = Color3.fromRGB(255, 255, 255);
	TABLE_TableIndirection["ripple%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\109\251\29\60\72\232\17\34\65\254\42\37\78\244\13\39\78\232\27\57\76\227", "\87\47\154\126")] = 0.88;
	TABLE_TableIndirection["ripple%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\9\119\222\223\215\198\24\113\214\222\226\221\51\125\192", "\180\75\24\172\187\178")] = 0;
	TABLE_TableIndirection["ripple%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\249\240\235\7\121\60", "\112\163\185\133\99\28\68\153")] = 20;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\158\125\223\196\185\90\249\217", "\171\203\52\156"), TABLE_TableIndirection["ripple%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\153\197\111\191\47\147\143\161\190\195\104\162", "\192\218\170\29\209\74\225\221")] = UDim.new(1, 0);
	TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["ripple%0"], TweenInfo.new(0.5, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\166\221\72\9\193\74\26\233\154\208\94", "\157\227\188\59\96\175\45\73")].Quint, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\154\203\196\31\63\184\238\222\4\52\188\222\222\25\63", "\81\223\170\183\118")].Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\21\72\182\190", "\113\70\33\204\219\153\82")]=UDim2.new(0, 120, 0, 120),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\131\60\55\249\162\254\151\49\56\202\162\240\140\44\44\255\162\244\140\60\37", "\208\145\226\95\92\158")]=1}):Play();
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\154\228\223\94\230\230", "\120\222\129\189\44\143\149\207")):AddItem(TABLE_TableIndirection["ripple%0"], 0.55);
end
local function createLabel(parent, text, align)
	TABLE_TableIndirection["FlatIdent_65194%0"] = 0;
	TABLE_TableIndirection["lbl%0"] = nil;
	while true do
		if (1 == TABLE_TableIndirection["FlatIdent_65194%0"]) then
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\166\16\30\186\205\89\118\173\138\21\41\163\203\69\106\168\133\3\24\191\201\82", "\216\228\113\125\209\170\43\25")] = 1;
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\205\255\64\81", "\30\153\154\56\37\18")] = text;
			TABLE_TableIndirection["FlatIdent_65194%0"] = 2;
		end
		if (TABLE_TableIndirection["FlatIdent_65194%0"] == 2) then
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\59\182\249\24", "\91\125\217\151\108")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\223\28\168\100", "\190\153\115\198\16")][LUAOBFUSACTOR_DECRYPT_STR_0("\29\116\190\143\59\118\135\130\62\114\191\138", "\231\90\27\202")];
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\181\129\64\182\109\136\158\93", "\62\225\228\56\194")] = 11;
			TABLE_TableIndirection["FlatIdent_65194%0"] = 3;
		end
		if (TABLE_TableIndirection["FlatIdent_65194%0"] == 3) then
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\34\188\161\57\87\90\26\182\171\126", "\53\118\217\217\77\20")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\157\26\252\202\2\188\11\225\218", "\79\201\127\132\190")];
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\28\17\241\221\16\53\229\192\47\26\228\204\38\0", "\169\72\116\137")] = align or Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\77\127\209\178\65\91\197\175\126\116\196\163\119\110", "\198\25\26\169")][LUAOBFUSACTOR_DECRYPT_STR_0("\101\118\219\50", "\31\41\19\189\70\231\49\27")];
			TABLE_TableIndirection["FlatIdent_65194%0"] = 4;
		end
		if (TABLE_TableIndirection["FlatIdent_65194%0"] == 4) then
			return TABLE_TableIndirection["lbl%0"];
		end
		if (TABLE_TableIndirection["FlatIdent_65194%0"] == 0) then
			TABLE_TableIndirection["lbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\214\73\242\155\210\83\227\187", "\134\215\179\49"), parent);
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\210\253\76\227", "\115\129\148\54\134\53")] = UDim2.new(1, -32, 0, 22);
			TABLE_TableIndirection["FlatIdent_65194%0"] = 1;
		end
	end
end
local function createSectionLabel(parent, text)
	TABLE_TableIndirection["FlatIdent_1DFAF%0"] = 0;
	TABLE_TableIndirection["frame%0"] = nil;
	TABLE_TableIndirection["pill%0"] = nil;
	TABLE_TableIndirection["pillGrad%0"] = nil;
	TABLE_TableIndirection["pillGlow%0"] = nil;
	TABLE_TableIndirection["lbl%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_1DFAF%0"] == 0) then
			TABLE_TableIndirection["frame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\207\149\81\70\221", "\115\137\231\48\43\184\104"), parent);
			TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\234\224\0\230", "\95\185\137\122\131\201\192")] = UDim2.new(1, -32, 0, 30);
			TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\84\55\196\24\34\100\57\210\29\33\66\36\198\29\54\102\55\213\22\43\117\47", "\69\22\86\167\115")] = 1;
			TABLE_TableIndirection["pill%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\150\70\140\64", "\71\56\228\39\225\37"), TABLE_TableIndirection["frame%0"]);
			TABLE_TableIndirection["FlatIdent_1DFAF%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_1DFAF%0"] == 1) then
			TABLE_TableIndirection["pill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\131\232\254\44", "\66\208\129\132\73\154\141")] = UDim2.new(0, 3, 0, 14);
			TABLE_TableIndirection["pill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\122\80\197\244\94\86\217\243", "\157\42\63\182")] = UDim2.new(0, 0, 0.5, -7);
			TABLE_TableIndirection["pill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\249\63\42\247\200\201\49\60\242\203\248\49\37\243\221\136", "\175\187\94\73\156")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\7\60\76\37\21\55", "\160\70\95\47\64\123\67")];
			TABLE_TableIndirection["pill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\252\85\102\53\219\72\71\56\196\95\68\56\198\95\120", "\81\190\58\20")] = 0;
			TABLE_TableIndirection["FlatIdent_1DFAF%0"] = 2;
		end
		if (TABLE_TableIndirection["FlatIdent_1DFAF%0"] == 4) then
			task.spawn(function()
				while TABLE_TableIndirection["pill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\124\76\164\114\141\61", "\83\44\45\214\23\227\73\63")] do
					TABLE_TableIndirection["FlatIdent_5CA49%0"] = 0;
					while true do
						if (1 == TABLE_TableIndirection["FlatIdent_5CA49%0"]) then
							TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["pillGlow%0"], TweenInfo.new(1.2, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\208\187\85\183\46\242\137\82\167\44\240", "\64\149\218\38\222")].Sine, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\63\166\217\217\20\160\238\217\8\162\201\196\19\168\196", "\176\122\199\170")].InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\38\25\177\222\34\59\19\25\181\222\50\50", "\75\114\107\208\176\81")]=0.8}):Play();
							task.wait(1.2);
							break;
						end
						if (TABLE_TableIndirection["FlatIdent_5CA49%0"] == 0) then
							TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["pillGlow%0"], TweenInfo.new(1.2, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\220\42\58\124\247\44\26\97\224\39\44", "\21\153\75\73")].Sine, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\44\18\94\251\188\65\45\26\95\247\177\82\0\28\67", "\38\105\115\45\146\210")].InOut), {[LUAOBFUSACTOR_DECRYPT_STR_0("\54\4\13\120\32\18\23\30\115\61\1\15", "\83\98\118\108\22")]=0.2}):Play();
							task.wait(1.2);
							TABLE_TableIndirection["FlatIdent_5CA49%0"] = 1;
						end
					end
				end
			end);
			TABLE_TableIndirection["lbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\125\238\97\57\137\133\33\76\231", "\67\41\139\25\77\197\228"), TABLE_TableIndirection["frame%0"]);
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\167\212\47", "\136\136\206\174\74\54")] = UDim2.new(1, -12, 1, 0);
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\20\252\149\140\71\173\180\42", "\219\68\147\230\229\51\196")] = UDim2.new(0, 11, 0, 0);
			TABLE_TableIndirection["FlatIdent_1DFAF%0"] = 5;
		end
		if (TABLE_TableIndirection["FlatIdent_1DFAF%0"] == 2) then
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\103\213\239\20\73\30\110", "\123\28\46\150\128\102\39"), TABLE_TableIndirection["pill%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\38\70\15\89\30\155\9\116\1\64\8\68", "\21\101\41\125\55\123\233\91")] = UDim.new(1, 0);
			TABLE_TableIndirection["pillGrad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\194\137\225\13\54\139\238\160\231", "\82\226\139\206\147\108"), TABLE_TableIndirection["pill%0"]);
			TABLE_TableIndirection["pillGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\210\9\65\190\222", "\172\145\102\45\209")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\211\31\13\68\130\123\250\25", "\30\148\109\108\32\235")];
			TABLE_TableIndirection["pillGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\38\72\5\94\0\78\30\81", "\63\116\39\113")] = 90;
			TABLE_TableIndirection["FlatIdent_1DFAF%0"] = 3;
		end
		if (TABLE_TableIndirection["FlatIdent_1DFAF%0"] == 3) then
			TABLE_TableIndirection["pillGlow%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\13\121\244\248\2\39\163\61", "\200\88\48\167\140\112\72"), TABLE_TableIndirection["pill%0"]);
			TABLE_TableIndirection["pillGlow%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\225\81\36\164\240", "\130\162\62\72\203")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\130\180\190\117\137\148", "\157\195\215\221\16\231\224\143")];
			TABLE_TableIndirection["pillGlow%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\75\209\2\143\232\113\220\24\159", "\131\31\185\107\236")] = 3;
			TABLE_TableIndirection["pillGlow%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\159\185\75\42\184\187\75\54\174\165\73\61", "\68\203\203\42")] = 0.6;
			TABLE_TableIndirection["FlatIdent_1DFAF%0"] = 4;
		end
		if (TABLE_TableIndirection["FlatIdent_1DFAF%0"] == 5) then
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\97\86\118\210\68\69\122\204\77\83\65\203\66\89\102\201\66\69\112\215\64\78", "\185\35\55\21")] = 1;
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\135\252\167\144", "\228\211\153\223")] = text;
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\114\224\86\41", "\102\52\143\56\93\90")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\96\24\174\60", "\133\38\119\192\72")][LUAOBFUSACTOR_DECRYPT_STR_0("\208\174\96\243\246\172\86\244\251\165", "\155\151\193\20")];
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\26\161\24\90\72\39\190\5", "\27\78\196\96\46")] = 11;
			TABLE_TableIndirection["FlatIdent_1DFAF%0"] = 6;
		end
		if (6 == TABLE_TableIndirection["FlatIdent_1DFAF%0"]) then
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\222\254\170\172\89\75\64\229\233\225", "\44\138\155\210\216\26\36")] = Color3.fromRGB(160, 148, 185);
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\143\72\161\78\197\154\65\176\93\243\182\72\183\78", "\157\219\45\217\58")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\132\184\46\193\198\145\177\63\210\240\189\184\56\193", "\158\208\221\86\181")][LUAOBFUSACTOR_DECRYPT_STR_0("\204\68\236\31", "\88\128\33\138\107\64\223")];
			break;
		end
	end
end
local function createDivider(parent)
	TABLE_TableIndirection["f%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\231\224\116\120\168", "\142\161\146\21\21\205\27"), parent);
	TABLE_TableIndirection["f%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\35\243\102\6", "\172\112\154\28\99\122\153")] = UDim2.new(1, -32, 0, 1);
	TABLE_TableIndirection["f%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\233\246\163\21\204\229\175\11\197\243\131\17\199\248\178\77", "\126\171\151\192")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\28\17\235\24\2\232", "\57\94\126\153\124\103\154")];
	TABLE_TableIndirection["f%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\53\200\91\29\211\83\36\206\83\28\230\72\15\194\69", "\33\119\167\41\121\182")] = 0;
	TABLE_TableIndirection["dg%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\114\157\28\68\170\87\21\61\73\160", "\88\39\212\91\54\203\51\124"), TABLE_TableIndirection["f%0"]);
	TABLE_TableIndirection["dg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\15\163\184\133\105", "\168\76\204\212\234\27\174")] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(0.2, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.8, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))});
	TABLE_TableIndirection["dg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\184\22\50\74\26\246\79\158\1\61\71\16", "\46\236\100\83\36\105\134")] = NumberSequence.new({NumberSequenceKeypoint.new(0, 1),NumberSequenceKeypoint.new(0.15, 0.6),NumberSequenceKeypoint.new(0.85, 0.6),NumberSequenceKeypoint.new(1, 1)});
end
local function createTextBox(parent, placeholder, callback)
	TABLE_TableIndirection["frame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\31\232\134\141\132", "\111\89\154\231\224\225"), parent);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\206\211\28\160", "\177\157\186\102\197\76\153\188")] = UDim2.new(1, -32, 0, 44);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\128\191\35\164\165\172\47\186\172\186\3\160\174\177\50\252", "\207\194\222\64")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\40\96\197\70\137\208\30", "\179\123\21\183\32\232")];
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\228\34\207\54\180\16\201\54\194\57\135\16\199\45\223\45\178\16\195\45\207\36", "\98\166\67\172\93\211")] = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\202\244\218\16\68\231\245", "\130\135\131\183\181\98\42"), TABLE_TableIndirection["frame%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\224\185\41\237\37\209\132\58\231\41\214\165", "\64\163\214\91\131")] = UDim.new(0, 10);
	TABLE_TableIndirection["stroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\36\6\43\34\45\30\36\29", "\95\113\79\120\86"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\136\251\44\191\148", "\169\203\148\64\208\230\109\95")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\234\24\20\182\47\9", "\134\168\119\102\210\74\123\92")];
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\159\6\21\90\160\0\25\74\184", "\57\203\110\124")] = 1;
	TABLE_TableIndirection["box%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\214\13\61\34\161\203", "\96\206\179\117\73"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\178\42\109\32", "\69\225\67\23")] = UDim2.new(1, -24, 1, 0);
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\244\142\32\188\200\138\214\117", "\27\164\225\83\213\188\227\185")] = UDim2.new(0, 12, 0, 0);
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\170\14\129\245\192\154\0\151\240\195\188\29\131\240\212\152\14\144\251\201\139\22", "\167\232\111\226\158")] = 1;
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\112\33\55\12", "\209\36\68\79\120\123\61\144")] = "";
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\124\237\82\56\5\68\238\95\63\5\94\213\86\35\20", "\96\44\129\51\91")] = placeholder;
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\51\0\2\178", "\147\117\111\108\198\147\136")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\44\185\204\64", "\52\106\214\162")][LUAOBFUSACTOR_DECRYPT_STR_0("\34\0\202\172\240\8\34\219\160\248\16\2", "\145\101\111\190\196")];
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\100\200\153\248\124\89\215\132", "\47\48\173\225\140")] = 12;
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\119\200\153\204\8\163\79\194\147\139", "\204\35\173\225\184\75")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\218\65\251\153", "\110\142\36\131\237\134\198")];
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\75\76\178\243\61\115\79\191\244\61\105\99\188\252\55\105\19", "\88\27\32\211\144")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\185\174\166\40\239\164\86", "\16\237\203\222\92\171\205\59")];
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\213\180\165\156\39\146\237\184\186\134\18\182\239\165", "\211\129\209\221\232\127")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\61\74\94\48\196\60\188\79\14\65\75\33\242\9", "\38\105\47\38\68\156\125\208")][LUAOBFUSACTOR_DECRYPT_STR_0("\160\133\163\80", "\72\236\224\197\36\156")];
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\226\164\71\159\215\174\64", "\234\164\203\36")]:Connect(function()
		TABLE_TableIndirection["FlatIdent_90E07%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_90E07%0"] == 0) then
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["stroke%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\40\226\140\45\158", "\18\107\141\224\66\236\62\17")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\138\172\31\242\165\187", "\151\203\207\124")],[LUAOBFUSACTOR_DECRYPT_STR_0("\224\8\240\12\243\153\31\214\209\20\242\27", "\164\180\122\145\98\128\233\126")]=0.3}):Play();
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\153\5\24\198\188\22\20\216\181\0\56\194\183\11\9\158", "\173\219\100\123")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\135\61\94\13\18\183\45\109\7\7", "\115\212\72\44\107")]}):Play();
				break;
			end
		end
	end);
	TABLE_TableIndirection["box%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\170\224\87\103\238\2\161\87\152", "\36\236\143\52\18\157\78\206")]:Connect(function()
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["stroke%0"], TweenInfo.new(0.25), {[LUAOBFUSACTOR_DECRYPT_STR_0("\115\78\52\64\237", "\159\48\33\88\47")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\61\77\11\246\182\243", "\87\127\34\121\146\211\129\87")],[LUAOBFUSACTOR_DECRYPT_STR_0("\159\243\132\226\54\46\206\102\174\239\134\245", "\20\203\129\229\140\69\94\175")]=0}):Play();
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.25), {[LUAOBFUSACTOR_DECRYPT_STR_0("\141\199\87\61\232\240\160\211\90\50\204\237\163\201\70\101", "\130\207\166\52\86\143")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\121\79\1\235\171\120\36", "\65\42\58\115\141\202\27")]}):Play();
		callback(TABLE_TableIndirection["box%0"].Text);
	end);
	return TABLE_TableIndirection["box%0"];
end
local function createButton(parent, text, callback)
	TABLE_TableIndirection["frame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\109\22\84\204\42", "\79\43\100\53\161"), parent);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\195\205\213\74", "\36\144\164\175\47\52\44\86")] = UDim2.new(1, -32, 0, 42);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\18\14\248\175\120\34\0\238\170\123\4\29\250\170\108\32\14\233\161\113\51\22", "\31\80\111\155\196")] = 1;
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\112\85\232\196\60\119\92\242\215\42\93\93\224\218\59\64", "\79\51\57\129\180")] = true;
	TABLE_TableIndirection["btn%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\3\183\40\76\251\34\166\36\87\215", "\185\87\210\80\56"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\245\25\180\93", "\53\166\112\206\56\29\153")] = UDim2.new(1, 0, 1, 0);
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\80\18\85\1\242\61\125\6\88\14\214\32\126\28\68\89", "\79\18\115\54\106\149")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\121\71\92\88\36\126\136\135\70\70", "\198\42\50\46\62\69\29\237")];
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\224\187\21\50\47\178\1\78\204\190\34\43\41\174\29\75\195\168\19\55\43\185", "\59\162\218\118\89\72\192\110")] = 0;
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\177\251\168\75", "\97\229\158\208\63\40\97\18")] = "";
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\12\219\102\73\174\56\218\102\73\130\14\193\126\73\158", "\236\77\174\18\38")] = false;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\181\116\236\26\146\83\202\7", "\117\224\61\175"), TABLE_TableIndirection["btn%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\200\72\212\134\238\85\244\137\239\78\211\155", "\232\139\39\166")] = UDim.new(0, 10);
	TABLE_TableIndirection["stroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\214\120\96\81\101\205\232\84", "\162\131\49\51\37\23"), TABLE_TableIndirection["btn%0"]);
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\124\118\242\37\102", "\20\63\25\158\74")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\88\213\78\169\122\194", "\217\26\186\60\205\31\176\72")];
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\239\121\15\239\208\127\3\255\200", "\140\187\17\102")] = 1;
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\24\153\165\79\63\155\165\83\41\133\167\88", "\33\76\235\196")] = 0.4;
	TABLE_TableIndirection["accentBar%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\248\243\82\169", "\229\104\138\146\63\204\80\229"), TABLE_TableIndirection["btn%0"]);
	TABLE_TableIndirection["accentBar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\147\116\4\204", "\169\192\29\126")] = UDim2.new(0, 3, 0, 18);
	TABLE_TableIndirection["accentBar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\1\202\22\130\37\204\10\133", "\235\81\165\101")] = UDim2.new(0, 0, 0.5, -9);
	TABLE_TableIndirection["accentBar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\90\133\92\18\130\22\195\109\138\91\58\138\8\195\106\215", "\172\24\228\63\121\229\100")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\171\77\214\200\132\90", "\173\234\46\181")];
	TABLE_TableIndirection["accentBar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\253\51\232\52\36\205\61\254\49\39\235\32\234\49\48\207\51\249\58\45\220\43", "\67\191\82\139\95")] = 1;
	TABLE_TableIndirection["accentBar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\31\226\85\198\233\249\14\228\93\199\220\226\37\232\75", "\139\93\141\39\162\140")] = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\138\42\216\12\34\166\27", "\126\76\195\105\183"), TABLE_TableIndirection["accentBar%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\124\71\182\127\92\166\109\73\160\120\76\167", "\212\63\40\196\17\57")] = UDim.new(0, 2);
	TABLE_TableIndirection["aBarGrad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\156\226\215\232\168\207\249\255\167\223", "\154\201\171\144"), TABLE_TableIndirection["accentBar%0"]);
	TABLE_TableIndirection["aBarGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\161\225\164\194\164", "\221\226\142\200\173\214\111\223")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\41\92\190\53\161\11\64\171", "\200\110\46\223\81")];
	TABLE_TableIndirection["aBarGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\36\72\40\53\54\219\77\24", "\34\118\39\92\84\66\178")] = 90;
	TABLE_TableIndirection["lbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\127\141\41\22\2\168\205\118\71", "\19\43\232\81\98\78\201\175"), TABLE_TableIndirection["btn%0"]);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\120\218\226\163", "\234\43\179\152\198\164\141")] = UDim2.new(1, -24, 1, 0);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\149\85\111\215\147\186\194\137", "\231\197\58\28\190\231\211\173")] = UDim2.new(0, 14, 0, 0);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\113\211\61\39\208\158\92\199\48\40\227\158\82\220\45\60\214\158\86\220\61\53", "\236\51\178\94\76\183")] = 1;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\222\200\202\87", "\35\138\173\178")] = text;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\231\12\70\200", "\29\161\99\40\188\50")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\95\37\174\243", "\140\25\74\192\135\110\90\106")][LUAOBFUSACTOR_DECRYPT_STR_0("\5\94\80\250\171\175\15\84\64\251\191\175", "\194\66\49\36\146\202")];
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\191\52\213\22\246\130\43\200", "\165\235\81\173\98")] = 12;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\31\128\177\34\154\235\39\138\187\101", "\132\75\229\201\86\217")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\182\119\189\177", "\197\226\18\197")];
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\40\212\25\69\36\240\13\88\27\223\12\84\18\197", "\49\124\177\97")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\180\56\216\170\184\28\204\183\135\51\205\187\142\41", "\222\224\93\160")][LUAOBFUSACTOR_DECRYPT_STR_0("\199\248\116\53", "\88\139\157\18\65")];
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\103\21\7\2\206\111\20\6\20\217", "\171\42\122\114\113")]:Connect(function()
		TABLE_TableIndirection["FlatIdent_508D4%0"] = 0;
		while true do
			if (1 == TABLE_TableIndirection["FlatIdent_508D4%0"]) then
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["lbl%0"], TweenInfo.new(0.18), {[LUAOBFUSACTOR_DECRYPT_STR_0("\185\173\212\246\174\167\192\237\159\251", "\130\237\200\172")]=Color3.fromRGB(255, 255, 255)}):Play();
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["accentBar%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\4\209\173\5\33\194\161\27\40\212\154\28\39\222\189\30\39\194\171\0\37\201", "\110\70\176\206")]=0}):Play();
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_508D4%0"] == 0) then
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["btn%0"], TweenInfo.new(0.18), {[LUAOBFUSACTOR_DECRYPT_STR_0("\87\17\62\224\61\103\31\40\229\62\86\31\49\228\40\38", "\90\21\112\93\139")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\50\206\102\176\161\2\222\92\185\182\4\201", "\192\97\187\20\214")]}):Play();
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["stroke%0"], TweenInfo.new(0.18), {[LUAOBFUSACTOR_DECRYPT_STR_0("\41\84\63\199\146", "\224\106\59\83\168")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\134\230\1\254\64\156", "\41\199\133\98\155\46\232")],[LUAOBFUSACTOR_DECRYPT_STR_0("\40\180\224\72\174\31\231\14\163\239\69\164", "\134\124\198\129\38\221\111")]=0.55}):Play();
				TABLE_TableIndirection["FlatIdent_508D4%0"] = 1;
			end
		end
	end);
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\213\224\164\51\253\195\180\33\238\234", "\64\152\143\209")]:Connect(function()
		TABLE_TableIndirection["FlatIdent_1691A%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_1691A%0"] == 1) then
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["lbl%0"], TweenInfo.new(0.22), {[LUAOBFUSACTOR_DECRYPT_STR_0("\3\76\221\24\105\34\112\8\37\26", "\103\87\41\165\108\42\77\28")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\150\214\12\227", "\128\194\179\116\151\22")]}):Play();
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["accentBar%0"], TweenInfo.new(0.22), {[LUAOBFUSACTOR_DECRYPT_STR_0("\37\51\0\172\219\38\137\18\60\7\147\206\53\136\20\34\2\181\217\58\133\30", "\230\103\82\99\199\188\84")]=1}):Play();
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_1691A%0"] == 0) then
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["btn%0"], TweenInfo.new(0.22), {[LUAOBFUSACTOR_DECRYPT_STR_0("\158\135\160\163\94\56\179\147\173\172\122\37\176\137\177\251", "\74\220\230\195\200\57")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\150\159\194\25\10\210\160\171\220\11", "\177\197\234\176\127\107")]}):Play();
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["stroke%0"], TweenInfo.new(0.22), {[LUAOBFUSACTOR_DECRYPT_STR_0("\80\197\202\71\152", "\63\19\170\166\40\234\20")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\20\7\31\44\37\63", "\160\86\104\109\72\64\77")],[LUAOBFUSACTOR_DECRYPT_STR_0("\205\97\239\4\13\154\248\97\235\4\29\147", "\234\153\19\142\106\126")]=0.4}):Play();
				TABLE_TableIndirection["FlatIdent_1691A%0"] = 1;
			end
		end
	end);
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\12\43\168\11\36\6\168\12\53\43\179\73\5\43\170\22", "\120\65\68\221")]:Connect(function()
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["btn%0"], TweenInfo.new(0.08), {[LUAOBFUSACTOR_DECRYPT_STR_0("\58\180\230\183\31\167\234\169\22\177\198\179\20\186\247\239", "\220\120\213\133")]=Color3.fromRGB(34, 20, 46)}):Play();
	end);
	TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\117\33\210\67\47\122\59\211\68\37\86\127\228\92\35\91\37", "\74\56\78\167\48")]:Connect(function()
		TABLE_TableIndirection["FlatIdent_38BFA%0"] = 0;
		TABLE_TableIndirection["mp%0"] = nil;
		TABLE_TableIndirection["ap%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_38BFA%0"] == 1) then
				TABLE_TableIndirection["ap%0"] = TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\197\30\56\207\6\31\44\225\44\36\211\3\30\49\235\18", "\88\132\124\75\160\106\106")];
				if (TABLE_TableIndirection["mp%0"] and TABLE_TableIndirection["ap%0"]) then
					TABLE_TableIndirection["FlatIdent_2C7C4%0"] = 0;
					TABLE_TableIndirection["mpX%0"] = nil;
					TABLE_TableIndirection["mpY%0"] = nil;
					TABLE_TableIndirection["apX%0"] = nil;
					TABLE_TableIndirection["apY%0"] = nil;
					while true do
						if (2 == TABLE_TableIndirection["FlatIdent_2C7C4%0"]) then
							if ((921 <= 1102) and TABLE_TableIndirection["mpX%0"] and TABLE_TableIndirection["mpY%0"] and TABLE_TableIndirection["apX%0"] and TABLE_TableIndirection["apY%0"]) then
								spawnRipple(TABLE_TableIndirection["btn%0"], TABLE_TableIndirection["mpX%0"] - TABLE_TableIndirection["apX%0"], TABLE_TableIndirection["mpY%0"] - TABLE_TableIndirection["apY%0"]);
							end
							break;
						end
						if (1 == TABLE_TableIndirection["FlatIdent_2C7C4%0"]) then
							TABLE_TableIndirection["apX%0"] = TABLE_TableIndirection["ap%0"]['X'];
							TABLE_TableIndirection["apY%0"] = TABLE_TableIndirection["ap%0"]['Y'];
							TABLE_TableIndirection["FlatIdent_2C7C4%0"] = 2;
						end
						if (TABLE_TableIndirection["FlatIdent_2C7C4%0"] == 0) then
							TABLE_TableIndirection["mpX%0"] = TABLE_TableIndirection["mp%0"]['X'];
							TABLE_TableIndirection["mpY%0"] = TABLE_TableIndirection["mp%0"]['Y'];
							TABLE_TableIndirection["FlatIdent_2C7C4%0"] = 1;
						end
					end
				end
				TABLE_TableIndirection["FlatIdent_38BFA%0"] = 2;
			end
			if (2 == TABLE_TableIndirection["FlatIdent_38BFA%0"]) then
				callback(TABLE_TableIndirection["btn%0"], TABLE_TableIndirection["lbl%0"]);
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_38BFA%0"] == 0) then
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["btn%0"], TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\54\55\142\76\28\184\63\21\26\50\174\72\23\165\34\83", "\96\116\86\237\39\123\202\80")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\18\1\163\123\131\175\170\9\27\167\120\144", "\207\65\116\209\29\226\204")]}):Play();
				TABLE_TableIndirection["mp%0"] = TABLE_TableIndirection["UserInputService%0"]:GetMouseLocation();
				TABLE_TableIndirection["FlatIdent_38BFA%0"] = 1;
			end
		end
	end);
end
local function createToggle(parent, text, stateKey, callback)
	TABLE_TableIndirection["frame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\66\138\3\181", "\110\208\48\235"), parent);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\150\160\153\136", "\237\197\201\227")] = UDim2.new(1, -32, 0, 44);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\153\34\28\117\162\33\117\174\45\27\93\170\63\117\169\112", "\26\219\67\127\30\197\83")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\198\13\204\124\17\250\240", "\153\149\120\190\26\112")];
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\46\20\201\171\45\226\241\2\2\17\254\178\43\254\237\7\13\7\207\174\41\233", "\119\108\117\170\192\74\144\158")] = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\0\162\46\245\39\132\51", "\65\135\73\225"), TABLE_TableIndirection["frame%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\60\92\67\174\17\13\97\80\164\29\10\64", "\116\127\51\49\192")] = UDim.new(0, 10);
	TABLE_TableIndirection["stroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\46\41\96\233\252\17\9\30", "\98\123\96\51\157\142\126"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\238\241\170\193\52", "\70\173\158\198\174")] = (TABLE_TableIndirection["state%0"][stateKey] and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\209\60\76\235\254\43", "\142\144\95\47")]) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\53\34\66\10\18\63", "\110\119\77\48")];
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\223\55\45\86\239\229\58\55\70", "\132\139\95\68\53")] = 1;
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\200\58\252\59\239\56\252\39\249\38\254\44", "\85\156\72\157")] = (TABLE_TableIndirection["state%0"][stateKey] and 0.4) or 0.55;
	TABLE_TableIndirection["activeTint%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\93\32\124\44\223", "\234\27\82\29\65\186\72"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["activeTint%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\195\198\243\187", "\99\144\175\137\222")] = UDim2.new(1, 0, 1, 0);
	TABLE_TableIndirection["activeTint%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\114\117\143\10\62\87\190\69\122\136\34\54\73\190\66\39", "\209\48\20\236\97\89\37")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\221\66\93\44\76\232", "\34\156\33\62\73")];
	TABLE_TableIndirection["activeTint%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\42\115\237\90\15\96\225\68\6\118\218\67\9\124\253\65\9\96\235\95\11\107", "\49\104\18\142")] = (TABLE_TableIndirection["state%0"][stateKey] and 0.92) or 1;
	TABLE_TableIndirection["activeTint%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\211\234\110\15\244\247\79\2\235\224\76\2\233\224\112", "\107\145\133\28")] = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\247\119\144\177\208\80\182\172", "\222\162\62\211"), TABLE_TableIndirection["activeTint%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\128\126\28\21\52\145\248\162\117\7\14\34", "\170\195\17\110\123\81\227")] = UDim.new(0, 10);
	TABLE_TableIndirection["lbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\128\49\248\212\209\181\54\229\204", "\157\212\84\128\160"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\186\122\250\64", "\163\233\19\128\37\70\232\142")] = UDim2.new(1, -72, 1, 0);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\211\90\47\16\247\92\51\23", "\121\131\53\92")] = UDim2.new(0, 14, 0, 0);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\92\205\72\139\121\222\68\149\112\200\127\146\127\194\88\144\127\222\78\142\125\213", "\224\30\172\43")] = 1;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\49\162\103\202", "\141\101\199\31\190")] = text;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\125\72\13\211", "\207\59\39\99\167\186\217")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\33\73\181\70", "\139\103\38\219\50\40\157\192")][LUAOBFUSACTOR_DECRYPT_STR_0("\193\183\34\202\231\181\27\199\226\177\35\207", "\162\134\216\86")];
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\10\234\79\77\3\75\235\170", "\207\94\143\55\57\80\34\145")] = 12;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\22\212\59\110\147\84\27\182\48\130", "\217\66\177\67\26\208\59\119")] = (TABLE_TableIndirection["state%0"][stateKey] and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\23\219\210\190", "\152\67\190\170\202\48\138")]) or Color3.fromRGB(160, 150, 180);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\239\44\77\228\227\8\89\249\220\39\88\245\213\61", "\144\187\73\53")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\34\190\34\195\154\146\26\178\61\217\175\182\24\175", "\211\118\219\90\183\194")][LUAOBFUSACTOR_DECRYPT_STR_0("\212\168\142\255", "\145\152\205\232\139\58")];
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\137\219\176\187\94\176", "\110\211\146\222\223\59\200")] = 2;
	TABLE_TableIndirection["track%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\103\81\250\27\96\70\64\246\0\76", "\34\51\52\130\111"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["track%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\253\60\34\198", "\55\174\85\88\163\98\92")] = UDim2.new(0, 40, 0, 22);
	TABLE_TableIndirection["track%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\253\71\21\140\34\196\71\8", "\86\173\40\102\229")] = UDim2.new(1, -54, 0.5, -11);
	TABLE_TableIndirection["track%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\38\165\76\134\3\182\64\152\10\160\108\130\8\171\93\222", "\237\100\196\47")] = (TABLE_TableIndirection["state%0"][stateKey] and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\109\79\136\175\57\156", "\116\44\44\235\202\87\232")]) or Color3.fromRGB(28, 24, 38);
	TABLE_TableIndirection["track%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\55\210\78\49", "\146\99\183\54\69\98\210")] = "";
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\210\214\150\170\46\185\226\237", "\215\135\159\213\197\92"), TABLE_TableIndirection["track%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\144\170\250\226\182\183\218\237\183\172\253\255", "\140\211\197\136")] = UDim.new(1, 0);
	TABLE_TableIndirection["track%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\10\229\50\112\201\40", "\172\80\172\92\20")] = 2;
	TABLE_TableIndirection["trackStroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\43\83\226\12\98\198\200\141", "\232\126\26\177\120\16\169\163"), TABLE_TableIndirection["track%0"]);
	TABLE_TableIndirection["trackStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\233\189\124\80", "\214\140\134\209\19\34\175")] = (TABLE_TableIndirection["state%0"][stateKey] and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\117\36\171\175\90\51", "\202\52\71\200")]) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\204\71\103\131\235\90", "\231\142\40\21")];
	TABLE_TableIndirection["trackStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\68\58\204\9\89\13\209\99\33", "\180\16\82\165\106\50\99")] = 1;
	TABLE_TableIndirection["trackStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\11\71\126\240\16\47\84\109\251\13\60\76", "\99\95\53\31\158")] = 0.3;
	TABLE_TableIndirection["knob%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\212\56\113\92\247", "\49\146\74\16"), TABLE_TableIndirection["track%0"]);
	TABLE_TableIndirection["knob%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\215\88\144\95", "\226\132\49\234\58")] = UDim2.new(0, 16, 0, 16);
	TABLE_TableIndirection["knob%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\234\119\163\237\14\240\29\86", "\56\186\24\208\132\122\153\114")] = (TABLE_TableIndirection["state%0"][stateKey] and UDim2.new(1, -19, 0.5, -8)) or UDim2.new(0, 3, 0.5, -8);
	TABLE_TableIndirection["knob%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\225\23\35\90\133\209\25\53\95\134\224\25\44\94\144\144", "\226\163\118\64\49")] = Color3.fromRGB(255, 255, 255);
	TABLE_TableIndirection["knob%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\195\229\49\186\24\225", "\125\153\172\95\222")] = 3;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\78\239\192\194\255\212\230\105", "\131\27\166\131\173\141\186"), TABLE_TableIndirection["knob%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\208\124\85\41\246\97\117\38\247\122\82\52", "\71\147\19\39")] = UDim.new(1, 0);
	TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\49\53\225\170\191\239\233", "\66\101\90\134\205\211\138\154")][stateKey] = function()
		TABLE_TableIndirection["on%0"] = TABLE_TableIndirection["state%0"][stateKey];
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["track%0"], TweenInfo.new(0.28, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\57\77\106\165\139\32\47\88\96\160\128", "\71\124\44\25\204\229")].Quad), {[LUAOBFUSACTOR_DECRYPT_STR_0("\48\251\42\79\197\171\29\239\39\64\225\182\30\245\59\23", "\217\114\154\73\36\162")]=((TABLE_TableIndirection["on%0"] and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\29\166\185\168\15\156", "\96\92\197\218\205\97\232")]) or Color3.fromRGB(28, 24, 38))}):Play();
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["trackStroke%0"], TweenInfo.new(0.28), {[LUAOBFUSACTOR_DECRYPT_STR_0("\29\5\176\130\237", "\159\94\106\220\237")]=((TABLE_TableIndirection["on%0"] and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\140\25\7\70\163\14", "\35\205\122\100")]) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\128\86\21\67\167\75", "\39\194\57\103")])}):Play();
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["knob%0"], TweenInfo.new(0.3, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\135\250\47\88\8\171\253\182\226\48\84", "\174\194\155\92\49\102\204")].Back, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\225\137\74\126\137\205\202\205\154\92\116\147\195\225\202", "\142\164\232\57\23\231\170")].Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\135\165\207\244\6\190\165\210", "\114\215\202\188\157")]=((TABLE_TableIndirection["on%0"] and UDim2.new(1, -19, 0.5, -8)) or UDim2.new(0, 3, 0.5, -8))}):Play();
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["stroke%0"], TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\18\170\254\95\160", "\229\81\197\146\48\210\227\139")]=((TABLE_TableIndirection["on%0"] and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\163\81\88\127\221\239", "\54\226\50\59\26\179\155\61")]) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\232\49\42\92\26\216", "\127\170\94\88\56")]),[LUAOBFUSACTOR_DECRYPT_STR_0("\212\213\181\204\171\45\248\180\229\201\183\219", "\198\128\167\212\162\216\93\153")]=((TABLE_TableIndirection["on%0"] and 0.4) or 0.55)}):Play();
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["activeTint%0"], TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\136\59\231\213\173\40\235\203\164\62\208\204\171\52\247\206\171\40\225\208\169\35", "\190\202\90\132")]=((TABLE_TableIndirection["on%0"] and 0.92) or 1)}):Play();
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["lbl%0"], TweenInfo.new(0.25), {[LUAOBFUSACTOR_DECRYPT_STR_0("\179\220\107\195\129\41\139\214\97\132", "\70\231\185\19\183\194")]=((TABLE_TableIndirection["on%0"] and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\239\197\252\176", "\211\187\160\132\196")]) or Color3.fromRGB(160, 150, 180))}):Play();
	end;
	TABLE_TableIndirection["track%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\1\143\250\238\77\158\231\56\148\224\243\25\159\254\37\131\228", "\146\76\224\143\157\40\220")]:Connect(function()
		TABLE_TableIndirection["state%0"][stateKey] = not TABLE_TableIndirection["state%0"][stateKey];
		TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\111\112\177\117\170\60\237", "\158\59\31\214\18\198\89")][stateKey]();
		if callback then
			callback(TABLE_TableIndirection["state%0"][stateKey]);
		end
	end);
	TABLE_TableIndirection["clickArea%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\12\95\30\127\28\83\30\82\7", "\106\61\105\39"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["clickArea%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\214\183\33\234", "\18\133\222\91\143\99\162")] = UDim2.new(1, -60, 1, 0);
	TABLE_TableIndirection["clickArea%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\85\62\175\85\222\46\76\199\121\59\152\76\216\50\80\194\118\45\169\80\218\37", "\178\23\95\204\62\185\92\35")] = 1;
	TABLE_TableIndirection["clickArea%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\21\243\199\226", "\61\65\150\191\150")] = "";
	TABLE_TableIndirection["clickArea%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\112\252\135\189\210\25", "\170\42\181\233\217\183\97")] = 1;
	TABLE_TableIndirection["clickArea%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\225\116\250\198\119\110\194\111\234\199", "\43\172\27\143\181\18")]:Connect(function()
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\241\40\164\178\122\193\38\178\183\121\240\38\171\182\111\128", "\29\179\73\199\217")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\74\180\111\203\120\162\120\236\117\181", "\173\25\193\29")]}):Play();
	end);
	TABLE_TableIndirection["clickArea%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\119\127\66\12\168\38\211\121\76\117", "\24\58\16\55\127\205\106\182")]:Connect(function()
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\133\6\212\82\39\181\8\194\87\36\132\8\219\86\50\244", "\64\199\103\183\57")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\23\90\65\95\242\39\74", "\147\68\47\51\57")]}):Play();
	end);
	TABLE_TableIndirection["clickArea%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\164\64\9\47\131\98\156\91\8\51\136\17\170\67\21\63\141", "\32\233\47\124\92\230")]:Connect(function()
		TABLE_TableIndirection["FlatIdent_5CC3B%0"] = 0;
		while true do
			if (1 == TABLE_TableIndirection["FlatIdent_5CC3B%0"]) then
				if ((4706 >= 963) and callback) then
					callback(TABLE_TableIndirection["state%0"][stateKey]);
				end
				break;
			end
			if (0 == TABLE_TableIndirection["FlatIdent_5CC3B%0"]) then
				TABLE_TableIndirection["state%0"][stateKey] = not TABLE_TableIndirection["state%0"][stateKey];
				TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\191\78\133\188\176\203\234", "\153\235\33\226\219\220\174")][stateKey]();
				TABLE_TableIndirection["FlatIdent_5CC3B%0"] = 1;
			end
		end
	end);
end
local function createKeybind(parent, title, keyKey)
	TABLE_TableIndirection["FlatIdent_61084%0"] = 0;
	TABLE_TableIndirection["frame%0"] = nil;
	TABLE_TableIndirection["stroke%0"] = nil;
	TABLE_TableIndirection["lbl%0"] = nil;
	TABLE_TableIndirection["bFrame%0"] = nil;
	TABLE_TableIndirection["bStroke%0"] = nil;
	TABLE_TableIndirection["bBtn%0"] = nil;
	TABLE_TableIndirection["listening%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_61084%0"] == 6) then
			TABLE_TableIndirection["listening%0"] = false;
			TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\172\82\78\1\132\127\78\6\149\82\85\67\162\81\82\17\138", "\114\225\61\59")]:Connect(function()
				if (TABLE_TableIndirection["listening%0"] or (960 <= 876)) then
					return;
				end
				TABLE_TableIndirection["listening%0"] = true;
				TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\232\118\60\153", "\237\188\19\68")] = LUAOBFUSACTOR_DECRYPT_STR_0("\179\168\160\88\174", "\128\157\136\142\120");
				TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\134\0\157\74\141\198\94\242\160\86", "\157\210\101\229\62\206\169\50")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\121\35\87\166\52\189\13\200\73", "\173\45\70\47\210\121\200\121")];
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["bStroke%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\18\176\137\94\35", "\49\81\223\229")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\19\133\186\240\60\146", "\149\82\230\217")],[LUAOBFUSACTOR_DECRYPT_STR_0("\12\64\123\164\43\66\123\184\61\92\121\179", "\202\88\50\26")]=0.1}):Play();
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["bFrame%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\23\120\229\220\130\69\58\108\232\211\166\88\57\118\244\132", "\55\85\25\134\183\229")]=Color3.fromRGB(28, 16, 40)}):Play();
				TABLE_TableIndirection["conn%0"] = nil;
				conn = TABLE_TableIndirection["UserInputService%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\82\58\5\186\242\10\126\51\20\161", "\72\27\84\117\207\134")]:Connect(function(input)
					TABLE_TableIndirection["FlatIdent_8CB90%0"] = 0;
					TABLE_TableIndirection["newBind%0"] = nil;
					while true do
						if (TABLE_TableIndirection["FlatIdent_8CB90%0"] == 0) then
							TABLE_TableIndirection["newBind%0"] = nil;
							if ((input[LUAOBFUSACTOR_DECRYPT_STR_0("\132\195\77\30\2\83\128", "\95\207\166\52\93\109\55\229")] == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\246\198\63\161\231\50\168", "\205\189\163\70\226\136\86")][LUAOBFUSACTOR_DECRYPT_STR_0("\96\208\134\230\3\251\67\210\128", "\139\34\177\229\141\112")]) or (input[LUAOBFUSACTOR_DECRYPT_STR_0("\8\232\97\151\223\39\232", "\176\67\141\24\212")] == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\248\220\93\201\32\80\232", "\141\179\185\36\138\79\52")][LUAOBFUSACTOR_DECRYPT_STR_0("\223\62\83\166\239\62", "\195\155\91\63")])) then
								TABLE_TableIndirection["newBind%0"] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\253\70\214\223\194\215\92", "\57\182\35\175\156\173\179")][LUAOBFUSACTOR_DECRYPT_STR_0("\232\172\178\209\0\19\182", "\216\189\194\217\191\111\100")];
							elseif (((input[LUAOBFUSACTOR_DECRYPT_STR_0("\152\93\68\102\25\68\189\91\85\64\41\90\168", "\42\205\46\33\20\80")] == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\100\27\44\165\120\6\57\162\69\60\48\167\84", "\215\49\104\73")][LUAOBFUSACTOR_DECRYPT_STR_0("\253\17\31\10\217\21\20\12", "\104\182\116\102")]) and (input[LUAOBFUSACTOR_DECRYPT_STR_0("\13\237\229\194\177\60\187", "\222\70\136\156\129\222\88")] ~= Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\233\129\157\154\205\128\129", "\217\162\228\228")][LUAOBFUSACTOR_DECRYPT_STR_0("\139\206\204\217\190\216", "\184\206\189\175")]) and (input[LUAOBFUSACTOR_DECRYPT_STR_0("\119\75\224\148\195\93\217", "\188\60\46\153\215\172\57")] ~= Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\63\244\36\113\54\32\17", "\68\116\145\93\50\89")][LUAOBFUSACTOR_DECRYPT_STR_0("\154\86\161\173\249\68\161", "\51\207\56\202\195\150")])) or (2066 == 932)) then
								TABLE_TableIndirection["newBind%0"] = input[LUAOBFUSACTOR_DECRYPT_STR_0("\150\77\226\96\142\130\251", "\195\221\40\155\35\225\230\158")];
							elseif ((4825 < 4843) and TABLE_TableIndirection["MouseKeyNames%0"][input[LUAOBFUSACTOR_DECRYPT_STR_0("\243\110\195\75\209\12\214\104\210\109\225\18\195", "\98\166\29\166\57\152")]] and (input[LUAOBFUSACTOR_DECRYPT_STR_0("\156\1\132\216\20\167\2\148\222\9\176\2\132", "\93\201\114\225\170")] ~= Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\217\243\254\250\92\185\213\251\248\212\226\248\112", "\142\140\128\155\136\21\215\165")][LUAOBFUSACTOR_DECRYPT_STR_0("\108\162\19\77\229\9\237\174\85\162\8\15", "\218\33\205\102\62\128\75\152")]) and (input[LUAOBFUSACTOR_DECRYPT_STR_0("\193\104\91\214\223\250\107\75\208\194\237\107\91", "\150\148\27\62\164")] ~= Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\23\250\239\210\11\231\250\213\54\221\243\208\39", "\160\66\137\138")][LUAOBFUSACTOR_DECRYPT_STR_0("\45\204\55\172\58\200\95\100\20\204\44\237", "\16\96\163\66\223\95\138\42")])) then
								TABLE_TableIndirection["newBind%0"] = input[LUAOBFUSACTOR_DECRYPT_STR_0("\181\199\212\28\243\7\144\193\197\58\195\25\133", "\105\224\180\177\110\186")];
							end
							TABLE_TableIndirection["FlatIdent_8CB90%0"] = 1;
						end
						if (TABLE_TableIndirection["FlatIdent_8CB90%0"] == 1) then
							if (TABLE_TableIndirection["newBind%0"] or (3877 >= 4537)) then
								TABLE_TableIndirection["FlatIdent_87441%0"] = 0;
								while true do
									if (TABLE_TableIndirection["FlatIdent_87441%0"] == 3) then
										TABLE_TableIndirection["conn%0"]:Disconnect();
										showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\138\15\187\64\41\82\63", "\199\193\106\194\34\64\60\91"), LUAOBFUSACTOR_DECRYPT_STR_0("\29\185\25\168\59\246\24\169\127", "\198\95\214\108") .. formatKeyName(TABLE_TableIndirection["newBind%0"]), false);
										break;
									end
									if (TABLE_TableIndirection["FlatIdent_87441%0"] == 2) then
										TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["bFrame%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\56\60\169\139\238\30\245\32\20\57\137\143\229\3\232\102", "\85\122\93\202\224\137\108\154")]=Color3.fromRGB(20, 16, 30)}):Play();
										TABLE_TableIndirection["listening%0"] = false;
										TABLE_TableIndirection["FlatIdent_87441%0"] = 3;
									end
									if (TABLE_TableIndirection["FlatIdent_87441%0"] == 0) then
										TABLE_TableIndirection["state%0"][keyKey] = TABLE_TableIndirection["newBind%0"];
										TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\176\85\74\191", "\204\228\48\50\203\163")] = formatKeyName(TABLE_TableIndirection["newBind%0"]);
										TABLE_TableIndirection["FlatIdent_87441%0"] = 1;
									end
									if (TABLE_TableIndirection["FlatIdent_87441%0"] == 1) then
										TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\234\178\81\179\44\64\217\55\204\228", "\88\190\215\41\199\111\47\181")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\117\52\79\76\126\213", "\190\52\87\44\41\16\161")];
										TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["bStroke%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\96\25\11\187\9", "\124\35\118\103\212\123\65")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\30\228\190\187\123\78", "\60\92\139\204\223\30")],[LUAOBFUSACTOR_DECRYPT_STR_0("\18\15\238\131\214\54\28\253\136\203\37\4", "\165\70\125\143\237")]=0.3}):Play();
										TABLE_TableIndirection["FlatIdent_87441%0"] = 2;
									end
								end
							elseif (input[LUAOBFUSACTOR_DECRYPT_STR_0("\159\62\236\103\95\176\62", "\48\212\91\149\36")] ~= Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\111\27\35\39\75\26\63", "\100\36\126\90")][LUAOBFUSACTOR_DECRYPT_STR_0("\52\215\212\92\6\20", "\82\113\164\183\61\118\113\82")]) then
							else
								TABLE_TableIndirection["FlatIdent_9525B%0"] = 0;
								while true do
									if (TABLE_TableIndirection["FlatIdent_9525B%0"] == 2) then
										TABLE_TableIndirection["listening%0"] = false;
										TABLE_TableIndirection["conn%0"]:Disconnect();
										break;
									end
									if (TABLE_TableIndirection["FlatIdent_9525B%0"] == 1) then
										TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["bStroke%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\216\77\253\184\182", "\138\155\34\145\215\196\175")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\150\246\28\198\12\41", "\160\212\153\110\162\105\91\61")],[LUAOBFUSACTOR_DECRYPT_STR_0("\148\42\171\209\179\40\171\205\165\54\169\198", "\191\192\88\202")]=0.3}):Play();
										TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["bFrame%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\83\204\234\21\15\222\126\216\231\26\43\195\125\194\251\77", "\172\17\173\137\126\104")]=Color3.fromRGB(20, 16, 30)}):Play();
										TABLE_TableIndirection["FlatIdent_9525B%0"] = 2;
									end
									if (TABLE_TableIndirection["FlatIdent_9525B%0"] == 0) then
										TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\233\121\53\35", "\120\189\28\77\87\182\131")] = formatKeyName(TABLE_TableIndirection["state%0"][keyKey]);
										TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\248\40\9\228\49\247\219\195\63\66", "\183\172\77\113\144\114\152")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\220\123\59\236\76\209", "\109\157\24\88\137\34\165")];
										TABLE_TableIndirection["FlatIdent_9525B%0"] = 1;
									end
								end
							end
							break;
						end
					end
				end);
			end);
			TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\133\78\169\83\183\24\137\188\68\174", "\231\200\33\220\32\210\93")]:Connect(function()
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\126\89\69\230\48\78\87\83\227\51\127\87\74\226\37\15", "\87\60\56\38\141")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\243\176\24\60\193\166\15\27\204\177", "\90\160\197\106")]}):Play();
			end);
			TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\206\186\63\101\71\207\176\43\96\71", "\34\131\213\74\22")]:Connect(function()
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\18\184\21\59\55\171\25\37\62\189\53\63\60\182\4\99", "\80\80\217\118")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\54\93\25\123\4\75\14", "\29\101\40\107")]}):Play();
			end);
			break;
		end
		if (0 == TABLE_TableIndirection["FlatIdent_61084%0"]) then
			TABLE_TableIndirection["frame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\231\209\190\24", "\125\165\149\176\211"), parent);
			TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\122\10\48\228", "\229\41\99\74\129")] = UDim2.new(1, -32, 0, 44);
			TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\17\4\226\32\52\23\238\62\61\1\194\36\63\10\243\120", "\75\83\101\129")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\193\94\83\214\243\72\68", "\176\146\43\33")];
			TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\138\220\242\26\169\105\167\200\255\21\154\105\169\211\226\1\175\105\173\211\242\8", "\27\200\189\145\113\206")] = 0;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\149\162\113\164\93\174\142\64", "\47\192\235\50\203"), TABLE_TableIndirection["frame%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\3\200\8\223\233\206\134\136\36\206\15\194", "\233\64\167\122\177\140\188\212")] = UDim.new(0, 10);
			TABLE_TableIndirection["stroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\122\93\197\84\249\179\251\74", "\144\47\20\150\32\139\220"), TABLE_TableIndirection["frame%0"]);
			TABLE_TableIndirection["FlatIdent_61084%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_61084%0"] == 3) then
			TABLE_TableIndirection["bFrame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\22\48\188\244\223", "\132\80\66\221\153\186\224"), TABLE_TableIndirection["frame%0"]);
			TABLE_TableIndirection["bFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\117\166\62\18", "\219\38\207\68\119")] = UDim2.new(0, 88, 0, 28);
			TABLE_TableIndirection["bFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\61\25\25\56\1\133\2\24", "\236\109\118\106\81\117")] = UDim2.new(1, -100, 0.5, -14);
			TABLE_TableIndirection["bFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\50\197\36\169\255\60\211\33\170\206\60\202\32\188\190", "\206\141\83\166\79")] = Color3.fromRGB(20, 16, 30);
			TABLE_TableIndirection["bFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\168\222\193\249\255\166\200\196\250\217\187\220\196\237\253\168\207\207\240\238\176", "\158\141\201\189\170")] = 0;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\34\153\218\180\95\25\181\235", "\45\119\208\153\219"), TABLE_TableIndirection["bFrame%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\247\86\182\27\22\198\107\165\17\26\193\74", "\115\180\57\196\117")] = UDim.new(0, 7);
			TABLE_TableIndirection["FlatIdent_61084%0"] = 4;
		end
		if (TABLE_TableIndirection["FlatIdent_61084%0"] == 1) then
			TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\17\115\92\251\66", "\160\82\28\48\148\48\164\74")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\225\223\175\34\63\31", "\109\163\176\221\70\90")];
			TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\230\73\62\87\120\60\215\82\36", "\82\178\33\87\52\19")] = 1;
			TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\120\176\233\116\111\92\163\250\127\114\79\187", "\28\44\194\136\26")] = 0.55;
			TABLE_TableIndirection["lbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\72\124\95\18\90\139\89\203\112", "\174\28\25\39\102\22\234\59"), TABLE_TableIndirection["frame%0"]);
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\250\64\10\221", "\230\169\41\112\184\174")] = UDim2.new(1, -112, 1, 0);
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\250\203\102\183\6\29\220\65", "\47\170\164\21\222\114\116\179")] = UDim2.new(0, 14, 0, 0);
			TABLE_TableIndirection["FlatIdent_61084%0"] = 2;
		end
		if (TABLE_TableIndirection["FlatIdent_61084%0"] == 4) then
			TABLE_TableIndirection["bStroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\174\190\194\239\136\134\211", "\182\157\231\237"), TABLE_TableIndirection["bFrame%0"]);
			TABLE_TableIndirection["bStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\214\245\0\175\231", "\192\149\154\108")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\246\245\36\56\36", "\97\153\153\135\64\93\86")];
			TABLE_TableIndirection["bStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\50\86\219\43\242\39\142\202\21", "\185\102\62\178\72\153\73\235")] = 1;
			TABLE_TableIndirection["bStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\64\168\42\188\103\170\42\160\113\180\40\171", "\210\20\218\75")] = 0.3;
			TABLE_TableIndirection["bBtn%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\188\248\31\103\126\12\32\156\242\9", "\84\232\157\103\19\60\121"), TABLE_TableIndirection["bFrame%0"]);
			TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\47\122\104\70", "\35\124\19\18")] = UDim2.new(1, 0, 1, 0);
			TABLE_TableIndirection["FlatIdent_61084%0"] = 5;
		end
		if (TABLE_TableIndirection["FlatIdent_61084%0"] == 2) then
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\198\82\23\205\80\246\92\1\200\83\208\65\21\200\68\244\82\6\195\89\231\74", "\55\132\51\116\166")] = 1;
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\252\57\165\96", "\157\168\92\221\20\100\94")] = title;
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\238\222\251\11", "\22\168\177\149\127\122\185")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\145\168\52\94", "\159\215\199\90\42")][LUAOBFUSACTOR_DECRYPT_STR_0("\21\192\218\46\242\63\226\203\34\250\39\194", "\147\82\175\174\70")];
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\35\135\21\40\114\30\152\8", "\33\119\226\109\92")] = 12;
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\142\131\98\237\216\181\138\117\235\168", "\155\218\230\26\153")] = Color3.fromRGB(170, 160, 190);
			TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\34\23\3\215\46\51\23\202\17\28\22\198\24\6", "\163\118\114\123")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\214\227\232\164\141\195\234\249\183\187\239\227\254\164", "\213\130\134\144\208")][LUAOBFUSACTOR_DECRYPT_STR_0("\215\57\27\32", "\73\155\92\125\84\37\25\61")];
			TABLE_TableIndirection["FlatIdent_61084%0"] = 3;
		end
		if (TABLE_TableIndirection["FlatIdent_61084%0"] == 5) then
			TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\99\195\238\216\73\83\205\248\221\74\117\208\236\221\93\81\195\255\214\64\66\219", "\46\33\162\141\179")] = 1;
			TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\104\169\181\41", "\72\60\204\205\93")] = formatKeyName(TABLE_TableIndirection["state%0"][keyKey]);
			TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\130\203\204\160", "\78\196\164\162\212\40")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\125\194\199\74", "\199\59\173\169\62\146\169\192")][LUAOBFUSACTOR_DECRYPT_STR_0("\16\170\168\171\54\168\158\172\59\161", "\195\87\197\220")];
			TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\133\244\185\167\230\117\230\49", "\84\209\145\193\211\181\28\156")] = 11;
			TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\229\230\54\156\228\222\239\33\154\148", "\167\177\131\78\232")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\137\14\136\66\10\92", "\165\200\109\235\39\100\40\110")];
			TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\162\127\248\42\26\135\126\242", "\115\233\26\129\72")][keyKey] = function()
				TABLE_TableIndirection["bBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\76\11\207\147", "\132\24\110\183\231")] = formatKeyName(TABLE_TableIndirection["state%0"][keyKey]);
			end;
			TABLE_TableIndirection["FlatIdent_61084%0"] = 6;
		end
	end
end
local function createSlider(parent, text, stateKey, minVal, maxVal)
	TABLE_TableIndirection["frame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\136\99\1\190\95", "\35\206\17\96\211\58\212\22"), parent);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\0\199\147\60", "\169\83\174\233\89\232\216\200")] = UDim2.new(1, -32, 0, 56);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\126\19\88\54\191\217\230\3\82\22\120\50\180\196\251\69", "\118\60\114\59\93\216\171\137")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\97\220\86\226\189\81\204", "\220\50\169\36\132")];
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\211\134\15\186\246\149\3\164\255\131\56\163\240\137\31\161\240\149\9\191\242\158", "\209\145\231\108")] = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\108\8\43\2\202\203\39\75", "\66\57\65\104\109\184\165"), TABLE_TableIndirection["frame%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\158\4\232\80\224\175\57\251\90\236\168\24", "\133\221\107\154\62")] = UDim.new(0, 10);
	TABLE_TableIndirection["stroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\238\55\134\245\85\205\58\222", "\81\187\126\213\129\39\162"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\166\190\33\251\182", "\196\229\209\77\148")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\101\218\99\24\88\224", "\173\39\181\17\124\61\146")];
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\78\212\250\33\131\116\217\224\49", "\232\26\188\147\66")] = 1;
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\33\243\231\21\96\5\224\244\30\125\22\248", "\19\117\129\134\123")] = 0.55;
	TABLE_TableIndirection["lbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\23\6\209\2\24\34\33\6\197", "\67\67\99\169\118\84"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\49\35\255\74", "\214\98\74\133\47\51\214\153")] = UDim2.new(1, -64, 0, 18);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\58\65\99\125\103\94\5\64", "\55\106\46\16\20\19")] = UDim2.new(0, 14, 0, 8);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\107\186\177\59\49\44\28\92\181\182\4\36\63\29\90\171\179\34\51\48\16\80", "\115\41\219\210\80\86\94")] = 1;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\148\76\241\14", "\91\192\41\137\122\178")] = text;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\113\42\196\252", "\136\55\69\170")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\197\242\30\46", "\173\131\157\112\90\182\147\77")][LUAOBFUSACTOR_DECRYPT_STR_0("\61\25\52\15\27\27\13\2\30\31\53\10", "\103\122\118\64")];
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\196\237\8\208\195\180\234\237", "\221\144\136\112\164\144")] = 12;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\109\56\97\176\122\50\117\171\75\110", "\196\57\93\25")] = Color3.fromRGB(170, 160, 190);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\254\73\168\145\119\235\64\185\130\65\199\73\190\145", "\47\170\44\208\229")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\124\71\166\14\35\198\59\65\69\176\23\30\233\35", "\87\40\34\222\122\123\135")][LUAOBFUSACTOR_DECRYPT_STR_0("\109\56\135\33", "\176\33\93\225\85\161")];
	TABLE_TableIndirection["sVal%0"] = tonumber(TABLE_TableIndirection["state%0"][stateKey]) or minVal;
	TABLE_TableIndirection["valLbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\28\149\192\85\163\27\136\216", "\25\194\121\237\180"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\135\190\35\42", "\42\212\215\89\79\102")] = UDim2.new(0, 48, 0, 18);
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\135\94\55\25\219\71\72\249", "\151\215\49\68\112\175\46\39")] = UDim2.new(1, -58, 0, 8);
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\100\124\181\71\138\84\114\163\66\137\114\111\183\66\158\86\124\164\73\131\69\100", "\237\38\29\214\44")] = 1;
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\34\35\111\18", "\225\118\70\23\102\19\38\213")] = string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\101\20\12\36", "\208\64\58\61\66\57\148"), TABLE_TableIndirection["sVal%0"]);
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\177\168\80", "\36\137\222\198")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\199\251\236\54", "\41\129\148\130\66\168\194\98")][LUAOBFUSACTOR_DECRYPT_STR_0("\54\37\149\24\66\37\82\160\16\41\138", "\204\113\74\225\112\35\72\16")];
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\69\27\25\52\215\182\169\229", "\128\17\126\97\64\132\223\211")] = 12;
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\142\131\37\28\153\137\49\7\168\213", "\104\218\230\93")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\82\63\209\115\125\40", "\22\19\92\178")];
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\234\14\91\58\133\144\210\2\68\32\176\180\208\31", "\209\190\107\35\78\221")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\180\43\206\245\238\161\34\223\230\216\141\43\216\245", "\182\224\78\182\129")][LUAOBFUSACTOR_DECRYPT_STR_0("\223\4\162\6\194", "\36\141\109\197\110\182\80\31")];
	TABLE_TableIndirection["hit%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\215\15\14\147\60\41\247\30\25\137", "\92\131\106\118\231\126"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["hit%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\142\74\36\160", "\67\221\35\94\197")] = UDim2.new(1, -28, 0, 22);
	TABLE_TableIndirection["hit%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\117\179\51\83\81\181\47\84", "\58\37\220\64")] = UDim2.new(0, 14, 0, 30);
	TABLE_TableIndirection["hit%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\254\141\247\7\179\190\211\153\250\8\128\190\221\130\231\28\181\190\217\130\247\21", "\204\188\236\148\108\212")] = 1;
	TABLE_TableIndirection["hit%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\234\217\71\231", "\210\190\188\63\147\148\114\97")] = "";
	TABLE_TableIndirection["trackBg%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\147\212\164\137\20", "\113\213\166\197\228"), TABLE_TableIndirection["hit%0"]);
	TABLE_TableIndirection["trackBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\254\55\216\86", "\129\173\94\162\51\42\229\99")] = UDim2.new(1, 0, 0, 4);
	TABLE_TableIndirection["trackBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\109\59\1\56\162\84\59\28", "\214\61\84\114\81")] = UDim2.new(0, 0, 0.5, -2);
	TABLE_TableIndirection["trackBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\101\226\31\78\202\196\72\246\18\65\238\217\75\236\14\22", "\182\39\131\124\37\173")] = Color3.fromRGB(30, 24, 42);
	TABLE_TableIndirection["trackBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\24\18\168\16\172\102\9\20\160\17\153\125\34\24\182", "\20\90\125\218\116\201")] = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\16\32\56\136\56\32\88\55", "\61\69\105\123\231\74\78"), TABLE_TableIndirection["trackBg%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\242\162\168\5\210\195\159\187\15\222\196\190", "\183\177\205\218\107")] = UDim.new(1, 0);
	TABLE_TableIndirection["fill%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\35\34\140\114\201", "\86\101\80\237\31\172"), TABLE_TableIndirection["trackBg%0"]);
	TABLE_TableIndirection["initRange%0"] = maxVal - minVal;
	TABLE_TableIndirection["fill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\96\49\180\81", "\189\51\88\206\52\26\169")] = UDim2.new(((TABLE_TableIndirection["initRange%0"] ~= 0) and math.clamp((TABLE_TableIndirection["sVal%0"] - minVal) / TABLE_TableIndirection["initRange%0"], 0, 1)) or 0, 0, 1, 0);
	TABLE_TableIndirection["fill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\4\194\72\94\33\209\68\64\40\199\104\90\42\204\89\6", "\53\70\163\43")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\224\161\164\29\120\39", "\42\161\194\199\120\22\83")];
	TABLE_TableIndirection["fill%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\130\243\74\54\119\44\147\245\66\55\66\55\184\249\84", "\94\192\156\56\82\18")] = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\104\146\39\66\111\3\135\79", "\226\61\219\100\45\29\109"), TABLE_TableIndirection["fill%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\217\172\50\78\255\177\18\65\254\170\53\83", "\32\154\195\64")] = UDim.new(1, 0);
	TABLE_TableIndirection["fillGrad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\196\51\125\205\223\37\248\31\84\203", "\65\145\122\58\191\190"), TABLE_TableIndirection["fill%0"]);
	TABLE_TableIndirection["fillGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\210\24\232\118\209", "\163\145\119\132\25")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\40\19\203\194\81\10\15\222", "\56\111\97\170\166")];
	TABLE_TableIndirection["fillGlow%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\173\109\135\52\42", "\23\235\31\230\89\79\236\141"), TABLE_TableIndirection["fill%0"]);
	TABLE_TableIndirection["fillGlow%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\225\85\217\166", "\143\178\60\163\195\174\79")] = UDim2.new(0, 8, 0, 8);
	TABLE_TableIndirection["fillGlow%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\34\8\242\206\108\8\58\28", "\85\114\103\129\167\24\97")] = UDim2.new(1, -4, 0.5, -4);
	TABLE_TableIndirection["fillGlow%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\25\210\177\135\200\17\8\46\221\182\175\192\15\8\41\128", "\103\91\179\210\236\175\99")] = Color3.fromRGB(255, 255, 255);
	TABLE_TableIndirection["fillGlow%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\123\244\81\243\87\171\175\151\87\241\102\234\81\183\179\146\88\231\87\246\83\160", "\226\57\149\50\152\48\217\192")] = 0.6;
	TABLE_TableIndirection["fillGlow%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\97\163\56\170\254\81\159\35\180\254\115\165\50\171\247", "\155\35\204\74\206")] = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\130\235\88\40\213\185\199\105", "\167\215\162\27\71"), TABLE_TableIndirection["fillGlow%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\30\140\217\44\56\47\177\202\38\52\40\144", "\93\93\227\171\66")] = UDim.new(1, 0);
	TABLE_TableIndirection["knob%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\14\219\205\163\59", "\225\72\169\172\206\94\71\174"), TABLE_TableIndirection["fill%0"]);
	TABLE_TableIndirection["knob%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\126\91\78\226", "\40\45\50\52\135\148\80")] = UDim2.new(0, 14, 0, 14);
	TABLE_TableIndirection["knob%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\210\22\245\139\246\16\233\140", "\226\130\121\134")] = UDim2.new(1, -7, 0.5, -7);
	TABLE_TableIndirection["knob%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\170\56\192\112\143\43\204\110\134\61\224\116\132\54\209\40", "\27\232\89\163")] = Color3.fromRGB(255, 255, 255);
	TABLE_TableIndirection["knob%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\214\166\210\199\241\187\243\202\238\172\240\202\236\172\204", "\163\148\201\160")] = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\107\172\203\233\175\11\91\151", "\101\62\229\136\134\221"), TABLE_TableIndirection["knob%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\81\64\228\225\27\96\125\247\235\23\103\92", "\126\18\47\150\143")] = UDim.new(1, 0);
	TABLE_TableIndirection["knobStroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\129\231\251\104\32\126\20\177", "\127\212\174\168\28\82\17"), TABLE_TableIndirection["knob%0"]);
	TABLE_TableIndirection["knobStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\41\165\80\216\24", "\183\106\202\60")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\123\33\241\79\209\2", "\98\58\66\146\42\191\118")];
	TABLE_TableIndirection["knobStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\176\248\117\219\71\192\223\151\227", "\186\228\144\28\184\44\174")] = 1.5;
	TABLE_TableIndirection["knobStroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\50\12\27\24\21\14\27\4\3\16\25\15", "\118\102\126\122")] = 0.5;
	TABLE_TableIndirection["sliderDragging%0"] = false;
	local function update(input)
		pcall(function()
			TABLE_TableIndirection["FlatIdent_8325F%0"] = 0;
			TABLE_TableIndirection["ipos%0"] = nil;
			TABLE_TableIndirection["inputX%0"] = nil;
			TABLE_TableIndirection["bgPos%0"] = nil;
			TABLE_TableIndirection["bgSize%0"] = nil;
			TABLE_TableIndirection["bgPosX%0"] = nil;
			TABLE_TableIndirection["sizeX%0"] = nil;
			TABLE_TableIndirection["mn%0"] = nil;
			TABLE_TableIndirection["mx%0"] = nil;
			TABLE_TableIndirection["pct%0"] = nil;
			TABLE_TableIndirection["range%0"] = nil;
			TABLE_TableIndirection["val%0"] = nil;
			while true do
				if (TABLE_TableIndirection["FlatIdent_8325F%0"] == 4) then
					TABLE_TableIndirection["state%0"][stateKey] = TABLE_TableIndirection["val%0"];
					TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\232\14\144\243", "\200\188\107\232\135")] = string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\105\178\240\77", "\159\76\156\193\43\91"), TABLE_TableIndirection["val%0"]);
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["fill%0"], TweenInfo.new(0.05), {[LUAOBFUSACTOR_DECRYPT_STR_0("\74\37\20\112", "\138\25\76\110\21\197\41\35")]=UDim2.new(TABLE_TableIndirection["pct%0"], 0, 1, 0)}):Play();
					if (stateKey ~= LUAOBFUSACTOR_DECRYPT_STR_0("\122\204\5\84\60\95\141\94\249\55\81", "\222\46\156\82\53\80\52")) then
					else
						updateTPWalk();
					end
					break;
				end
				if (TABLE_TableIndirection["FlatIdent_8325F%0"] == 1) then
					TABLE_TableIndirection["bgPos%0"] = TABLE_TableIndirection["trackBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\26\210\12\231\120\46\196\26\216\123\40\217\11\225\123\53", "\20\91\176\127\136")];
					TABLE_TableIndirection["bgSize%0"] = TABLE_TableIndirection["trackBg%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\214\242\59\170\6\177\227\245\27\172\16\161", "\196\151\144\72\197\106")];
					if ((TABLE_TableIndirection["bgPos%0"] == nil) or (TABLE_TableIndirection["bgSize%0"] == nil)) then
						return;
					end
					TABLE_TableIndirection["bgPosX%0"] = TABLE_TableIndirection["bgPos%0"]['X'];
					TABLE_TableIndirection["FlatIdent_8325F%0"] = 2;
				end
				if (TABLE_TableIndirection["FlatIdent_8325F%0"] == 3) then
					TABLE_TableIndirection["pct%0"] = math.clamp((TABLE_TableIndirection["inputX%0"] - TABLE_TableIndirection["bgPosX%0"]) / TABLE_TableIndirection["sizeX%0"], 0, 1);
					TABLE_TableIndirection["range%0"] = TABLE_TableIndirection["mx%0"] - TABLE_TableIndirection["mn%0"];
					TABLE_TableIndirection["val%0"] = math.floor(((TABLE_TableIndirection["mn%0"] + (TABLE_TableIndirection["range%0"] * TABLE_TableIndirection["pct%0"])) * 10) + 0.5) / 10;
					TABLE_TableIndirection["val%0"] = math.clamp(TABLE_TableIndirection["val%0"], TABLE_TableIndirection["mn%0"], TABLE_TableIndirection["mx%0"]);
					TABLE_TableIndirection["FlatIdent_8325F%0"] = 4;
				end
				if (0 == TABLE_TableIndirection["FlatIdent_8325F%0"]) then
					TABLE_TableIndirection["ipos%0"] = input[LUAOBFUSACTOR_DECRYPT_STR_0("\36\193\147\91\0\199\143\92", "\50\116\174\224")];
					if ((TABLE_TableIndirection["ipos%0"] == nil) or (4315 < 1726)) then
						return;
					end
					TABLE_TableIndirection["inputX%0"] = TABLE_TableIndirection["ipos%0"]['X'];
					if ((TABLE_TableIndirection["inputX%0"] == nil) or (3679 < 625)) then
						return;
					end
					TABLE_TableIndirection["FlatIdent_8325F%0"] = 1;
				end
				if (TABLE_TableIndirection["FlatIdent_8325F%0"] == 2) then
					TABLE_TableIndirection["sizeX%0"] = TABLE_TableIndirection["bgSize%0"]['X'];
					if ((TABLE_TableIndirection["bgPosX%0"] == nil) or (TABLE_TableIndirection["sizeX%0"] == nil) or (TABLE_TableIndirection["sizeX%0"] == 0) or (4625 < 632)) then
						return;
					end
					TABLE_TableIndirection["mn%0"] = minVal or 0;
					TABLE_TableIndirection["mx%0"] = maxVal or 1;
					TABLE_TableIndirection["FlatIdent_8325F%0"] = 3;
				end
			end
		end);
	end
	TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\230\116\9\195\4\215\198", "\165\181\24\96\167\97")][stateKey] = function()
		pcall(function()
			TABLE_TableIndirection["FlatIdent_89C1C%0"] = 0;
			TABLE_TableIndirection["mn%0"] = nil;
			TABLE_TableIndirection["mx%0"] = nil;
			TABLE_TableIndirection["v%0"] = nil;
			TABLE_TableIndirection["range%0"] = nil;
			TABLE_TableIndirection["pct%0"] = nil;
			while true do
				if (TABLE_TableIndirection["FlatIdent_89C1C%0"] == 1) then
					TABLE_TableIndirection["v%0"] = tonumber(TABLE_TableIndirection["state%0"][stateKey]) or TABLE_TableIndirection["mn%0"];
					TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\152\40\36\80", "\36\204\77\92")] = string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\123\9\106\219", "\97\94\39\91\189"), TABLE_TableIndirection["v%0"]);
					TABLE_TableIndirection["FlatIdent_89C1C%0"] = 2;
				end
				if (3 == TABLE_TableIndirection["FlatIdent_89C1C%0"]) then
					TABLE_TableIndirection["pct%0"] = math.clamp((TABLE_TableIndirection["v%0"] - TABLE_TableIndirection["mn%0"]) / TABLE_TableIndirection["range%0"], 0, 1);
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["fill%0"], TweenInfo.new(0.3), {[LUAOBFUSACTOR_DECRYPT_STR_0("\6\120\225\19", "\153\85\17\155\118\196\114")]=UDim2.new(TABLE_TableIndirection["pct%0"], 0, 1, 0)}):Play();
					break;
				end
				if (TABLE_TableIndirection["FlatIdent_89C1C%0"] == 2) then
					TABLE_TableIndirection["range%0"] = TABLE_TableIndirection["mx%0"] - TABLE_TableIndirection["mn%0"];
					if ((TABLE_TableIndirection["range%0"] == 0) or (83 > 1780)) then
						return;
					end
					TABLE_TableIndirection["FlatIdent_89C1C%0"] = 3;
				end
				if (TABLE_TableIndirection["FlatIdent_89C1C%0"] == 0) then
					TABLE_TableIndirection["mn%0"] = minVal or 0;
					TABLE_TableIndirection["mx%0"] = maxVal or 1;
					TABLE_TableIndirection["FlatIdent_89C1C%0"] = 1;
				end
			end
		end);
	end;
	TABLE_TableIndirection["hit%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\238\251\203\210\175\19\194\242\218\201", "\81\167\149\187\167\219")]:Connect(function(input)
		if (input[LUAOBFUSACTOR_DECRYPT_STR_0("\204\31\45\211\219\247\28\61\213\198\224\28\45", "\146\153\108\72\161")] ~= Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\48\7\232\245\2\53\46\16\0\217\254\59\62", "\94\101\116\141\135\75\91")][LUAOBFUSACTOR_DECRYPT_STR_0("\31\175\22\215\64\217\250\2\38\175\13\149", "\118\82\192\99\164\37\155\143")]) then
		else
			TABLE_TableIndirection["FlatIdent_98E39%0"] = 0;
			while true do
				if (0 == TABLE_TableIndirection["FlatIdent_98E39%0"]) then
					TABLE_TableIndirection["sliderDragging%0"] = true;
					update(input);
					TABLE_TableIndirection["FlatIdent_98E39%0"] = 1;
				end
				if (TABLE_TableIndirection["FlatIdent_98E39%0"] == 1) then
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["knob%0"], TweenInfo.new(0.12, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\7\186\88\38\44\188\120\59\59\183\78", "\79\66\219\43")].Back), {[LUAOBFUSACTOR_DECRYPT_STR_0("\46\73\233\20", "\113\125\32\147")]=UDim2.new(0, 18, 0, 18),[LUAOBFUSACTOR_DECRYPT_STR_0("\236\221\218\74\95\189\211\220", "\212\188\178\169\35\43")]=UDim2.new(1, -9, 0.5, -9)}):Play();
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["stroke%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\157\228\113\37\172", "\74\222\139\29")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\102\198\170\1\172\28", "\136\39\165\201\100\194\104\18")],[LUAOBFUSACTOR_DECRYPT_STR_0("\71\253\77\120\192\246\46\192\118\225\79\111", "\178\19\143\44\22\179\134\79")]=0.3}):Play();
					break;
				end
			end
		end
	end);
	trackConn(TABLE_TableIndirection["UserInputService%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\52\143\187\0\92\244\249\128\24\133", "\228\125\225\203\117\40\177\151")]:Connect(function(input)
		if ((input[LUAOBFUSACTOR_DECRYPT_STR_0("\221\186\207\102\163\14\55\253\189\254\109\154\5", "\71\136\201\170\20\234\96")] == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\38\55\121\218\239\254\180\6\48\72\209\214\245", "\196\115\68\28\168\166\144")][LUAOBFUSACTOR_DECRYPT_STR_0("\245\92\249\111\0\214\68\204\71\227\114\84", "\49\184\51\140\28\101\148")]) and TABLE_TableIndirection["sliderDragging%0"]) then
			TABLE_TableIndirection["FlatIdent_2A1A%0"] = 0;
			while true do
				if (TABLE_TableIndirection["FlatIdent_2A1A%0"] == 1) then
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["stroke%0"], TweenInfo.new(0.25), {[LUAOBFUSACTOR_DECRYPT_STR_0("\215\225\133\196\210", "\234\148\142\233\171\160\141\39")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\115\23\152\115\136\224", "\37\49\120\234\23\237\146")],[LUAOBFUSACTOR_DECRYPT_STR_0("\137\80\122\187\56\181\61\175\71\117\182\50", "\92\221\34\27\213\75\197")]=0.55}):Play();
					break;
				end
				if (0 == TABLE_TableIndirection["FlatIdent_2A1A%0"]) then
					TABLE_TableIndirection["sliderDragging%0"] = false;
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["knob%0"], TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\0\52\244\127", "\68\83\93\142\26")]=UDim2.new(0, 14, 0, 14),[LUAOBFUSACTOR_DECRYPT_STR_0("\178\161\221\4\24\12\160\140", "\207\226\206\174\109\108\101")]=UDim2.new(1, -7, 0.5, -7)}):Play();
					TABLE_TableIndirection["FlatIdent_2A1A%0"] = 1;
				end
			end
		end
	end));
	trackConn(TABLE_TableIndirection["UserInputService%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\157\66\63\230\240\107\242\85\186\75\42\247", "\52\212\44\79\147\132\40\154")]:Connect(function(input)
		if (TABLE_TableIndirection["sliderDragging%0"] and (input[LUAOBFUSACTOR_DECRYPT_STR_0("\218\179\203\203\198\174\222\204\251\148\215\201\234", "\185\143\192\174")] == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\136\86\61\197\209\239\173\80\44\227\225\241\184", "\129\221\37\88\183\152")][LUAOBFUSACTOR_DECRYPT_STR_0("\114\232\197\1\53\17\80\241\213\31\53\50\75", "\92\63\135\176\114\80")])) then
			update(input);
		end
	end));
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\27\255\64\23\58\110\56\228\80\22", "\43\86\144\53\100\95")]:Connect(function()
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\158\244\197\59\47\229\83\169\251\194\19\39\251\83\174\166", "\60\220\149\166\80\72\151")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\191\61\173\244\141\43\186\211\128\60", "\146\236\72\223")]}):Play();
	end);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\147\246\81\208\222\60\187\248\82\198", "\112\222\153\36\163\187")]:Connect(function()
		TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\230\242\238\91\35\183\203\230\227\84\7\170\200\252\255\3", "\197\164\147\141\48\68")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\146\76\27\13\62\29\164", "\126\193\57\105\107\95")]}):Play();
	end);
end
local function createDropdownBase(parent, text, stateKey, optionsFunc, isMulti)
	TABLE_TableIndirection["frame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\87\15\193\27\58", "\85\17\125\160\118\95\205"), parent);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\30\250\254", "\155\136\119\128")] = UDim2.new(1, -32, 0, 44);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\121\202\24\235\240\184\141\87\85\207\56\239\251\165\144\17", "\34\59\171\123\128\151\202\226")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\75\240\110\197\72\59\125", "\88\24\133\28\163\41")];
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\209\170\243\192\15\225\164\229\197\12\199\185\241\197\27\227\170\226\206\6\240\178", "\104\147\203\144\171")] = 0;
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\104\30\85\173\88\54\89\174\72\23\82\185\74\28\72\174", "\221\43\114\60")] = true;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\244\80\88\74\236\202\196\107", "\164\161\25\27\37\158"), TABLE_TableIndirection["frame%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\16\74\222\185\26\33\119\205\179\22\38\86", "\127\83\37\172\215")] = UDim.new(0, 10);
	TABLE_TableIndirection["stroke%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\227\247\244\1\88\5\193\230", "\131\182\190\167\117\42\106\170"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\1\140\246\177\75", "\188\66\227\154\222\57\229")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\90\60\73\81\245\106", "\144\24\83\59\53")];
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\24\136\188\206\16\34\133\166\222", "\123\76\224\213\173")] = 1;
	TABLE_TableIndirection["stroke%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\27\216\200\170\60\218\200\182\42\196\202\189", "\196\79\170\169")] = 0.55;
	TABLE_TableIndirection["topBtn%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\183\62\61\105\161\46\49\105\140\53", "\29\227\91\69"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["topBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\236\198\164\183", "\87\191\175\222\210\196\38")] = UDim2.new(1, 0, 0, 44);
	TABLE_TableIndirection["topBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\113\233\116\233\196\220\92\253\121\230\247\220\82\230\100\242\194\220\86\230\116\251", "\174\51\136\23\130\163")] = 1;
	TABLE_TableIndirection["topBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\9\16\42\30", "\149\93\117\82\106\130")] = "";
	TABLE_TableIndirection["topBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\202\188\4\233\222\242\146\15\226\206\244", "\171\134\221\125\134")] = 0;
	TABLE_TableIndirection["lbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\132\33\225\98\220\177\38\252\122", "\144\208\68\153\22"), TABLE_TableIndirection["topBtn%0"]);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\210\19\63\9", "\174\129\122\69\108\165\54\119")] = UDim2.new(0.5, 0, 1, 0);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\201\210\201\224\237\212\213\231", "\137\153\189\186")] = UDim2.new(0, 14, 0, 0);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\51\207\30\78\22\220\18\80\31\202\41\87\16\192\14\85\16\220\24\75\18\215", "\37\113\174\125")] = 1;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\101\65\92\189", "\201\49\36\36")] = text;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\34\33\164\100", "\16\100\78\202")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\155\179\126\226", "\203\221\220\16\150\227\34\43")][LUAOBFUSACTOR_DECRYPT_STR_0("\220\43\111\112\250\41\86\125\255\45\110\117", "\24\155\68\27")];
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\142\85\200\70\137\89\202\87", "\50\218\48\176")] = 12;
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\122\87\204\228\120\91\66\93\198\163", "\52\46\50\180\144\59")] = Color3.fromRGB(170, 160, 190);
	TABLE_TableIndirection["lbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\57\52\61\99\62\24\246\4\54\43\122\3\55\238", "\154\109\81\69\23\102\89")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\206\206\196\64\121\24\246\194\219\90\76\60\244\223", "\89\154\171\188\52\33")][LUAOBFUSACTOR_DECRYPT_STR_0("\218\17\10\34", "\86\150\116\108")];
	TABLE_TableIndirection["valLbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\67\186\52\186\237\71\117\186\32", "\38\23\223\76\206\161"), TABLE_TableIndirection["topBtn%0"]);
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\235\192\66\62", "\166\184\169\56\91\195\202")] = UDim2.new(0.5, -30, 1, 0);
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\151\191\98\45\214\174\191\127", "\162\199\208\17\68")] = UDim2.new(0.5, 0, 0, 0);
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\243\231\92\10\235\28\95\14\223\226\107\19\237\0\67\11\208\244\90\15\239\23", "\123\177\134\63\97\140\110\48")] = 1;
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\22\91\250\215", "\137\80\52\148\163\146\123\21")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\222\207\173\234", "\99\152\160\195\158")][LUAOBFUSACTOR_DECRYPT_STR_0("\160\56\194\54\28\50\165\56\218\58", "\95\231\87\182\94\125")];
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\108\204\224\32\58\117\9\93", "\115\56\169\152\84\105\28")] = 11;
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\10\224\153\91\149\74\50\234\147\28", "\37\94\133\225\47\214")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\118\215\85\91\89\192", "\62\55\180\54")];
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\255\48\210\122\101\162\18\252\244\37\195\76\80", "\123\155\154\72\166\34\36\206")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\242\218\32\183\29\231\211\49\164\43\203\218\54\183", "\69\166\191\88\195")][LUAOBFUSACTOR_DECRYPT_STR_0("\139\115\41\74\146", "\234\217\26\78\34\230\214\78")];
	TABLE_TableIndirection["arrowFrame%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\150\13\233\90\79", "\42\208\127\136\55"), TABLE_TableIndirection["topBtn%0"]);
	TABLE_TableIndirection["arrowFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\66\81\211\44", "\47\17\56\169\73\198\140")] = UDim2.new(0, 18, 0, 18);
	TABLE_TableIndirection["arrowFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\18\58\79\74\185\137\45\59", "\224\66\85\60\35\205")] = UDim2.new(1, -28, 0.5, -9);
	TABLE_TableIndirection["arrowFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\218\59\127\80\53\95\220\237\52\120\120\61\65\220\234\105", "\179\152\90\28\59\82\45")] = Color3.fromRGB(22, 18, 32);
	TABLE_TableIndirection["arrowFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\139\243\63\11\74\86\166\231\50\4\121\86\168\252\47\16\76\86\172\252\63\25", "\36\201\146\92\96\45")] = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\220\239\222\74\214\249\249\227", "\145\137\166\157\37\164\151\156"), TABLE_TableIndirection["arrowFrame%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\45\22\85\114\222\102\60\24\67\117\206\103", "\20\110\121\39\28\187")] = UDim.new(0, 5);
	TABLE_TableIndirection["arrowLbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\58\244\28\51\120\29\160\11\253", "\194\110\145\100\71\52\124"), TABLE_TableIndirection["arrowFrame%0"]);
	TABLE_TableIndirection["arrowLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\65\224\94\171", "\118\18\137\36\206\164\121\59")] = UDim2.new(1, 0, 1, 0);
	TABLE_TableIndirection["arrowLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\220\216\224\31\75\236\214\246\26\72\202\203\226\26\95\238\216\241\17\66\253\192", "\44\158\185\131\116")] = 1;
	TABLE_TableIndirection["arrowLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\120\143\197\99", "\17\44\234\189\23\187\199")] = "v";
	TABLE_TableIndirection["arrowLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\17\113\208\30", "\106\87\30\190")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\240\227\2\104", "\188\182\140\108\28\170\55\34")][LUAOBFUSACTOR_DECRYPT_STR_0("\251\187\252\235\221\185\202\236\208\176", "\131\188\212\136")];
	TABLE_TableIndirection["arrowLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\189\14\105\50\101\128\17\116", "\54\233\107\17\70")] = 11;
	TABLE_TableIndirection["arrowLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\196\45\51\17\231\255\36\36\23\151", "\164\144\72\75\101")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\200\142\87\206\242\75\232\142\75", "\62\156\235\47\186\191")];
	TABLE_TableIndirection["layout%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\56\195\194\40\223\179\0\237\20\229\251\53", "\140\109\138\142\65\172\199\76"), TABLE_TableIndirection["frame%0"]);
	TABLE_TableIndirection["layout%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\199\95\179\25\224\207\179", "\212\151\62\215\125\137\161")] = UDim.new(0, 2);
	TABLE_TableIndirection["layout%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\6\169\29\152\26\180\11\137\39", "\236\85\198\111")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\45\62\101\225\115\12\53\114\231", "\60\126\81\23\149")][LUAOBFUSACTOR_DECRYPT_STR_0("\105\139\207\133\101\253\106\152\210\143\98", "\137\37\234\182\234\16")];
	TABLE_TableIndirection["isOpen%0"] = false;
	TABLE_TableIndirection["optionBtns%0"] = {};
	local function getMultiText()
		local count, sel = 0, "";
		for k, v in pairs(TABLE_TableIndirection["state%0"][stateKey]) do
			if ((546 <= 1077) and v) then
				TABLE_TableIndirection["FlatIdent_82A94%0"] = 0;
				while true do
					if (0 == TABLE_TableIndirection["FlatIdent_82A94%0"]) then
						count = count + 1;
						sel = k;
						break;
					end
				end
			end
		end
		return ((count > 1) and (count .. LUAOBFUSACTOR_DECRYPT_STR_0("\185\56\92\63\9\65\153\166\253", "\195\153\107\57\83\108\34\237"))) or ((count == 1) and sel) or LUAOBFUSACTOR_DECRYPT_STR_0("\82\20\139\198", "\159\28\123\229\163\233\225");
	end
	local function refresh()
		for _, b in pairs(TABLE_TableIndirection["optionBtns%0"]) do
			b:Destroy();
		end
		table.clear(TABLE_TableIndirection["optionBtns%0"]);
		TABLE_TableIndirection["ops%0"] = ((type(optionsFunc) == LUAOBFUSACTOR_DECRYPT_STR_0("\129\1\59\22\147\29\58\27", "\117\231\116\85")) and optionsFunc()) or optionsFunc;
		for i, opt in ipairs(TABLE_TableIndirection["ops%0"]) do
			TABLE_TableIndirection["isSelected%0"] = (not isMulti and (TABLE_TableIndirection["state%0"][stateKey] == opt)) or (isMulti and (TABLE_TableIndirection["state%0"][stateKey][opt] or false));
			TABLE_TableIndirection["btn%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\24\95\94\47\94\57\78\82\52\114", "\28\76\58\38\91"), TABLE_TableIndirection["frame%0"]);
			TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\139\167\59\178", "\143\216\206\65\215\129\179")] = UDim2.new(1, 0, 0, 34);
			TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\128\115\10\247\165\96\6\233\172\118\42\243\174\125\27\175", "\156\194\18\105")] = (TABLE_TableIndirection["isSelected%0"] and Color3.fromRGB(28, 20, 40)) or Color3.fromRGB(18, 15, 26);
			TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\194\173\39\225\32\242\163\49\228\35\212\190\37\228\52\240\173\54\239\41\227\181", "\71\128\204\68\138")] = 0;
			TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\93\187\52\119\251\149\228\72\172\0\123\241\163\225", "\198\141\50\201\80\18\137")] = 0;
			TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\217\75\149\72", "\146\141\46\237\60\33\95")] = "";
			TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\242\168\232\28\168\203\241\187\245\22\175", "\191\190\201\145\115\221")] = i;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\14\58\206\72\111\192\88\38", "\84\91\115\141\39\29\174\61"), TABLE_TableIndirection["btn%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\53\236\65\243\19\241\97\252\18\234\70\238", "\157\118\131\51")] = UDim.new(0, 8);
			TABLE_TableIndirection["indicator%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\200\76\60\166\84", "\30\142\62\93\203\49"), TABLE_TableIndirection["btn%0"]);
			TABLE_TableIndirection["indicator%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\144\170\45\142", "\126\195\195\87\235\199")] = UDim2.new(0, 3, 0, 12);
			TABLE_TableIndirection["indicator%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\57\137\73\191\237\162\113\7", "\30\105\230\58\214\153\203")] = UDim2.new(0, 2, 0.5, -6);
			TABLE_TableIndirection["indicator%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\49\19\245\185\7\185\28\7\248\182\35\164\31\29\228\225", "\203\115\114\150\210\96")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\242\239\95\58\221\248", "\95\179\140\60")];
			TABLE_TableIndirection["indicator%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\2\251\32\253\219\8\171\197\46\254\23\228\221\20\183\192\33\232\38\248\223\3", "\176\64\154\67\150\188\122\196")] = (TABLE_TableIndirection["isSelected%0"] and 0) or 1;
			TABLE_TableIndirection["indicator%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\7\70\54\137\75\239\22\64\62\136\126\244\61\76\40", "\157\69\41\68\237\46")] = 0;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\25\211\196\255\252\222\192\62", "\165\76\154\135\144\142\176"), TABLE_TableIndirection["indicator%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\7\34\85\9\22\82\139\37\41\78\18\0", "\217\68\77\39\103\115\32")] = UDim.new(1, 0);
			TABLE_TableIndirection["indGrad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\146\165\139\207\211\245\214\162\130\184", "\191\199\236\204\189\178\145"), TABLE_TableIndirection["indicator%0"]);
			TABLE_TableIndirection["indGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\85\137\81\64\100", "\47\22\230\61")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\37\161\32\28\48\7\189\53", "\89\98\211\65\120")];
			TABLE_TableIndirection["indGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\141\205\25\83\9\167\24\177", "\119\223\162\109\50\125\206")] = 90;
			TABLE_TableIndirection["oLbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\43\7\21\86\45\30\0\8\78", "\97\127\98\109\34"), TABLE_TableIndirection["btn%0"]);
			TABLE_TableIndirection["oLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\4\3\106\53", "\122\87\106\16\80\205")] = UDim2.new(1, -24, 1, 0);
			TABLE_TableIndirection["oLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\208\7\250\255\247\229\255\198", "\168\128\104\137\150\131\140\144")] = UDim2.new(0, 14, 0, 0);
			TABLE_TableIndirection["oLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\145\189\219\252\175\95\5\18\189\184\236\229\169\67\25\23\178\174\221\249\171\84", "\103\211\220\184\151\200\45\106")] = 1;
			TABLE_TableIndirection["oLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\154\5\46\236", "\95\220\106\64\152\186\151\211")] = (TABLE_TableIndirection["isSelected%0"] and Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\87\137\188\171", "\177\17\230\210\223\153\182")][LUAOBFUSACTOR_DECRYPT_STR_0("\13\189\254\128\48\219\45\37\190\238", "\111\74\210\138\232\81\182")]) or Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\59\17\57\151", "\39\125\126\87\227\160")][LUAOBFUSACTOR_DECRYPT_STR_0("\115\176\170\133\85\178", "\237\52\223\222")];
			TABLE_TableIndirection["oLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\129\254\152\196\129\30\175\254", "\119\213\155\224\176\210")] = 11;
			TABLE_TableIndirection["oLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\140\230\154\39\74\137\5\231\191\237\143\54\124\188", "\142\216\131\226\83\18\200\105")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\27\1\227\214\247\192\33\239\40\10\246\199\193\245", "\134\79\100\155\162\175\129\77")][LUAOBFUSACTOR_DECRYPT_STR_0("\229\69\163\255", "\139\169\32\197")];
			TABLE_TableIndirection["oLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\68\205\56\33\196\243\179\194\98\155", "\173\16\168\64\85\135\156\223")] = (TABLE_TableIndirection["isSelected%0"] and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\52\84\247\244\230\79", "\37\117\55\148\145\136\59\85")]) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\3\18\171\50\26\2\167\35\51", "\70\87\119\211")];
			if (isMulti or (996 > 4301)) then
				TABLE_TableIndirection["FlatIdent_1F33B%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_1F33B%0"] == 0) then
						TABLE_TableIndirection["oLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\133\211\27\42", "\83\209\182\99\94\199")] = ((TABLE_TableIndirection["isSelected%0"] and LUAOBFUSACTOR_DECRYPT_STR_0("\206\151\192", "\57\184\183\224")) or LUAOBFUSACTOR_DECRYPT_STR_0("\184\159\163\239", "\226\152\191\131\207\68\148\117")) .. opt;
						TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\55\68\168\193\80\56\94\169\198\90\20\26\158\222\92\25\64", "\53\122\43\221\178")]:Connect(function()
							if (opt == LUAOBFUSACTOR_DECRYPT_STR_0("\207\164\18", "\70\142\200\126\126\200\115\101")) then
								TABLE_TableIndirection["state%0"][stateKey] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\34\75", "\140\51\78\39\162")]=true};
							else
								TABLE_TableIndirection["state%0"][stateKey][LUAOBFUSACTOR_DECRYPT_STR_0("\47\206\215", "\171\110\162\187\148\145\131\149")] = nil;
								TABLE_TableIndirection["state%0"][stateKey][opt] = not TABLE_TableIndirection["state%0"][stateKey][opt];
								if not TABLE_TableIndirection["state%0"][stateKey][opt] then
									TABLE_TableIndirection["state%0"][stateKey][opt] = nil;
								end
								TABLE_TableIndirection["has%0"] = false;
								for _, v in pairs(TABLE_TableIndirection["state%0"][stateKey]) do
									if ((4070 > 687) and v) then
										TABLE_TableIndirection["has%0"] = true;
										break;
									end
								end
								if (not TABLE_TableIndirection["has%0"] or (656 >= 3330)) then
									TABLE_TableIndirection["state%0"][stateKey] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\144\1\39", "\34\209\109\75\46")]=true};
								end
							end
							TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\39\252\163\168", "\154\115\153\219\220")] = getMultiText();
							refresh();
						end);
						break;
					end
				end
			else
				TABLE_TableIndirection["oLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\29\20\145\10", "\222\73\113\233\126\66\114")] = LUAOBFUSACTOR_DECRYPT_STR_0("\196\92\225\66", "\172\228\124\193\98\119\28\118") .. opt;
				TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\20\223\147\93\60\242\147\90\45\223\136\31\26\220\143\77\50", "\46\89\176\230")]:Connect(function()
					TABLE_TableIndirection["state%0"][stateKey] = opt;
					TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\15\64\51", "\108\155\106\56\71\228")] = opt;
					TABLE_TableIndirection["isOpen%0"] = false;
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.28, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\231\91\192\56\212\83\19\217\219\86\214", "\173\162\58\179\81\186\52\64")].Quint), {[LUAOBFUSACTOR_DECRYPT_STR_0("\13\73\228\194", "\37\94\32\158\167\43\100")]=UDim2.new(1, -32, 0, 44)}):Play();
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["stroke%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\231\53\95\62\9", "\214\164\90\51\81\123\145")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\57\164\177\196\30\185", "\160\123\203\195")],[LUAOBFUSACTOR_DECRYPT_STR_0("\188\14\117\130\34\37\137\14\113\130\50\44", "\85\232\124\20\236\81")]=0.55}):Play();
					TABLE_TableIndirection["arrowLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\117\206\173\50", "\30\33\171\213\70")] = "v";
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["arrowFrame%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\186\207\35\216\108\129\207\57", "\24\232\160\87\185")]=0}):Play();
				end);
			end
			TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\243\63\228\234\35\251\62\229\252\52", "\70\190\80\145\153")]:Connect(function()
				if not TABLE_TableIndirection["isSelected%0"] then
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["btn%0"], TweenInfo.new(0.12), {[LUAOBFUSACTOR_DECRYPT_STR_0("\117\247\228\245\41\37\3\66\248\227\221\33\59\3\69\165", "\108\55\150\135\158\78\87")]=Color3.fromRGB(26, 21, 36)}):Play();
				end
			end);
			TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\243\11\231\233\205\12\219\5\228\255", "\64\190\100\146\154\168")]:Connect(function()
				if not TABLE_TableIndirection["isSelected%0"] then
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["btn%0"], TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\201\164\133\24\188\172\29\86\229\161\165\28\183\177\0\16", "\35\139\197\230\115\219\222\114")]=Color3.fromRGB(18, 15, 26)}):Play();
				end
			end);
			table.insert(TABLE_TableIndirection["optionBtns%0"], TABLE_TableIndirection["btn%0"]);
		end
		if (TABLE_TableIndirection["isOpen%0"] or (2492 <= 335)) then
			TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\11\217\240\232", "\137\88\176\138\141\190\21")] = UDim2.new(1, -32, 0, 44 + (#TABLE_TableIndirection["optionBtns%0"] * 36) + 6);
		end
	end
	TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\2\226\69\216\181\41\231\68\219", "\209\70\144\42\168")][stateKey] = function()
		TABLE_TableIndirection["FlatIdent_1BC4A%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_1BC4A%0"] == 0) then
				TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\56\232\177\68", "\112\108\141\201\48\72")] = (isMulti and getMultiText()) or TABLE_TableIndirection["state%0"][stateKey] or LUAOBFUSACTOR_DECRYPT_STR_0("\248\68\27\86\32\106\133\15\89", "\30\171\33\119\51\67");
				refresh();
				break;
			end
		end
	end;
	TABLE_TableIndirection["topBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\123\161\14\193\136\218\67\186\15\221\131\169\117\162\18\209\134", "\152\54\206\123\178\237")]:Connect(function()
		TABLE_TableIndirection["FlatIdent_397D1%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_397D1%0"] == 2) then
				TABLE_TableIndirection["arrowLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\216\222\179\27", "\86\140\187\203\111\184\235\174")] = (TABLE_TableIndirection["isOpen%0"] and "^") or "v";
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_397D1%0"] == 1) then
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.3, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\232\9\101\13\73\202\59\98\29\75\200", "\39\173\104\22\100")].Quint), {[LUAOBFUSACTOR_DECRYPT_STR_0("\113\215\64\118", "\211\34\190\58\19\123")]=UDim2.new(1, -32, 0, (TABLE_TableIndirection["isOpen%0"] and (44 + (#TABLE_TableIndirection["optionBtns%0"] * 36) + 6)) or 44)}):Play();
				TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["stroke%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\96\5\231\229\206", "\158\35\106\139\138\188\170")]=((TABLE_TableIndirection["isOpen%0"] and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\39\202\228\79\75\18", "\37\102\169\135\42")]) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\169\193\12\242\56\37", "\192\235\174\126\150\93\87\231")]),[LUAOBFUSACTOR_DECRYPT_STR_0("\105\86\127\63\200\218\217\79\65\112\50\194", "\184\61\36\30\81\187\170")]=((TABLE_TableIndirection["isOpen%0"] and 0.4) or 0.55)}):Play();
				TABLE_TableIndirection["FlatIdent_397D1%0"] = 2;
			end
			if (TABLE_TableIndirection["FlatIdent_397D1%0"] == 0) then
				refresh();
				TABLE_TableIndirection["isOpen%0"] = not TABLE_TableIndirection["isOpen%0"];
				TABLE_TableIndirection["FlatIdent_397D1%0"] = 1;
			end
		end
	end);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\50\199\174\212\20\172\17\220\190\213", "\233\127\168\219\167\113")]:Connect(function()
		if not TABLE_TableIndirection["isOpen%0"] then
			TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\124\117\136\121\48\223\19\72\80\112\168\125\59\194\14\14", "\61\62\20\235\18\87\173\124")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\113\80\82\204\203\65\64\97\198\222", "\170\34\37\32\170")]}):Play();
		end
	end);
	TABLE_TableIndirection["frame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\30\202\44\236\56\98\54\196\47\250", "\46\83\165\89\159\93")]:Connect(function()
		if not TABLE_TableIndirection["isOpen%0"] then
			TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["frame%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\43\249\11\167\202\220\6\237\6\168\238\193\5\247\26\255", "\174\105\152\104\204\173")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\140\92\248\9\190\74\239", "\111\223\41\138")]}):Play();
		end
	end);
	TABLE_TableIndirection["valLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\51\61\34\144", "\80\103\88\90\228\112\27\174")] = (isMulti and getMultiText()) or TABLE_TableIndirection["state%0"][stateKey] or LUAOBFUSACTOR_DECRYPT_STR_0("\109\195\246\175\237\20\75\79\16", "\97\62\166\154\202\142\96\101");
	refresh();
end
local function createMultiDropdown(p, t, k, f)
	createDropdownBase(p, t, k, f, true);
end
local function createDropdown(p, t, k, f)
	createDropdownBase(p, t, k, f, false);
end
for i, tabName in ipairs(TABLE_TableIndirection["tabsList%0"]) do
	TABLE_TableIndirection["FlatIdent_79884%0"] = 0;
	TABLE_TableIndirection["tabBtn%0"] = nil;
	TABLE_TableIndirection["indicator%0"] = nil;
	TABLE_TableIndirection["indGrad%0"] = nil;
	TABLE_TableIndirection["indGlow%0"] = nil;
	TABLE_TableIndirection["tabLbl%0"] = nil;
	TABLE_TableIndirection["page%0"] = nil;
	TABLE_TableIndirection["pageLayout%0"] = nil;
	TABLE_TableIndirection["pagePad%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_79884%0"] == 2) then
			TABLE_TableIndirection["indicator%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\130\235\199\26\56\178\215\220\4\56\144\237\205\27\49", "\93\192\132\181\126")] = 0;
			TABLE_TableIndirection["indicator%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\213\25\142\31\175\203\13\226\22\137\32\186\216\12\228\8\140\6\173\215\1\238", "\98\151\120\237\116\200\185")] = ((i == 1) and 0) or 1;
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\17\35\80\171\148\192\179\250", "\136\68\106\19\196\230\174\214"), TABLE_TableIndirection["indicator%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\216\50\73\142\217\239\201\60\95\137\201\238", "\157\155\93\59\224\188")] = UDim.new(1, 0);
			TABLE_TableIndirection["indGrad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\240\80\238\92\196\125\192\75\203\109", "\46\165\25\169"), TABLE_TableIndirection["indicator%0"]);
			TABLE_TableIndirection["indGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\23\230\187\194\148", "\183\84\137\215\173\230\93")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\13\98\244\32\68\0\30\104", "\28\74\16\149\68\45\101\112")];
			TABLE_TableIndirection["indGrad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\63\234\0\93\161\227\2\235", "\138\109\133\116\60\213")] = 90;
			TABLE_TableIndirection["FlatIdent_79884%0"] = 3;
		end
		if (TABLE_TableIndirection["FlatIdent_79884%0"] == 4) then
			TABLE_TableIndirection["tabLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\61\31\187\88\25\25\167\95", "\49\109\112\200")] = UDim2.new(0, 15, 0, 0);
			TABLE_TableIndirection["tabLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\254\223\124\85\217\188\211\203\113\90\234\188\221\208\108\78\223\188\217\208\124\71", "\206\188\190\31\62\190")] = 1;
			TABLE_TableIndirection["tabLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\125\67\104\21", "\206\41\38\16\97\222\135\99")] = tabName;
			TABLE_TableIndirection["tabLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\162\173\8\250", "\181\228\194\102\142\145\43")] = ((i == 1) and Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\18\229\3\27", "\51\84\138\109\111\182\79")][LUAOBFUSACTOR_DECRYPT_STR_0("\57\84\15\40\231\239\60\84\23\36", "\130\126\59\123\64\134")]) or Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\48\224\28\40", "\92\118\143\114")][LUAOBFUSACTOR_DECRYPT_STR_0("\115\235\215\234\28\1\121\225\199\235\8\1", "\108\52\132\163\130\125")];
			TABLE_TableIndirection["tabLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\23\174\57\242\30\225\23", "\119\155\114\214\77\161")] = 12;
			TABLE_TableIndirection["tabLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\131\38\248\173\148\44\236\182\165\112", "\217\215\67\128")] = ((i == 1) and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\144\29\180\27", "\97\196\120\204\111\91")]) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\107\184\13\170\161\91\209\15\91", "\106\63\221\117\222\236\46\165")];
			TABLE_TableIndirection["FlatIdent_79884%0"] = 5;
		end
		if (TABLE_TableIndirection["FlatIdent_79884%0"] == 5) then
			TABLE_TableIndirection["tabLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\234\176\161\171\181\255\185\176\184\131\211\176\183\171", "\237\190\213\217\223")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\140\69\238\168\158\153\76\255\187\168\181\69\248\168", "\198\216\32\150\220")][LUAOBFUSACTOR_DECRYPT_STR_0("\214\73\78\144", "\28\154\44\40\228\48\32\157")];
			TABLE_TableIndirection["tabBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\105\55\239\81\95\194\88\33\65\42", "\85\36\88\154\34\58\135\54")]:Connect(function()
				if ((4322 >= 2562) and (TABLE_TableIndirection["currentTab%0"] ~= tabName)) then
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["tabBtn%0"], TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\108\136\128\177\78\165\65\156\141\190\125\165\79\135\144\170\72\165\75\135\128\163", "\215\46\233\227\218\41")]=0.6,[LUAOBFUSACTOR_DECRYPT_STR_0("\63\117\143\229\243\15\123\153\224\240\62\123\128\225\230\78", "\148\125\20\236\142")]=Color3.fromRGB(22, 18, 32)}):Play();
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["tabLbl%0"], TweenInfo.new(0.15), {[LUAOBFUSACTOR_DECRYPT_STR_0("\57\121\38\230\131\51\171\2\110\109", "\199\109\28\94\146\192\92")]=Color3.fromRGB(200, 190, 220)}):Play();
				end
			end);
			TABLE_TableIndirection["tabBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\83\120\60\219\204\192\43\173\104\114", "\204\30\23\73\168\169\140\78")]:Connect(function()
				if ((TABLE_TableIndirection["currentTab%0"] ~= tabName) or (3637 >= 3770)) then
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["tabBtn%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\12\211\239\199\218\190\73\71\32\214\216\222\220\162\85\66\47\192\233\194\222\181", "\50\78\178\140\172\189\204\38")]=1}):Play();
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["tabLbl%0"], TweenInfo.new(0.2), {[LUAOBFUSACTOR_DECRYPT_STR_0("\238\58\216\104\220\11\127\213\45\147", "\19\186\95\160\28\159\100")]=TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\141\235\202\225\248\63\173\235\214", "\74\217\142\178\149\181")]}):Play();
				end
			end);
			TABLE_TableIndirection["page%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\72\67\144\197\45\1\215\230\124\102\144\203\44\8", "\136\27\32\226\170\65\109\190"), TABLE_TableIndirection["contentContainer%0"]);
			TABLE_TableIndirection["page%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\131\199\176\37", "\158\208\174\202\64")] = UDim2.new(1, 0, 1, 0);
			TABLE_TableIndirection["page%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\127\38\177\246\90\53\189\232\83\35\134\239\92\41\161\237\92\53\183\243\94\62", "\157\61\71\210")] = 1;
			TABLE_TableIndirection["FlatIdent_79884%0"] = 6;
		end
		if (1 == TABLE_TableIndirection["FlatIdent_79884%0"]) then
			Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\205\117\82\10\161\95\245\234", "\144\152\60\17\101\211\49"), TABLE_TableIndirection["tabBtn%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\237\69\248\233\189\211\252\75\238\238\173\210", "\161\174\42\138\135\216")] = UDim.new(0, 9);
			TABLE_TableIndirection["tabBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\238\180\3\208\222\156\15\211\206\189\4\196\204\182\30\211", "\160\173\216\106")] = true;
			TABLE_TableIndirection["indicator%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\175\107\112\87\186", "\147\233\25\17\58\223"), TABLE_TableIndirection["tabBtn%0"]);
			TABLE_TableIndirection["indicator%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\125\37\26\30", "\86\46\76\96\123\176")] = UDim2.new(0, 3, 0, ((i == 1) and 18) or 0);
			TABLE_TableIndirection["indicator%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\141\163\109\229\177\73\131\40", "\70\221\204\30\140\197\32\236")] = UDim2.new(0, 2, 0.5, -9);
			TABLE_TableIndirection["indicator%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\193\52\84\254\228\39\88\224\237\49\116\250\239\58\69\166", "\149\131\85\55")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\56\190\48\174\8\78", "\59\121\221\83\203\102\58\148")];
			TABLE_TableIndirection["FlatIdent_79884%0"] = 2;
		end
		if (TABLE_TableIndirection["FlatIdent_79884%0"] == 7) then
			TABLE_TableIndirection["pageLayout%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\149\21\62\172\56\85\162", "\59\197\116\90\200\81")] = UDim.new(0, 9);
			TABLE_TableIndirection["pageLayout%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\213\167\253\203\36\242\166\251\195\50\220\164\230\197\48\240\173\225\214", "\94\157\200\143\162")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\214\52\225\171\228\52\253\182\255\55\210\174\247\60\253\175\251\53\231", "\194\158\91\147")][LUAOBFUSACTOR_DECRYPT_STR_0("\143\23\21\166\221\231", "\149\204\114\123\210\184")];
			TABLE_TableIndirection["pagePad%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\246\21\77\255\62\222\67\205\59", "\42\163\92\29\158\90\186"), TABLE_TableIndirection["page%0"]);
			TABLE_TableIndirection["pagePad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\241\39\67\30\44\196\56\245\41\87", "\95\161\70\39\122\69\170")] = UDim.new(0, 14);
			TABLE_TableIndirection["pagePad%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\131\27\241\41\78\202\32\145\21\225\57\72\201", "\71\211\122\149\77\39\164")] = UDim.new(0, 14);
			tabFrames[tabName] = TABLE_TableIndirection["page%0"];
			TABLE_TableIndirection["FlatIdent_79884%0"] = 8;
		end
		if (TABLE_TableIndirection["FlatIdent_79884%0"] == 3) then
			TABLE_TableIndirection["indGlow%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\18\174\192\194\151\40\140\246", "\229\71\231\147\182"), TABLE_TableIndirection["indicator%0"]);
			TABLE_TableIndirection["indGlow%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\163\197\221\194\146", "\173\224\170\177")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\89\50\142\24\173\102", "\155\24\81\237\125\195\18")];
			TABLE_TableIndirection["indGlow%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\60\43\65\85\179\72\85\27\48", "\48\104\67\40\54\216\38")] = 4;
			TABLE_TableIndirection["indGlow%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\51\65\56\251\20\67\56\231\2\93\58\236", "\149\103\51\89")] = ((i == 1) and 0.5) or 1;
			TABLE_TableIndirection["tabLbl%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\64\30\152\81\68\4\137\113", "\236\29\37\102"), TABLE_TableIndirection["tabBtn%0"]);
			TABLE_TableIndirection["tabLbl%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\132\42\152\54", "\55\215\67\226\83")] = UDim2.new(1, -18, 1, 0);
			TABLE_TableIndirection["FlatIdent_79884%0"] = 4;
		end
		if (TABLE_TableIndirection["FlatIdent_79884%0"] == 8) then
			tabButtons[tabName] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\231\107\195", "\182\133\31\173\228\212")]=TABLE_TableIndirection["tabBtn%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\34\12\224", "\191\75\98\132\212\178\47\193")]=TABLE_TableIndirection["indicator%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\179\69\228", "\159\223\39\136\135\104\170")]=TABLE_TableIndirection["tabLbl%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\92\251\66\236", "\233\59\151\45\155\40\127")]=TABLE_TableIndirection["indGlow%0"]};
			TABLE_TableIndirection["tabBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\139\15\235\87\163\34\235\80\178\15\240\21\133\12\247\71\173", "\36\198\96\158")]:Connect(function()
				if (TABLE_TableIndirection["currentTab%0"] ~= tabName) then
				else
					return;
				end
				TABLE_TableIndirection["prevTab%0"] = TABLE_TableIndirection["currentTab%0"];
				TABLE_TableIndirection["currentTab%0"] = tabName;
				for name, data in pairs(tabButtons) do
					TABLE_TableIndirection["sel%0"] = name == tabName;
					TABLE_TableIndirection["TweenService%0"]:Create(data.ind, TweenInfo.new(0.35, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\1\206\25\8\112\248\36\19\61\195\15", "\103\68\175\106\97\30\159\119")].Quint), {[LUAOBFUSACTOR_DECRYPT_STR_0("\5\236\31\10\32\255\19\20\41\233\40\19\38\227\15\17\38\255\25\15\36\244", "\97\71\141\124")]=((TABLE_TableIndirection["sel%0"] and 0) or 1),[LUAOBFUSACTOR_DECRYPT_STR_0("\152\208\168\59", "\81\203\185\210\94")]=UDim2.new(0, 3, 0, (TABLE_TableIndirection["sel%0"] and 18) or 0)}):Play();
					TABLE_TableIndirection["TweenService%0"]:Create(data.glow, TweenInfo.new(0.35), {[LUAOBFUSACTOR_DECRYPT_STR_0("\229\202\45\163\71\66\177\2\212\214\47\180", "\112\177\184\76\205\52\50\208")]=((TABLE_TableIndirection["sel%0"] and 0.5) or 1)}):Play();
					TABLE_TableIndirection["TweenService%0"]:Create(data.btn, TweenInfo.new(0.28), {[LUAOBFUSACTOR_DECRYPT_STR_0("\155\221\81\166\167\171\211\71\163\164\154\211\94\162\178\234", "\192\217\188\50\205")]=((TABLE_TableIndirection["sel%0"] and Color3.fromRGB(26, 20, 38)) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\39\76\85\50\205\23\66\67\55\206", "\170\101\45\54\89")]),[LUAOBFUSACTOR_DECRYPT_STR_0("\129\169\3\94\164\186\15\64\173\172\52\71\162\166\19\69\162\186\5\91\160\177", "\53\195\200\96")]=((TABLE_TableIndirection["sel%0"] and 0) or 1)}):Play();
					TABLE_TableIndirection["TweenService%0"]:Create(data.lbl, TweenInfo.new(0.25), {[LUAOBFUSACTOR_DECRYPT_STR_0("\153\88\38\44\161\65\161\82\44\107", "\46\205\61\94\88\226")]=((TABLE_TableIndirection["sel%0"] and TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\61\193\1\183", "\195\105\164\121")]) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\104\188\196\91\46\254\72\188\216", "\139\60\217\188\47\99")])}):Play();
					data[LUAOBFUSACTOR_DECRYPT_STR_0("\6\255\124", "\120\106\157\16\149\118")][LUAOBFUSACTOR_DECRYPT_STR_0("\82\208\36\175", "\172\20\191\74\219\222\217")] = (TABLE_TableIndirection["sel%0"] and Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\21\204\137\3", "\21\83\163\231\119")][LUAOBFUSACTOR_DECRYPT_STR_0("\26\27\229\40\190\253\165\212\49\16", "\187\93\116\145\64\223\144\231")]) or Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\83\31\13\162", "\76\21\112\99\214\51")][LUAOBFUSACTOR_DECRYPT_STR_0("\209\185\223\45\139\160\219\179\207\44\159\160", "\205\150\214\171\69\234")];
				end
				tabFrames[TABLE_TableIndirection["prevTab%0"]][LUAOBFUSACTOR_DECRYPT_STR_0("\225\224\244\71\213\229\226", "\46\183\137\135")] = false;
				tabFrames[tabName][LUAOBFUSACTOR_DECRYPT_STR_0("\192\64\70\176\84\250\76", "\54\150\41\53\217")] = true;
			end);
			break;
		end
		if (0 == TABLE_TableIndirection["FlatIdent_79884%0"]) then
			TABLE_TableIndirection["tabBtn%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\73\93\21\16\198\222\105\76\2\10", "\171\29\56\109\100\132"), TABLE_TableIndirection["sidebar%0"]);
			TABLE_TableIndirection["tabBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\198\235\63\215", "\178\149\130\69")] = UDim2.new(1, -16, 0, 36);
			TABLE_TableIndirection["tabBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\81\77\231\31\123\248\124\89\234\16\95\229\127\67\246\71", "\138\19\44\132\116\28")] = ((i == 1) and Color3.fromRGB(26, 20, 38)) or TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\237\223\58\209\200\204\54\207\193\218", "\186\175\190\89")];
			TABLE_TableIndirection["tabBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\231\6\54\171\175\215\8\32\174\172\241\21\52\174\187\213\6\39\165\166\198\30", "\200\165\103\85\192")] = ((i == 1) and 0) or 1;
			TABLE_TableIndirection["tabBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\154\224\171\79", "\50\206\133\211\59\37\86\111")] = "";
			TABLE_TableIndirection["tabBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\237\224\28\16\23\213\206\23\27\7\211", "\98\161\129\101\127")] = i;
			TABLE_TableIndirection["FlatIdent_79884%0"] = 1;
		end
		if (6 == TABLE_TableIndirection["FlatIdent_79884%0"]) then
			TABLE_TableIndirection["page%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\175\235\93\196\87\111\119\37\151\225\127\201\74\120\72", "\76\237\132\47\160\50\29\36")] = 0;
			TABLE_TableIndirection["page%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\136\209\162\212\183\222\146\218\169\230\184\210\184\217\190\222\168\193", "\187\219\178\208")] = 2;
			TABLE_TableIndirection["page%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\127\208\146\209\12\193\110\210\146\247\13\204\75\214\163\209\12\194\94\128", "\173\44\179\224\190\96")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\228\166\117\88\141\209", "\227\165\197\22\61")];
			TABLE_TableIndirection["page%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\250\64\77\161\206\69\91", "\200\172\41\62")] = i == 1;
			TABLE_TableIndirection["page%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\44\249\210\190\165\12\248\207\178\139\12\226\208\176\187\62\229\220\180", "\200\109\140\166\209")] = Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\227\80\205\95\207\68\205\89\193\118\208\74\199", "\48\162\37\185")]['Y'];
			TABLE_TableIndirection["pageLayout%0"] = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\27\40\56\163\84\58\45\21\179\72\59\21", "\39\78\97\116\202"), TABLE_TableIndirection["page%0"]);
			TABLE_TableIndirection["FlatIdent_79884%0"] = 7;
		end
	end
end
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\147\225\248\75", "\69\219\142\149\46\130")], LUAOBFUSACTOR_DECRYPT_STR_0("\238\73\22\71\57\203\8\58\91\53\140\8\92\14\119\238\65\8\79\37\222\77\82\98\62\194\77\19\73\50", "\87\172\40\114\46"));
createLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\94\226\239\189", "\101\22\141\130\216")], LUAOBFUSACTOR_DECRYPT_STR_0("\87\60\249\175\70\118\98\32\226\174\7\55\83\26\221\236\11\68\98\40\227\164\11\68\97\32\249\163\67\114\100\105\171\224\70\120\100\44\163", "\23\22\73\141\192\43"));
createDivider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\197\226\234\199", "\153\141\141\135\162")]);
createLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\28\24\86\248", "\55\84\119\59\157\192\169")], LUAOBFUSACTOR_DECRYPT_STR_0("\10\91\122\204\232\181\67\16\23\20\61\134\186\240\67\23\55\83\117\223\164\131\11\44\56\64", "\69\94\52\29\171\132\208\99"));
createLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\241\24\124\166", "\136\185\119\17\195")], LUAOBFUSACTOR_DECRYPT_STR_0("\10\217\22\183\166\134\44\200\90\227\246\198\126\142\90\242\251\215\126\156\35\242\249\201\11", "\233\94\188\122\210\214"));
createDivider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\124\28\196\129", "\183\52\115\169\228\220\220")]);
createLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\248\81\234\218", "\221\176\62\135\191\166\37\127")], LUAOBFUSACTOR_DECRYPT_STR_0("\43\42\83\243\1\34\72\231\13\101\68\250\29\55\29\243\13\36\73\224\26\32\78\181\1\43\29\240\9\38\85\181\28\36\95\187", "\149\104\69\61"));
createLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\115\218\15\217", "\188\59\181\98")], LUAOBFUSACTOR_DECRYPT_STR_0("\137\161\56\162\123\27\231\91\171\187\34\171\63\15\245\13\175\238\55\170\118\92\230\30\185\186\57\182\119\92\251\21\234\188\51\174\125\21\250\85", "\123\202\206\86\196\18\124\148"));
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\83\248\150\26\165\222\120\229\127", "\151\18\141\226\117\133\152\25")], LUAOBFUSACTOR_DECRYPT_STR_0("\94\172\182\236\49\114\177\185\165\25\116", "\119\19\195\212\204"));
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\59\213\252\221\70\14\178\8\205", "\211\122\160\136\178\102\72")], LUAOBFUSACTOR_DECRYPT_STR_0("\100\5\159\113\73\46\228\224\72\80\166\113\11\27", "\146\37\112\235\30\105\104\133"), LUAOBFUSACTOR_DECRYPT_STR_0("\100\160\85\120\103\68\167\76\68\88\86\161\68\122", "\33\37\213\33\23"), function(val)
	if (val or (2379 > 4578)) then
		TABLE_TableIndirection["FlatIdent_1F1FE%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_1F1FE%0"] == 3) then
				if TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\242\4\213\135\33\219\213", "\190\166\107\178\224\77")][LUAOBFUSACTOR_DECRYPT_STR_0("\213\153\66\31\64\245\133\82", "\18\148\236\54\112")] then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\181\191\241\56\51\132\163", "\95\225\208\150\95")][LUAOBFUSACTOR_DECRYPT_STR_0("\141\96\243\134\158\116\238\141", "\233\204\21\135")]();
				end
				if TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\154\143\200\213\211\248\189", "\157\206\224\175\178\191")][LUAOBFUSACTOR_DECRYPT_STR_0("\138\99\164\191\5\214\52\229\191\68\177\185\50", "\151\203\22\208\208\86\162\85")] then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\119\166\138\177\139\120\55", "\68\35\201\237\214\231\29")][LUAOBFUSACTOR_DECRYPT_STR_0("\126\9\242\49\108\8\231\44\75\46\231\55\91", "\94\63\124\134")]();
				end
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_1F1FE%0"] == 2) then
				if (TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\192\214\72\124\248\220\92", "\27\148\185\47")][LUAOBFUSACTOR_DECRYPT_STR_0("\99\46\233\33\147\65\201\104\75\40\238\39\172\121", "\37\34\91\157\78\195\23\140")] or (483 > 743)) then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\40\78\238\133\118\54\15", "\83\124\33\137\226\26")][LUAOBFUSACTOR_DECRYPT_STR_0("\248\76\243\207\229\239\124\202\201\198\202\80\232\206", "\181\185\57\135\160")]();
				end
				if TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\237\15\229\53\2\241\179", "\192\185\96\130\82\110\148")][LUAOBFUSACTOR_DECRYPT_STR_0("\102\196\0\227\19\53\14\94\212\6\202\34\43\2", "\111\39\177\116\140\67\89")] then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\65\137\61\3\219\167\102", "\194\21\230\90\100\183")][LUAOBFUSACTOR_DECRYPT_STR_0("\226\242\8\247\4\165\44\218\226\14\222\53\187\32", "\77\163\135\124\152\84\201")]();
				end
				TABLE_TableIndirection["FlatIdent_1F1FE%0"] = 3;
			end
			if (TABLE_TableIndirection["FlatIdent_1F1FE%0"] == 1) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\126\27\59\224\30\244\86\10", "\149\63\110\79\143\76")] = false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\215\147\180\190\54\42\224\228\146\146\176\12\58", "\129\150\230\192\209\101\94")] = false;
				TABLE_TableIndirection["FlatIdent_1F1FE%0"] = 2;
			end
			if (TABLE_TableIndirection["FlatIdent_1F1FE%0"] == 0) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\133\106\91\9\148\73\106\43\173\108\92\15\171\113", "\102\196\31\47")] = false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\206\35\36\119\114\78\172\74\234\36\22\121\80\79", "\51\143\86\80\24\34\34\205")] = false;
				TABLE_TableIndirection["FlatIdent_1F1FE%0"] = 1;
			end
		end
	end
	if ((2454 > 578) and val) then
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\168\14\224\234\11\3\129\155\22", "\224\233\123\148\133\43\69"), LUAOBFUSACTOR_DECRYPT_STR_0("\228\44\120\147\195\61\125\193\246\45\109\142\151\30\120\147\218\118", "\225\183\88\25"), false);
	else
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\32\228\167\61\253\38\0\227\190", "\96\97\145\211\82\221"), LUAOBFUSACTOR_DECRYPT_STR_0("\246\253\91\162\28\84\193\169\117\167\24\94\133\207\85\160\1\31", "\49\165\137\52\210\108"), false);
	end
end);
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\111\51\9\185\14\0\28\164\67", "\214\46\70\125")], LUAOBFUSACTOR_DECRYPT_STR_0("\247\214\159\181\150\243\189\159\150\238\130\169\197\202\132\180", "\218\182\163\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\140\55\185\39\29\155\7\128\33\62\190\43\162\38", "\77\205\66\205\72"), function(val)
	if ((930 < 4458) and val) then
		TABLE_TableIndirection["FlatIdent_51FCC%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_51FCC%0"] == 3) then
				if (TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\145\180\248\89\143\200\65", "\85\197\219\159\62\227\173\50")][LUAOBFUSACTOR_DECRYPT_STR_0("\15\227\63\0\4\206\90\42", "\51\78\150\75\111\86\175")] or (4762 <= 861)) then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\8\130\204\66\48\136\216", "\37\92\237\171")][LUAOBFUSACTOR_DECRYPT_STR_0("\108\204\222\12\124\76\208\206", "\46\45\185\170\99")]();
				end
				if (TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\39\196\200\176\250\22\216", "\150\115\171\175\215")][LUAOBFUSACTOR_DECRYPT_STR_0("\28\144\206\170\178\27\66\54\41\183\219\172\133", "\68\93\229\186\197\225\111\35")] or (1412 == 4264)) then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\64\15\235\129\238\101", "\22\155\47\104\140\237\139")][LUAOBFUSACTOR_DECRYPT_STR_0("\193\61\65\116\244\201\77\242\60\103\122\206\217", "\44\128\72\53\27\167\189")]();
				end
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_51FCC%0"] == 0) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\206\4\254\53\48\236\223\239\220\8\249\46\19\224", "\130\143\113\138\90\118\141\173")] = false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\167\194\40\34\56\87\135\206\57\63\46\90\148\218", "\59\230\183\92\77\104")] = false;
				TABLE_TableIndirection["FlatIdent_51FCC%0"] = 1;
			end
			if (TABLE_TableIndirection["FlatIdent_51FCC%0"] == 1) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\200\82\244\246\3\246\224\67", "\151\137\39\128\153\81")] = false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\91\216\250\81\204\232\89\62\110\255\239\87\251", "\76\26\173\142\62\159\156\56")] = false;
				TABLE_TableIndirection["FlatIdent_51FCC%0"] = 2;
			end
			if (TABLE_TableIndirection["FlatIdent_51FCC%0"] == 2) then
				if ((662 <= 972) and TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\129\61\5\140\235\6\68", "\55\213\82\98\235\135\99")][LUAOBFUSACTOR_DECRYPT_STR_0("\49\170\21\121\135\124\2\178\50\111\178\105\21\178", "\29\112\223\97\22\193")]) then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\115\199\235\24\161\66\219", "\205\39\168\140\127")][LUAOBFUSACTOR_DECRYPT_STR_0("\8\52\204\90\57\44\59\44\235\76\12\57\44\44", "\77\73\65\184\53\127")]();
				end
				if ((4370 == 4370) and TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\11\114\175\117\62\245\165", "\214\95\29\200\18\82\144")][LUAOBFUSACTOR_DECRYPT_STR_0("\87\229\84\90\214\133\119\233\69\71\192\136\100\253", "\233\22\144\32\53\134")]) then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\11\27\34\32\59\93\44", "\56\95\116\69\71\87")][LUAOBFUSACTOR_DECRYPT_STR_0("\164\106\210\76\136\240\71\156\122\212\101\185\238\75", "\38\229\31\166\35\216\156")]();
				end
				TABLE_TableIndirection["FlatIdent_51FCC%0"] = 3;
			end
		end
	end
	if (val or (3168 < 2153)) then
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\135\98\195\248\230\71\225\210", "\151\198\23\183"), LUAOBFUSACTOR_DECRYPT_STR_0("\48\83\63\195\53\186\200\67\119\8\244\97\146\197\16\84\55\222\47\255\224\12\72\46\159", "\172\99\39\94\177\65\223"), false);
	else
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\102\9\45\118\233\112\153\100", "\33\39\124\89\25\201\32\207"), LUAOBFUSACTOR_DECRYPT_STR_0("\27\38\88\56\174\45\54\23\24\136\13\114\122\33\173\59\59\88\38\173\102", "\222\72\82\55\72"), false);
	end
end);
local function getCleanMobName(rawName)
	TABLE_TableIndirection["FlatIdent_7268B%0"] = 0;
	TABLE_TableIndirection["clean%0"] = nil;
	TABLE_TableIndirection["base%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_7268B%0"] == 1) then
			if ((TABLE_TableIndirection["base%0"] and TABLE_TableIndirection["base%0"]:match(LUAOBFUSACTOR_DECRYPT_STR_0("\124\108", "\184\89\63\165"))) or (4976 < 1332)) then
				TABLE_TableIndirection["clean%0"] = TABLE_TableIndirection["base%0"];
			end
			return string.match(TABLE_TableIndirection["clean%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\50\157\107\70\229\157\238\254\73\203\50\72", "\215\108\184\24\108\205\179\195")) or TABLE_TableIndirection["clean%0"];
		end
		if (TABLE_TableIndirection["FlatIdent_7268B%0"] == 0) then
			TABLE_TableIndirection["clean%0"] = tostring(rawName):gsub(LUAOBFUSACTOR_DECRYPT_STR_0("\223\48\72", "\37\129\21\102\202"), ""):gsub(LUAOBFUSACTOR_DECRYPT_STR_0("\180\7\85\187\180\114\60\190\187\121\125\230\180\1", "\205\145\92\25"), ""):gsub(LUAOBFUSACTOR_DECRYPT_STR_0("\26\123\153\253\26\125\240\248\21\118\177\160\26\122", "\139\63\83\213"), ""):gsub(LUAOBFUSACTOR_DECRYPT_STR_0("\51\2\105\114\49\241\94\90\16\103", "\116\127\116\76\92\20\130"), ""):gsub(LUAOBFUSACTOR_DECRYPT_STR_0("\205\249\16\22\173\66\132\135\47\89\254\67\195\135\1", "\39\232\162\92\115\219"), "");
			TABLE_TableIndirection["base%0"] = string.match(TABLE_TableIndirection["clean%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\20\191\16\8\99\178\73\0\61\178\73\0\61\178\73\0\61\179", "\37\74\151\62"));
			TABLE_TableIndirection["FlatIdent_7268B%0"] = 1;
		end
	end
end
local function getAvailableMobs()
	TABLE_TableIndirection["FlatIdent_15C34%0"] = 0;
	TABLE_TableIndirection["mobNames%0"] = nil;
	while true do
		if (1 == TABLE_TableIndirection["FlatIdent_15C34%0"]) then
			for name, _ in pairs(TABLE_TableIndirection["globalSeenMobs%0"]) do
				table.insert(TABLE_TableIndirection["mobNames%0"], name);
			end
			for k, v in pairs(TABLE_TableIndirection["state%0"].SelectedMobs) do
				if (v and not TABLE_TableIndirection["globalSeenMobs%0"][k]) then
					TABLE_TableIndirection["FlatIdent_4185D%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_4185D%0"] == 0) then
							TABLE_TableIndirection["globalSeenMobs%0"][k] = true;
							table.insert(TABLE_TableIndirection["mobNames%0"], k);
							break;
						end
					end
				end
			end
			TABLE_TableIndirection["FlatIdent_15C34%0"] = 2;
		end
		if (TABLE_TableIndirection["FlatIdent_15C34%0"] == 0) then
			TABLE_TableIndirection["mobNames%0"] = {};
			pcall(function()
				for _, mob in ipairs(workspace[LUAOBFUSACTOR_DECRYPT_STR_0("\150\51\53\35", "\66\218\90\67\70\54")]:GetChildren()) do
					if ((4628 == 4628) and mob:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\219\36\204\77\188", "\53\150\75\168\40\208\72\229")) and mob:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\207\172\77\140\33\232\176\68\191\32\232\173\112\140\61\243", "\79\135\217\32\237")) and mob:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\152\21\237\79\1\33\185\4", "\78\208\96\128\46\111"))) then
						if (((string.lower(mob.Name) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\34\240\87\15\239\250", "\231\81\149\37\121\138\136\52")) and not TABLE_TableIndirection["Players%0"]:GetPlayerFromCharacter(mob)) or (54 == 395)) then
							TABLE_TableIndirection["globalSeenMobs%0"][getCleanMobName(mob.Name)] = true;
						end
					end
				end
			end);
			TABLE_TableIndirection["FlatIdent_15C34%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_15C34%0"] == 2) then
			table.sort(TABLE_TableIndirection["mobNames%0"], function(a, b)
				if (a ~= LUAOBFUSACTOR_DECRYPT_STR_0("\116\123\48", "\21\53\23\92\225")) then
				else
					return true;
				end
				if ((82 == 82) and (b == LUAOBFUSACTOR_DECRYPT_STR_0("\203\21\87", "\79\138\121\59\227\201\195\177"))) then
					return false;
				end
				return a < b;
			end);
			return TABLE_TableIndirection["mobNames%0"];
		end
	end
end
createMultiDropdown(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\44\194\232\24\240\245\76\31\218", "\45\109\183\156\119\208\179")], LUAOBFUSACTOR_DECRYPT_STR_0("\6\248\132\233\54\233\200\193\58\255\192\255\124", "\140\85\157\232"), LUAOBFUSACTOR_DECRYPT_STR_0("\52\206\1\118\4\223\8\119\42\196\15\96", "\19\103\171\109"), getAvailableMobs);
createDropdown(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\192\198\109\113\161\245\120\108\236", "\30\129\179\25")], LUAOBFUSACTOR_DECRYPT_STR_0("\55\241\182\122\192\41\233\2\249\176\126\143\23", "\134\113\144\196\23\224\121"), LUAOBFUSACTOR_DECRYPT_STR_0("\204\173\145\92\203\185\151\94\221\183\150\90\249\177\138\93", "\51\141\216\229"), {LUAOBFUSACTOR_DECRYPT_STR_0("\152\206\49\174\173", "\193\218\171\93"),LUAOBFUSACTOR_DECRYPT_STR_0("\57\117\60\166\72", "\45\120\23\83\208"),LUAOBFUSACTOR_DECRYPT_STR_0("\100\15\234\241\242", "\134\34\125\133\159"),LUAOBFUSACTOR_DECRYPT_STR_0("\167\69\216\43", "\63\229\36\187\64\58\212")});
createSlider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\100\87\37\195\5\100\48\222\72", "\172\37\34\81")], LUAOBFUSACTOR_DECRYPT_STR_0("\124\114\40\172\224\4\91\126\123\190\243\5\85\59\22\183\227\25", "\106\56\27\91\216\129"), LUAOBFUSACTOR_DECRYPT_STR_0("\0\227\250\246\4\207\51\251\202\240\49\218\32\248\237\252", "\174\65\150\142\153\66"), 1, 20);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\12\151\7\142\67\37\44\144\30", "\99\77\226\115\225\99")], LUAOBFUSACTOR_DECRYPT_STR_0("\178\176\39\245\143\13\133\165\58\248\193\57\147", "\94\224\209\78\145\175"));
createDropdown(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\208\98\17\220\232\48\117\34\252", "\80\145\23\101\179\200\118\20")], LUAOBFUSACTOR_DECRYPT_STR_0("\193\113\94\115\143\192\178\70\83\127\136", "\180\146\20\50\22\236"), LUAOBFUSACTOR_DECRYPT_STR_0("\97\142\245\229\224\70\142\253\210\226\91\143", "\131\50\235\153\128"), {LUAOBFUSACTOR_DECRYPT_STR_0("\212\70\169\125", "\184\159\47\219\28\28\70"),LUAOBFUSACTOR_DECRYPT_STR_0("\19\214\201", "\29\87\191\166"),LUAOBFUSACTOR_DECRYPT_STR_0("\197\87\167\9\90\241", "\158\143\56\211\104\40"),LUAOBFUSACTOR_DECRYPT_STR_0("\127\184\185\47\172", "\192\62\206\221\64")});
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\208\43\88\252\127\215\63\94\254", "\95\145\94\44\147")], LUAOBFUSACTOR_DECRYPT_STR_0("\192\179\17\60\161\149\17\50\243\178\69\1\224\175\1", "\83\129\198\101"), LUAOBFUSACTOR_DECRYPT_STR_0("\250\31\200\61\149\207\11\206\38\148\218\3\216", "\198\187\106\188\82"), function(val)
	if (val or (581 < 282)) then
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\3\15\226\50\157\8\42\43\30", "\75\66\122\150\93\189\90"), LUAOBFUSACTOR_DECRYPT_STR_0("\215\91\135\229\179\225\70\159\236\254\240\70\203\253\252\160\67\158\236\230\229\18\141\230\225\160\64\138\224\247\243\28", "\147\128\50\235\137"), false);
	end
end);
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\235\209\222\204\232\153\33\216\201", "\64\170\164\170\163\200\223")], LUAOBFUSACTOR_DECRYPT_STR_0("\35\175\177\85\192\78\200\11\190\229\18\163\112\204\3\168\229\119\143\126\218\75", "\169\98\218\197\58\224\28"), LUAOBFUSACTOR_DECRYPT_STR_0("\209\8\241\252\248\213\194\244", "\171\144\125\133\147\170\180"), function(val)
	TABLE_TableIndirection["FlatIdent_4FBC5%0"] = 0;
	while true do
		if (0 == TABLE_TableIndirection["FlatIdent_4FBC5%0"]) then
			if val then
				TABLE_TableIndirection["FlatIdent_37395%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_37395%0"] == 0) then
						TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\128\102\185\127\213\80\99\172\64\180\99\231\84\124", "\17\193\19\205\16\147\49")] = false;
						TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\213\96\95\73\254\26\209\88\66\85\221\37\251\123", "\76\148\21\43\38\174")] = false;
						TABLE_TableIndirection["FlatIdent_37395%0"] = 1;
					end
					if (TABLE_TableIndirection["FlatIdent_37395%0"] == 2) then
						if ((1152 == 1152) and TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\225\232\224\31\217\226\244", "\120\181\135\135")][LUAOBFUSACTOR_DECRYPT_STR_0("\199\230\19\198\214\197\34\228\239\224\20\192\233\253", "\169\134\147\103")]) then
							TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\150\224\26\115\137\167\252", "\229\194\143\125\20")][LUAOBFUSACTOR_DECRYPT_STR_0("\165\166\220\236\180\133\237\206\141\160\219\234\139\189", "\131\228\211\168")]();
						end
						if ((1896 <= 3422) and TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\118\222\66\38\10\237\231", "\196\34\177\37\65\102\136\148")][LUAOBFUSACTOR_DECRYPT_STR_0("\197\158\3\122\237\119\82\166\225\153\49\116\207\118", "\223\132\235\119\21\189\27\51")]) then
							TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\45\81\254\251\116\218\87", "\36\121\62\153\156\24\191")][LUAOBFUSACTOR_DECRYPT_STR_0("\9\29\244\90\17\123\41\17\229\71\7\118\58\5", "\23\72\104\128\53\65")]();
						end
						break;
					end
					if (1 == TABLE_TableIndirection["FlatIdent_37395%0"]) then
						TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\224\214\176\40\241\207\165\62\196\209\130\38\211\206", "\71\161\163\196")] = false;
						if (TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\7\132\139\28\35\177\32", "\212\83\235\236\123\79")][LUAOBFUSACTOR_DECRYPT_STR_0("\105\2\49\95\25\165\90\26\22\73\44\176\77\26", "\196\40\119\69\48\95")] or (4609 < 2495)) then
							TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\106\206\92\20\210\91\210", "\190\62\161\59\115")][LUAOBFUSACTOR_DECRYPT_STR_0("\222\43\36\84\44\216\38\242\13\41\72\30\220\57", "\84\159\94\80\59\106\185")]();
						end
						TABLE_TableIndirection["FlatIdent_37395%0"] = 2;
					end
				end
			end
			if val then
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\126\23\94\42\197\109\3\67\33", "\229\63\98\42\69"), LUAOBFUSACTOR_DECRYPT_STR_0("\236\15\94\92\41\243\210\159\24\83\75\60\228\223\209\28\31\124\60\255\210\159\54\80\76\46\184", "\182\191\123\63\46\93\150"), false);
			else
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\207\102\51\95\236\34\164\31\234", "\118\142\19\71\48\204\112\197"), LUAOBFUSACTOR_DECRYPT_STR_0("\108\95\66\52\146\19\91\11\108\49\150\25\31\121\76\45\134\88", "\118\63\43\45\68\226"), false);
			end
			break;
		end
	end
end);
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\96\246\88\163\247\98\161\83\238", "\192\33\131\44\204\215\36")], LUAOBFUSACTOR_DECRYPT_STR_0("\223\250\153\182\190\221\136\173\236\246\205\241\206\227\140\160\190\206\138\184\247\225\196", "\217\158\143\237"), LUAOBFUSACTOR_DECRYPT_STR_0("\93\83\86\54\107\219\5\110\95\112\56\80\218", "\113\28\38\34\89\57\190"));
createSlider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\8\174\165\95\194\15\186\163\93", "\226\73\219\209\48")], LUAOBFUSACTOR_DECRYPT_STR_0("\153\92\229\238\234\236\187\177\77\177\197\163\205\174\185\71\242\228", "\218\216\41\145\129\202\190"), LUAOBFUSACTOR_DECRYPT_STR_0("\137\12\95\227\43\124\161\29\111\229\10\105\169\23\72\233", "\29\200\121\43\140\121"), 1, 20);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\208\27\32", "\92\128\77\112\36\50\105\41")], LUAOBFUSACTOR_DECRYPT_STR_0("\75\88\15\187\126\70\78\132\122\70\3", "\194\27\52\110"));
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\197\30\252", "\197\149\72\172\78\56\63\191")], LUAOBFUSACTOR_DECRYPT_STR_0("\115\149\96\114\18\176\120\124\75\133\102\61\116\129\102\112", "\29\50\224\20"), LUAOBFUSACTOR_DECRYPT_STR_0("\215\75\238\58\52\249\214\50\243\76\220\52\22\248", "\75\150\62\154\85\100\149\183"), function(val)
	TABLE_TableIndirection["FlatIdent_28DC7%0"] = 0;
	while true do
		if (TABLE_TableIndirection["FlatIdent_28DC7%0"] == 0) then
			if val then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\93\3\244\208\102\220\2\113\37\249\204\84\216\29", "\112\28\118\128\191\32\189")] = false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\33\251\49\45\16\240\37\195\44\49\51\207\15\224", "\166\96\142\69\66\64")] = false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\17\211\254\28\109\47\57\194", "\78\80\166\138\115\63")] = false;
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\111\28\191\31\98\90\8\185\4\99\79\0\175", "\49\46\105\203\112")] = false;
				if TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\153\118\33\122\137\11\190", "\110\205\25\70\29\229")][LUAOBFUSACTOR_DECRYPT_STR_0("\132\208\26\192\10\244\8\242\150\220\29\219\41\248", "\159\197\165\110\175\76\149\122")] then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\236\118\2\217\55\22\203", "\115\184\25\101\190\91")][LUAOBFUSACTOR_DECRYPT_STR_0("\90\38\26\195\93\50\28\193\72\42\29\216\126\62", "\172\27\83\110")]();
				end
				if TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\3\73\134\191\59\67\146", "\216\87\38\225")][LUAOBFUSACTOR_DECRYPT_STR_0("\86\178\35\56\103\29\124\90\174\36\36\94\36\87", "\57\23\199\87\87\55\75")] then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\35\247\47\174\215\18\235", "\187\119\152\72\201")][LUAOBFUSACTOR_DECRYPT_STR_0("\128\229\220\247\145\198\237\213\168\227\219\241\174\254", "\152\193\144\168")]();
				end
				if TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\78\172\68\175\54\94\177", "\194\26\195\35\200\90\59")][LUAOBFUSACTOR_DECRYPT_STR_0("\226\193\9\224\40\64\239\199", "\134\163\180\125\143\122\33")] then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\245\39\76\234\205\45\88", "\141\161\72\43")][LUAOBFUSACTOR_DECRYPT_STR_0("\170\102\166\6\33\218\130\119", "\187\235\19\210\105\115")]();
				end
				if TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\144\48\63\250\64\161\44", "\44\196\95\88\157")][LUAOBFUSACTOR_DECRYPT_STR_0("\210\17\150\131\185\91\242\22\150\190\139\70\247", "\47\147\100\226\236\234")] then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\231\220\113\9\223\214\101", "\110\179\179\22")][LUAOBFUSACTOR_DECRYPT_STR_0("\250\194\87\117\99\35\237\107\207\229\66\115\84", "\25\187\183\35\26\48\87\140")]();
				end
			end
			if val then
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\77\233\110", "\22\29\191\62"), LUAOBFUSACTOR_DECRYPT_STR_0("\187\238\206\38\24\177\140\186\238\33\24\187\200\202\195\53\21\177\154\186\233\53\30\185\198", "\212\232\154\175\84\108"), false);
			else
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\10\42\252", "\42\90\124\172\153\163\76\236"), LUAOBFUSACTOR_DECRYPT_STR_0("\27\158\183\104\56\143\188\56\9\159\172\119\104\186\180\121\49\143\170\56\14\139\170\117\102", "\24\72\234\216"), false);
			end
			break;
		end
	end
end);
local function getAvailablePlayers()
	TABLE_TableIndirection["list%0"] = {};
	for _, p in ipairs(TABLE_TableIndirection["Players%0"]:GetPlayers()) do
		if (p == TABLE_TableIndirection["LocalPlayer%0"]) then
		else
			table.insert(TABLE_TableIndirection["list%0"], p.Name);
		end
	end
	table.sort(TABLE_TableIndirection["list%0"]);
	return TABLE_TableIndirection["list%0"];
end
createDropdown(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\38\79\233", "\165\118\25\185\62")], LUAOBFUSACTOR_DECRYPT_STR_0("\54\76\233\69\6\93\165\112\9\72\252\69\23", "\32\101\41\133"), LUAOBFUSACTOR_DECRYPT_STR_0("\223\64\94\164\112\199\233\65\98\173\114\202\233\87", "\179\140\37\50\193\19"), getAvailablePlayers);
createDropdown(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\120\139\33", "\152\40\221\113\75\101")], LUAOBFUSACTOR_DECRYPT_STR_0("\93\236\169\129\227\43\116\254\178\152\170\20\117", "\123\27\141\219\236\195"), LUAOBFUSACTOR_DECRYPT_STR_0("\97\75\246\254\180\73\10\45\69\76\210\254\151\76\31\61\79\80", "\84\32\62\130\145\228\37\107"), {LUAOBFUSACTOR_DECRYPT_STR_0("\3\129\69\188\81", "\178\65\228\41\211\38\54"),LUAOBFUSACTOR_DECRYPT_STR_0("\85\165\14\201\10", "\94\20\199\97\191\111\68\58"),LUAOBFUSACTOR_DECRYPT_STR_0("\247\145\239\25\94", "\89\177\227\128\119\42\176"),LUAOBFUSACTOR_DECRYPT_STR_0("\62\181\253\84", "\111\124\212\158\63\29\89")});
createSlider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\107\105\5", "\88\59\63\85\75")], LUAOBFUSACTOR_DECRYPT_STR_0("\150\216\254\147\136\10\177\212\173\129\155\11\191\145\221\139\136\29\183\195", "\100\210\177\141\231\233"), LUAOBFUSACTOR_DECRYPT_STR_0("\223\157\35\177\202\238\255\145\50\172\222\235\237\156\54\176\249\231", "\130\158\232\87\222\154"), 1, 20);
createDivider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\30\29\118", "\117\78\75\38\67")]);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\200\6\108", "\116\152\80\60\46")], LUAOBFUSACTOR_DECRYPT_STR_0("\96\39\19\117\191\14", "\126\52\119\68\20\211\101\190"));
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\237\142\97", "\33\189\216\49\180")], LUAOBFUSACTOR_DECRYPT_STR_0("\137\180\54\45\183\169\250\3\31\140\173\182\60", "\219\204\218\87\79"), LUAOBFUSACTOR_DECRYPT_STR_0("\225\74\138\72\77\142\240\116\188\75\77\128\209", "\229\181\26\221\41\33"), function(val)
	updateTPWalk();
	if val then
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\234\199\212", "\37\186\145\132\110\18\123\76"), LUAOBFUSACTOR_DECRYPT_STR_0("\183\33\223\8\143\26\168\44\141\16\234\5\134\21\166", "\105\227\113\136"), false);
	else
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\51\40\49", "\20\99\126\97\227\124\237\135"), LUAOBFUSACTOR_DECRYPT_STR_0("\135\157\211\230\1\7\68\151\164\247\230\15\0\1\183\227", "\100\211\205\132\135\109\108"), false);
	end
end);
createSlider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\145\34\249", "\217\193\116\169\144")], LUAOBFUSACTOR_DECRYPT_STR_0("\45\126\30\127\188\35\89\125\57\123\181\44", "\72\121\46\73\30\208"), LUAOBFUSACTOR_DECRYPT_STR_0("\135\228\195\129\13\143\128\196\241\133\5", "\228\211\180\148\224\97"), 0.2, 5);
createKeybind(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\99\196\143", "\140\51\146\223\139\16")], LUAOBFUSACTOR_DECRYPT_STR_0("\205\21\140\169\165\175\40\141\170\248\227\25\194\153\207\216\29\142\166", "\159\143\124\226\205"), LUAOBFUSACTOR_DECRYPT_STR_0("\78\205\115\80\29\184\110\127\228", "\37\26\157\36\49\113\211"));
createDivider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\148\21\143", "\213\196\67\223\165")]);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\64\126\142", "\109\16\40\222\148")], LUAOBFUSACTOR_DECRYPT_STR_0("\246\243\77\176\216\208\31\151\217\204", "\209\181\181\63"));
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\192\6\199", "\45\144\80\151\216\160")], LUAOBFUSACTOR_DECRYPT_STR_0("\1\51\187\39\82\33\125\153\3\82\61", "\62\68\93\218\69"), LUAOBFUSACTOR_DECRYPT_STR_0("\60\61\63\220\25\49\19\29\23\54\193", "\114\127\123\83\165\92\95"), function(val)
	if (val or (990 > 1620)) then
		TABLE_TableIndirection["FlatIdent_97F0B%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_97F0B%0"] == 0) then
				startCFly();
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\229\251\242\170", "\211\166\189\158"), LUAOBFUSACTOR_DECRYPT_STR_0("\30\135\202\60\63\233\125\135\212\36\114\233\51\160\218\49\55\232\115\225\235\45\55\233\57\251\152", "\140\93\193\184\93\82") .. math.floor(TABLE_TableIndirection["state%0"].CFlySpeed), false);
				break;
			end
		end
	else
		TABLE_TableIndirection["FlatIdent_65A72%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_65A72%0"] == 0) then
				stopCFly();
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\80\136\254\228", "\143\19\206\146\157\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\243\55\154\189\221\20\200\154\220\8\200\184\217\2\137\190\220\20\140\242", "\220\176\113\232"), false);
				break;
			end
		end
	end
end);
createSlider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\38\45\117", "\184\118\123\37\142\142")], LUAOBFUSACTOR_DECRYPT_STR_0("\142\196\43\17\237\209\55\13\168\230", "\104\205\130\71"), LUAOBFUSACTOR_DECRYPT_STR_0("\165\52\72\156\56\9\117\228\130", "\129\230\114\36\229\107\121\16"), 50, 300);
createKeybind(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\112\57\206", "\196\32\111\158\214\163\167")], LUAOBFUSACTOR_DECRYPT_STR_0("\15\27\194\20\119\82\248\31\42\21\192\21\109\49\234\28\52", "\112\77\114\172"), LUAOBFUSACTOR_DECRYPT_STR_0("\174\102\36\59\159\136\89", "\212\237\32\72\66"));
TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\148\231\125\62\182\236\104\41\165\206\120\40\178\235", "\76\215\143\28")]:Connect(function()
	task.wait(1);
	if TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\98\227\229\89\161\59\132\67\201\236\68", "\229\33\165\137\32\228\85")] then
		startCFly();
	end
end);
createDivider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\135\180\53", "\232\215\226\101\28\116\165\216")]);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\60\19\147", "\64\108\69\195\59")], LUAOBFUSACTOR_DECRYPT_STR_0("\33\103\205\86\70\82\64\219\81\86\17\123\201\74", "\34\114\19\172\56"));
createLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\254\19\67", "\177\174\69\19\162")], LUAOBFUSACTOR_DECRYPT_STR_0("\170\79\91\14\198\9\179\141\94\8\87\198\24\173\130\74\8\27\198\17\161\149\14\92\21\198\8\171\152\79\92\31\198\23\173\136\3\78\19\129\18\176\194", "\196\236\46\40\122\230\122"), Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\139\242\108\181\211\17\14\182\240\122\172\238\62\22", "\98\223\151\20\193\139\80")].Center);
TABLE_TableIndirection["standSwitchBusy%0"] = false;
local function doStandSwitchFast(target, slotLabel)
	if (TABLE_TableIndirection["standSwitchBusy%0"] or (877 > 4695)) then
		TABLE_TableIndirection["FlatIdent_1FAE6%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_1FAE6%0"] == 0) then
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\97\177\133\212\174\178\117\208\91\177\135\210\175\224", "\167\50\197\228\186\202\146\38"), LUAOBFUSACTOR_DECRYPT_STR_0("\127\223\47\51\79\192\102\38\64\218\35\38\72\209\102\46\66\136\54\53\67\207\52\34\95\219\104", "\71\44\168\70"), true);
				return;
			end
		end
	end
	if ((2691 >= 1851) and (not target or (target == LUAOBFUSACTOR_DECRYPT_STR_0("\49\2\215\201\1\19\149\130\76", "\172\98\103\187")))) then
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\20\83\129\34\60\86\156\174\46\83\131\36\61\4", "\217\71\39\224\76\88\118\207"), LUAOBFUSACTOR_DECRYPT_STR_0("\190\188\247\172\142\173\187\168\205\170\239\168\131\189\187\175\130\171\187", "\201\237\217\155") .. (slotLabel or LUAOBFUSACTOR_DECRYPT_STR_0("\99\75\82\223\250\155\5\164\99", "\203\23\35\59\172\218\232\105")) .. ".", true);
		return;
	end
	TABLE_TableIndirection["standSwitchBusy%0"] = true;
	task.spawn(function()
		TABLE_TableIndirection["pGui%0"] = TABLE_TableIndirection["LocalPlayer%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\18\165\161\98\39\187\135\110\43", "\27\66\201\192"), 5);
		TABLE_TableIndirection["menuGui%0"] = TABLE_TableIndirection["pGui%0"] and TABLE_TableIndirection["pGui%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\47\32\245\96", "\58\66\69\155\21\170"));
		local function pressM()
			pcall(function()
				TABLE_TableIndirection["VirtualInputManager%0"]:SendKeyEvent(true, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\196\90\240\216\243\235\90", "\156\143\63\137\155")].M, false, game);
				task.wait(0.06);
				TABLE_TableIndirection["VirtualInputManager%0"]:SendKeyEvent(false, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\57\46\100\31\135\22\46", "\232\114\75\29\92")].M, false, game);
			end);
		end
		local function bail(msg)
			TABLE_TableIndirection["FlatIdent_23AC6%0"] = 0;
			while true do
				if (TABLE_TableIndirection["FlatIdent_23AC6%0"] == 1) then
					task.wait(0.2);
					TABLE_TableIndirection["standSwitchBusy%0"] = false;
					break;
				end
				if (TABLE_TableIndirection["FlatIdent_23AC6%0"] == 0) then
					pressM();
					showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\58\69\248\88\205\138\58\70\240\66\202\194\12\67", "\170\105\49\153\54\169"), msg, true);
					TABLE_TableIndirection["FlatIdent_23AC6%0"] = 1;
				end
			end
		end
		if not TABLE_TableIndirection["menuGui%0"] then
			TABLE_TableIndirection["FlatIdent_69531%0"] = 0;
			while true do
				if (TABLE_TableIndirection["FlatIdent_69531%0"] == 0) then
					showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\44\74\122\192\21\166\187\163\22\74\120\198\20\244", "\212\127\62\27\174\113\134\232"), LUAOBFUSACTOR_DECRYPT_STR_0("\222\4\189\171\182\121\142\218\65\189\177\226\30\189\252\20\189\186\184", "\219\147\97\211\222\150\62"), true);
					TABLE_TableIndirection["standSwitchBusy%0"] = false;
					TABLE_TableIndirection["FlatIdent_69531%0"] = 1;
				end
				if (TABLE_TableIndirection["FlatIdent_69531%0"] == 1) then
					return;
				end
			end
		end
		pressM();
		task.wait(0.45);
		TABLE_TableIndirection["standInfoPanel%0"] = TABLE_TableIndirection["menuGui%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\243\84\247\131\129\241\233\78\240\130", "\209\160\32\150\237\229"));
		if (not TABLE_TableIndirection["standInfoPanel%0"] or not TABLE_TableIndirection["standInfoPanel%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\133\51\86\75\122\251\137", "\236\211\90\37\34\24\151")]) then
			TABLE_TableIndirection["FlatIdent_6873F%0"] = 0;
			TABLE_TableIndirection["standInfoBtn%0"] = nil;
			TABLE_TableIndirection["btnHolder%0"] = nil;
			while true do
				if (TABLE_TableIndirection["FlatIdent_6873F%0"] == 1) then
					if TABLE_TableIndirection["btnHolder%0"] then
						TABLE_TableIndirection["holder%0"] = TABLE_TableIndirection["btnHolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\92\171\191\132\81\182", "\224\52\196\211"));
						if (TABLE_TableIndirection["holder%0"] or (2985 >= 4856)) then
							TABLE_TableIndirection["standInfoBtn%0"] = TABLE_TableIndirection["holder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\12\83\68\55\55", "\131\127\39\37\89\83"));
						end
					end
					if ((4276 >= 1195) and not TABLE_TableIndirection["standInfoBtn%0"]) then
						for _, desc in ipairs(TABLE_TableIndirection["menuGui%0"]:GetDescendants()) do
							if ((3232 <= 4690) and (desc:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\253\18\247\87\120\208\221\3\224\77", "\165\169\119\143\35\58")) or desc:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\202\245\41\178\237\51\195\247\236\39\187", "\182\131\152\72\213\136\113")))) then
								TABLE_TableIndirection["n%0"] = string.lower(desc.Name);
								if ((TABLE_TableIndirection["n%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\85\4\180\166\66", "\200\38\112\213")) or (TABLE_TableIndirection["n%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\247\27\206\68\213\204", "\84\132\111\175\42\177\191")) or (896 >= 3146)) then
									TABLE_TableIndirection["standInfoBtn%0"] = desc;
									break;
								end
							end
						end
					end
					TABLE_TableIndirection["FlatIdent_6873F%0"] = 2;
				end
				if (2 == TABLE_TableIndirection["FlatIdent_6873F%0"]) then
					if ((3061 >= 2958) and TABLE_TableIndirection["standInfoBtn%0"]) then
						clickButton(TABLE_TableIndirection["standInfoBtn%0"]);
						task.wait(0.3);
					end
					TABLE_TableIndirection["standInfoPanel%0"] = TABLE_TableIndirection["menuGui%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\219\157\44\199\11\5\26\12\238\134", "\98\136\233\77\169\111\37\83"));
					break;
				end
				if (TABLE_TableIndirection["FlatIdent_6873F%0"] == 0) then
					TABLE_TableIndirection["standInfoBtn%0"] = nil;
					TABLE_TableIndirection["btnHolder%0"] = TABLE_TableIndirection["menuGui%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\115\160\41\186\230\215\78\189\50\162\237\220\99", "\185\17\213\93\206\137"));
					TABLE_TableIndirection["FlatIdent_6873F%0"] = 1;
				end
			end
		end
		if not TABLE_TableIndirection["standInfoPanel%0"] then
			return bail(LUAOBFUSACTOR_DECRYPT_STR_0("\143\46\139\27\190\252\19\132\19\181\252\42\139\27\191\176\122\132\26\174\252\60\133\0\180\184\116", "\218\220\90\234\117"));
		end
		TABLE_TableIndirection["storageHolder%0"] = TABLE_TableIndirection["standInfoPanel%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\209\5\197\46\85\21\98\214\30\214\33\86\47\78\202\30\200\36\84\56", "\17\162\113\164\64\49\74"));
		if (not TABLE_TableIndirection["storageHolder%0"] or not TABLE_TableIndirection["storageHolder%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\54\0\198\13\138\241\17", "\116\96\105\181\100\232\157")]) then
			TABLE_TableIndirection["FlatIdent_5062%0"] = 0;
			TABLE_TableIndirection["storageTabBtn%0"] = nil;
			while true do
				if (TABLE_TableIndirection["FlatIdent_5062%0"] == 1) then
					TABLE_TableIndirection["storageHolder%0"] = TABLE_TableIndirection["standInfoPanel%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\90\47\217\2\63\49\99\79\70\41\217\11\62\49\120\84\69\63\221\30", "\59\41\91\184\108\91\110\16"));
					break;
				end
				if (0 == TABLE_TableIndirection["FlatIdent_5062%0"]) then
					TABLE_TableIndirection["storageTabBtn%0"] = TABLE_TableIndirection["standInfoPanel%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\155\83\163\85\23\183\84\182\84\1\137\64\167\100\17\157\83\182\84\29", "\115\232\39\194\59"));
					if TABLE_TableIndirection["storageTabBtn%0"] then
						clickButton(TABLE_TableIndirection["storageTabBtn%0"]);
						task.wait(0.25);
					end
					TABLE_TableIndirection["FlatIdent_5062%0"] = 1;
				end
			end
		end
		TABLE_TableIndirection["scrollHolder%0"] = TABLE_TableIndirection["storageHolder%0"] and TABLE_TableIndirection["storageHolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\8\223\230\56\166\36\199\238\37\182", "\194\123\171\135\86")) and TABLE_TableIndirection["storageHolder%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\76\150\120\202\48\192\16\124\76\150", "\21\63\226\25\164\84\159\124")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\221\203\173\222\45\242\19\224\207\153\195\32\243\31", "\122\142\168\223\177\65\158")) and TABLE_TableIndirection["storageHolder%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\208\55\16\11\222\105\36\202\48\5", "\72\163\67\113\101\186\54")][LUAOBFUSACTOR_DECRYPT_STR_0("\26\132\230\142\37\139\253\143\46\161\230\128\36\130", "\225\73\231\148")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\25\57\66\82\195\3", "\166\113\86\46\54"));
		if not TABLE_TableIndirection["scrollHolder%0"] then
			return bail(LUAOBFUSACTOR_DECRYPT_STR_0("\252\193\120\207\224\193\130\71\195\220\100\201\161\200\136\19\143\211\120\200\239\194\201", "\103\175\181\23\189\129\166\231"));
		end
		TABLE_TableIndirection["foundEntry%0"] = nil;
		for _, entry in ipairs(TABLE_TableIndirection["scrollHolder%0"]:GetChildren()) do
			TABLE_TableIndirection["titleLabel%0"] = entry:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\165\17\65\88\216", "\109\209\120\53\52\189"));
			if (TABLE_TableIndirection["titleLabel%0"] and (string.lower(tostring(TABLE_TableIndirection["titleLabel%0"].Text)) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\66\12\249", "\210\35\104\157\114\187")) and (string.lower(tostring(TABLE_TableIndirection["titleLabel%0"].Text)) == string.lower(target))) then
				TABLE_TableIndirection["foundEntry%0"] = entry;
				break;
			end
		end
		if ((3187 >= 644) and not TABLE_TableIndirection["foundEntry%0"]) then
			return bail("'" .. target .. "' not in storage.");
		end
		clickButton(TABLE_TableIndirection["foundEntry%0"]);
		task.wait(0.3);
		TABLE_TableIndirection["equipBtn%0"] = nil;
		for _ = 1, 20 do
			TABLE_TableIndirection["equipBtn%0"] = TABLE_TableIndirection["storageHolder%0"] and TABLE_TableIndirection["storageHolder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\105\209\186\41\160\74\4\239\115\203\179\52", "\176\26\165\213\91\193\45\97")) and TABLE_TableIndirection["storageHolder%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\36\50\133\242\250\20\239\8\47\132\230\244", "\138\87\70\234\128\155\115")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\163\206\198\84\208\172\3", "\173\193\187\178\32\191\194\112")) and TABLE_TableIndirection["storageHolder%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\255\54\220\245\20\35\233\29\218\233\19\43", "\68\140\66\179\135\117")][LUAOBFUSACTOR_DECRYPT_STR_0("\118\159\92\238\52\91\187", "\200\20\234\40\154\91\53")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\69\170\190\178\107", "\27\32\219\203\219"));
			if ((644 <= 704) and TABLE_TableIndirection["equipBtn%0"]) then
				break;
			end
			task.wait(0.08);
		end
		if ((958 > 947) and not TABLE_TableIndirection["equipBtn%0"]) then
			return bail(LUAOBFUSACTOR_DECRYPT_STR_0("\3\236\12\183\238\48\80\170\50\233\22\176\190\126\93\171\102\251\22\171\240\116\28", "\223\70\157\121\222\158\16\50"));
		end
		clickButton(TABLE_TableIndirection["equipBtn%0"]);
		TABLE_TableIndirection["confirmYes%0"] = nil;
		for _ = 1, 30 do
			TABLE_TableIndirection["confirm%0"] = TABLE_TableIndirection["standInfoPanel%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\179\26\160\235\230\92\36", "\73\208\117\206\141\143\46"));
			if (TABLE_TableIndirection["confirm%0"] and TABLE_TableIndirection["confirm%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\153\243\66\122\173\246\84", "\19\207\154\49")]) then
				TABLE_TableIndirection["yesBtn%0"] = TABLE_TableIndirection["confirm%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\57\39\22\232\16\240\40", "\158\91\82\98\156\127")) and TABLE_TableIndirection["confirm%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\179\145\246\210\61\59\158", "\237\209\228\130\166\82\85")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\238\160\234", "\73\151\197\153\165\98"));
				if ((4492 >= 2654) and TABLE_TableIndirection["yesBtn%0"]) then
					TABLE_TableIndirection["confirmYes%0"] = TABLE_TableIndirection["yesBtn%0"];
					break;
				end
			end
			task.wait(0.08);
		end
		if ((3442 >= 1503) and not TABLE_TableIndirection["confirmYes%0"]) then
			clickButton(TABLE_TableIndirection["equipBtn%0"]);
			for _ = 1, 20 do
				TABLE_TableIndirection["confirm%0"] = TABLE_TableIndirection["standInfoPanel%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\86\21\251\204\178\96\40", "\69\53\122\149\170\219\18"));
				if ((TABLE_TableIndirection["confirm%0"] and TABLE_TableIndirection["confirm%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\7\246\7\255\48\90\233", "\234\81\159\116\150\82\54\140")]) or (3170 <= 1464)) then
					TABLE_TableIndirection["yesBtn%0"] = TABLE_TableIndirection["confirm%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\24\213\17\11\21\206\22", "\127\122\160\101")) and TABLE_TableIndirection["confirm%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\85\62\61\253\174\4\105", "\225\55\75\73\137\193\106\26")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\80\190\85", "\122\41\219\38"));
					if (TABLE_TableIndirection["yesBtn%0"] or (4797 == 4388)) then
						TABLE_TableIndirection["confirmYes%0"] = TABLE_TableIndirection["yesBtn%0"];
						break;
					end
				end
				task.wait(0.08);
			end
		end
		if ((551 <= 681) and not TABLE_TableIndirection["confirmYes%0"]) then
			return bail("Confirm popup didn't appear.");
		end
		task.wait(0.05);
		clickButton(TABLE_TableIndirection["confirmYes%0"]);
		task.wait(0.3);
		pressM();
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\68\183\216\187\115\227\234\162\126\183\218\189\114\177", "\213\23\195\185"), LUAOBFUSACTOR_DECRYPT_STR_0("\173\49\99\165\221\32\71\131\210\96", "\231\232\64\22\204\173\80\34") .. target, false);
		task.wait(0.4);
		TABLE_TableIndirection["standSwitchBusy%0"] = false;
	end);
end
local function getStoredStands()
	TABLE_TableIndirection["FlatIdent_8F9B8%0"] = 0;
	TABLE_TableIndirection["list%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_8F9B8%0"] == 1) then
			if (#TABLE_TableIndirection["list%0"] ~= 0) then
			else
				for _, s in ipairs(TABLE_TableIndirection["KnownStands%0"]) do
					table.insert(TABLE_TableIndirection["list%0"], s);
				end
			end
			table.sort(TABLE_TableIndirection["list%0"]);
			TABLE_TableIndirection["FlatIdent_8F9B8%0"] = 2;
		end
		if (TABLE_TableIndirection["FlatIdent_8F9B8%0"] == 0) then
			TABLE_TableIndirection["list%0"] = {};
			pcall(function()
				TABLE_TableIndirection["FlatIdent_89311%0"] = 0;
				TABLE_TableIndirection["pGui%0"] = nil;
				TABLE_TableIndirection["menuGui%0"] = nil;
				TABLE_TableIndirection["standInfoPanel%0"] = nil;
				TABLE_TableIndirection["scrollHolder%0"] = nil;
				while true do
					if (TABLE_TableIndirection["FlatIdent_89311%0"] == 0) then
						TABLE_TableIndirection["pGui%0"] = TABLE_TableIndirection["LocalPlayer%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\122\87\206\189\79\73\232\177\67", "\196\42\59\175"), 2);
						TABLE_TableIndirection["menuGui%0"] = TABLE_TableIndirection["pGui%0"] and TABLE_TableIndirection["pGui%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\47\55\55\5", "\88\66\82\89\112"));
						TABLE_TableIndirection["FlatIdent_89311%0"] = 1;
					end
					if (TABLE_TableIndirection["FlatIdent_89311%0"] == 1) then
						TABLE_TableIndirection["standInfoPanel%0"] = TABLE_TableIndirection["menuGui%0"] and TABLE_TableIndirection["menuGui%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\45\148\46\91\90\94\169\33\83\81", "\62\126\224\79\53"));
						TABLE_TableIndirection["scrollHolder%0"] = TABLE_TableIndirection["standInfoPanel%0"] and TABLE_TableIndirection["standInfoPanel%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\79\109\197\134\205\99\106\208\135\219\93\126\193\183\193\83\117\192\141\219", "\169\60\25\164\232")) and TABLE_TableIndirection["standInfoPanel%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\208\24\129\222\85\50\220\215\3\146\209\86\8\240\203\3\140\212\84\31", "\175\163\108\224\176\49\109")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\220\42\37\187\43\23\195\55\55\161", "\72\175\94\68\213\79")) and TABLE_TableIndirection["standInfoPanel%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\200\173\242\197\235\228\170\231\196\253\218\190\246\244\231\212\181\247\206\253", "\143\187\217\147\171")][LUAOBFUSACTOR_DECRYPT_STR_0("\206\12\118\177\3\226\20\126\172\19", "\103\189\120\23\223")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\64\71\107\11\165\2\16\239\116\98\107\5\164\11", "\129\19\36\25\100\201\110\121")) and TABLE_TableIndirection["standInfoPanel%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\21\11\80\178\2\32\66\168\9\13\80\187\3\32\89\179\10\27\84\174", "\220\102\127\49")][LUAOBFUSACTOR_DECRYPT_STR_0("\91\9\78\194\12\139\179\186\91\9", "\211\40\125\47\172\104\212\223")][LUAOBFUSACTOR_DECRYPT_STR_0("\125\66\62\1\66\77\37\0\73\103\62\15\67\68", "\110\46\33\76")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\188\142\180\219\50\166", "\87\212\225\216\191"));
						TABLE_TableIndirection["FlatIdent_89311%0"] = 2;
					end
					if (2 == TABLE_TableIndirection["FlatIdent_89311%0"]) then
						if ((3277 > 407) and TABLE_TableIndirection["scrollHolder%0"]) then
							for _, entry in ipairs(TABLE_TableIndirection["scrollHolder%0"]:GetChildren()) do
								TABLE_TableIndirection["FlatIdent_1B878%0"] = 0;
								TABLE_TableIndirection["titleLabel%0"] = nil;
								while true do
									if (0 == TABLE_TableIndirection["FlatIdent_1B878%0"]) then
										TABLE_TableIndirection["titleLabel%0"] = entry:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\242\90\209\132\188", "\217\134\51\165\232"));
										if TABLE_TableIndirection["titleLabel%0"] then
											TABLE_TableIndirection["name%0"] = tostring(TABLE_TableIndirection["titleLabel%0"].Text);
											if ((TABLE_TableIndirection["name%0"] ~= "") and (string.lower(TABLE_TableIndirection["name%0"]) ~= LUAOBFUSACTOR_DECRYPT_STR_0("\162\56\196", "\118\195\92\160\101"))) then
												table.insert(TABLE_TableIndirection["list%0"], TABLE_TableIndirection["name%0"]);
											end
										end
										break;
									end
								end
							end
						end
						break;
					end
				end
			end);
			TABLE_TableIndirection["FlatIdent_8F9B8%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_8F9B8%0"] == 2) then
			return TABLE_TableIndirection["list%0"];
		end
	end
end
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\144\42\31", "\114\192\124\79\79\89")], LUAOBFUSACTOR_DECRYPT_STR_0("\187\252\184\208\166\217", "\134\232\144\215\164"));
createDropdown(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\221\112\98", "\83\141\38\50\53\233\123\174")], LUAOBFUSACTOR_DECRYPT_STR_0("\14\149\172\65\55\183\1\67\41\131\171\81\116\238", "\16\93\226\197\53\84\223\33"), LUAOBFUSACTOR_DECRYPT_STR_0("\74\214\240\31\171\3\124\215\207\13\161\3\122\219\207\14\169\25\125\130", "\119\25\179\156\122\200"), getStoredStands);
createKeybind(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\200\217\24", "\148\152\143\72")], LUAOBFUSACTOR_DECRYPT_STR_0("\222\20\213\192\99\188\46\204\205\45\255\21\155\247\45\253\19\223\132\104", "\89\156\125\187\164"), LUAOBFUSACTOR_DECRYPT_STR_0("\243\67\196\182\204\195\200\9\212\84\205\189\218\219\218\25\145", "\96\160\55\165\216\168\144\191"));
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\40\98\69", "\90\120\52\21")], LUAOBFUSACTOR_DECRYPT_STR_0("\184\7\242\65\199\190\203\35\239\84\202\178\203\62\244\66\132\231", "\214\235\112\155\53\164"), function()
	doStandSwitchFast(TABLE_TableIndirection["state%0"].SelectedSwitchStand1, LUAOBFUSACTOR_DECRYPT_STR_0("\122\226\14\56\9\191", "\76\41\142\97"));
end);
createDivider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\217\242\254", "\118\137\164\174\117\26\126\121")]);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\58\150\126", "\110\106\192\46\26\28")], LUAOBFUSACTOR_DECRYPT_STR_0("\255\64\28\253\129\94", "\169\172\44\115\137\161\108"));
createDropdown(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\159\195\189", "\60\207\149\237\180")], LUAOBFUSACTOR_DECRYPT_STR_0("\196\35\130\242\244\60\203\213\227\53\133\226\183\102", "\134\151\84\235"), LUAOBFUSACTOR_DECRYPT_STR_0("\120\10\190\8\116\95\10\182\62\96\66\27\177\5\68\95\14\188\9\37", "\23\43\111\210\109"), getStoredStands);
createKeybind(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\69\46\192", "\137\21\120\144\157\124\42")], LUAOBFUSACTOR_DECRYPT_STR_0("\211\2\31\191\90\227\58\230\2\5\184\8\227\58\229\10\31\191\64\241", "\105\145\107\113\219\96\195"), LUAOBFUSACTOR_DECRYPT_STR_0("\210\231\19\55\229\192\5\48\245\240\26\60\243\216\23\32\179", "\89\129\147\114"));
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\43\131\145", "\178\123\213\193\124\49")], LUAOBFUSACTOR_DECRYPT_STR_0("\222\62\174\216\222\133\187\71\249\40\169\200\157\163\244\99\173\123", "\20\141\73\199\172\189\237\155"), function()
	doStandSwitchFast(TABLE_TableIndirection["state%0"].SelectedSwitchStand2, LUAOBFUSACTOR_DECRYPT_STR_0("\223\15\21\17\123\178", "\184\140\99\122\101\91\128\43"));
end);
task.spawn(function()
	while sessionAlive() do
		TABLE_TableIndirection["FlatIdent_62271%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_62271%0"] == 0) then
				task.wait(1);
				pcall(function()
					TABLE_TableIndirection["FlatIdent_7F9F4%0"] = 0;
					TABLE_TableIndirection["mainMenu%0"] = nil;
					while true do
						if (TABLE_TableIndirection["FlatIdent_7F9F4%0"] == 0) then
							TABLE_TableIndirection["mainMenu%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\203\0\185\31\254\30\159\19\242", "\102\155\108\216")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\3\136\92\171\168\221\190\32\156", "\219\78\233\53\197\136\144"));
							if ((4695 >= 1415) and TABLE_TableIndirection["mainMenu%0"]) then
								TABLE_TableIndirection["FlatIdent_674F6%0"] = 0;
								TABLE_TableIndirection["btn%0"] = nil;
								while true do
									if (TABLE_TableIndirection["FlatIdent_674F6%0"] == 0) then
										TABLE_TableIndirection["btn%0"] = TABLE_TableIndirection["mainMenu%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\25\36\231\190\56\255\66", "\49\91\81\147\202\87\145")) and TABLE_TableIndirection["mainMenu%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\35\66\76\250\141\46\93", "\46\97\55\56\142\226\64")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\54\157\211\248\78\163\58\69\6\145", "\41\103\232\186\155\37\131\106"));
										if (TABLE_TableIndirection["btn%0"] and TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\10\224\194\210\62\229\212", "\187\92\137\177")] and (TABLE_TableIndirection["btn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\99\0\154\4\123\76\76\71\50\134\24\126\77\81\77\12", "\56\34\98\233\107\23\57")]['X'] > 0)) then
											clickButton(TABLE_TableIndirection["btn%0"]);
										end
										break;
									end
								end
							end
							break;
						end
					end
				end);
				break;
			end
		end
	end
end);
TABLE_TableIndirection["RaidData%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\114\238\3\41", "\126\57\135\113\72\74\68")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\168\77\80", "\65\230\29\19\28\109\142")]=LUAOBFUSACTOR_DECRYPT_STR_0("\66\170\166\17\118\131\121\85\126\229\158\16\109\137", "\50\27\197\213\121\31\232\24"),[LUAOBFUSACTOR_DECRYPT_STR_0("\123\76\182\231\84\64", "\132\56\37\196")]=Vector3.new(1035.43, 875.6, -651.76)},[LUAOBFUSACTOR_DECRYPT_STR_0("\124\213\56", "\135\56\188\87\215\190")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\133\25\118", "\58\203\73\53\104")]=LUAOBFUSACTOR_DECRYPT_STR_0("\68\145\180", "\100\123\174\139\185\130"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\41\35\53\3\162", "\199\96\64\81\86\111")]=Vector3.new(2794.98, 950.71, 739.45)},[LUAOBFUSACTOR_DECRYPT_STR_0("\37\221\85\78\13\0", "\127\111\178\33\47")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\33\131\7", "\156\111\211\68\178\132\189\144")]=LUAOBFUSACTOR_DECRYPT_STR_0("\200\216\85\233\246\228", "\62\139\176\32\132\148\139\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\211\33\203\84\137\30", "\109\144\72\185\55\229\123\17")]=Vector3.new(1071.82, 884.23, 213.15)},[LUAOBFUSACTOR_DECRYPT_STR_0("\240\206\76\87\121", "\144\177\184\40\56\21")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\173\197\58", "\218\227\149\121\199\69")]=LUAOBFUSACTOR_DECRYPT_STR_0("\130\68\203\239\43\180\136\171\17\226\248\34\182\133", "\233\207\49\163\142\70\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\109\208\208\238\205\181", "\225\46\185\162\141\161\208")]=Vector3.new(348.44, 876.08, 1013.2)}};
local function getPos(inst)
	if (not inst or (3212 <= 944)) then
		return nil;
	end
	if (inst:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\250\223\120\88\183", "\219\183\176\28\61")) or (3096 <= 1798)) then
		TABLE_TableIndirection["FlatIdent_927F1%0"] = 0;
		TABLE_TableIndirection["hrp%0"] = nil;
		TABLE_TableIndirection["success%0"] = nil;
		TABLE_TableIndirection["cf%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_927F1%0"] == 1) then
				if TABLE_TableIndirection["hrp%0"] then
					return TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\117\12\217\249\227\246\140\82", "\60\37\99\170\144\151\159\227")];
				end
				TABLE_TableIndirection["success%0"], TABLE_TableIndirection["cf%0"] = pcall(function()
					return inst:GetBoundingBox();
				end);
				TABLE_TableIndirection["FlatIdent_927F1%0"] = 2;
			end
			if (TABLE_TableIndirection["FlatIdent_927F1%0"] == 2) then
				if TABLE_TableIndirection["success%0"] then
					return TABLE_TableIndirection["cf%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\103\164\63\190\97\59\181\64", "\46\55\203\76\215\21\82\218")];
				end
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_927F1%0"] == 0) then
				if inst[LUAOBFUSACTOR_DECRYPT_STR_0("\182\204\240\49\226\4\245\182\223\235\40", "\140\230\190\153\92\131\118")] then
					return inst[LUAOBFUSACTOR_DECRYPT_STR_0("\251\218\198\74\89\244\85\73\202\218\219", "\25\171\168\175\39\56\134\44")][LUAOBFUSACTOR_DECRYPT_STR_0("\31\189\208\56\146\133\115\33", "\28\79\210\163\81\230\236")];
				end
				TABLE_TableIndirection["hrp%0"] = inst:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\50\197\9\135\245\21\217\0\180\244\21\196\52\135\233\14", "\155\122\176\100\230"));
				TABLE_TableIndirection["FlatIdent_927F1%0"] = 1;
			end
		end
	elseif ((3537 == 3537) and inst:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\137\132\14\33\200\170\151\9", "\152\203\229\125\68"))) then
		return inst[LUAOBFUSACTOR_DECRYPT_STR_0("\230\162\55\248\194\164\43\255", "\145\182\205\68")];
	end
	TABLE_TableIndirection["part%0"] = inst:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\160\43\85\114\188\53\255\150", "\141\226\74\38\23\236\84"), true);
	if ((3837 >= 1570) and TABLE_TableIndirection["part%0"]) then
		return TABLE_TableIndirection["part%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\183\125\107\44\147\123\119\43", "\69\231\18\24")];
	end
	return nil;
end
local function getRaidNPC(raidKey)
	TABLE_TableIndirection["npcsFolder%0"] = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\94\207\49\57", "\74\16\191\82")) or workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\250\37\99\11", "\25\180\117\32\120\31\210"));
	if (not TABLE_TableIndirection["npcsFolder%0"] or (2950 == 3812)) then
		return nil;
	end
	TABLE_TableIndirection["exactName%0"] = TABLE_TableIndirection["RaidData%0"][raidKey][LUAOBFUSACTOR_DECRYPT_STR_0("\31\77\98", "\169\81\29\33")];
	TABLE_TableIndirection["exact%0"] = TABLE_TableIndirection["npcsFolder%0"]:FindFirstChild(TABLE_TableIndirection["exactName%0"]);
	if TABLE_TableIndirection["exact%0"] then
		return TABLE_TableIndirection["exact%0"];
	end
	for _, v in ipairs(TABLE_TableIndirection["npcsFolder%0"]:GetChildren()) do
		if (string.lower(v.Name) ~= string.lower(TABLE_TableIndirection["exactName%0"])) then
		else
			return v;
		end
	end
	return nil;
end
local function getDialogueChoice()
	TABLE_TableIndirection["FlatIdent_5D472%0"] = 0;
	TABLE_TableIndirection["dialogue%0"] = nil;
	TABLE_TableIndirection["holder%0"] = nil;
	TABLE_TableIndirection["choices%0"] = nil;
	TABLE_TableIndirection["holder1%0"] = nil;
	TABLE_TableIndirection["option1%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_5D472%0"] == 0) then
			TABLE_TableIndirection["dialogue%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\205\177\211\106\21\239\154\199\122", "\112\157\221\178\19")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\215\18\10\40\222\46\53\246", "\64\147\123\107\68\177\73"));
			if (not TABLE_TableIndirection["dialogue%0"] or not TABLE_TableIndirection["dialogue%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\138\44\37\47\34\115\166", "\194\207\66\68\77\78\22")]) then
				return nil;
			end
			TABLE_TableIndirection["FlatIdent_5D472%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_5D472%0"] == 2) then
			TABLE_TableIndirection["choices%0"] = TABLE_TableIndirection["holder%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\12\21\22\82\34\176\32", "\126\79\125\121\59\65\213\83"));
			TABLE_TableIndirection["holder1%0"] = TABLE_TableIndirection["choices%0"] and TABLE_TableIndirection["choices%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\123\204\252\70\86\209\161", "\34\51\163\144"));
			TABLE_TableIndirection["FlatIdent_5D472%0"] = 3;
		end
		if (4 == TABLE_TableIndirection["FlatIdent_5D472%0"]) then
			return nil;
		end
		if (1 == TABLE_TableIndirection["FlatIdent_5D472%0"]) then
			TABLE_TableIndirection["holder%0"] = TABLE_TableIndirection["dialogue%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\206\133\113\69\83\244", "\54\134\234\29\33"));
			if ((4723 >= 2318) and (not TABLE_TableIndirection["holder%0"] or not TABLE_TableIndirection["holder%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\14\41\47\226\58\44\57", "\139\88\64\92")])) then
				return nil;
			end
			TABLE_TableIndirection["FlatIdent_5D472%0"] = 2;
		end
		if (3 == TABLE_TableIndirection["FlatIdent_5D472%0"]) then
			TABLE_TableIndirection["option1%0"] = TABLE_TableIndirection["holder1%0"] and TABLE_TableIndirection["holder1%0"]:FindFirstChild("1");
			if (TABLE_TableIndirection["option1%0"] and TABLE_TableIndirection["option1%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\73\39\5\116\21\115\43", "\119\31\78\118\29")]) then
				return TABLE_TableIndirection["option1%0"];
			end
			TABLE_TableIndirection["FlatIdent_5D472%0"] = 4;
		end
	end
end
local function firePromptFast(prompt)
	TABLE_TableIndirection["FlatIdent_186F%0"] = 0;
	TABLE_TableIndirection["oldSight%0"] = nil;
	TABLE_TableIndirection["oldDist%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_186F%0"] == 1) then
			TABLE_TableIndirection["oldDist%0"] = prompt[LUAOBFUSACTOR_DECRYPT_STR_0("\1\251\87\223\38\252\168\58\251\91\247\42\230\133\37\233\91\255\43\235\164", "\193\76\154\47\158\69\136")];
			pcall(function()
				prompt[LUAOBFUSACTOR_DECRYPT_STR_0("\249\82\25\71\231\159\206\68\36\91\224\136\228\81\59\91\233\133\223", "\237\171\55\104\50\142")] = false;
				prompt[LUAOBFUSACTOR_DECRYPT_STR_0("\39\201\210\6\92\97\3\222\203\51\86\122\4\236\195\52\75\116\4\203\207", "\21\106\168\170\71\63")] = 50;
			end);
			TABLE_TableIndirection["FlatIdent_186F%0"] = 2;
		end
		if (2 == TABLE_TableIndirection["FlatIdent_186F%0"]) then
			if (fireproximityprompt or (2027 > 2852)) then
				pcall(function()
					fireproximityprompt(prompt, 1, true);
				end);
				pcall(function()
					fireproximityprompt(prompt);
				end);
			end
			pcall(function()
				TABLE_TableIndirection["FlatIdent_885BC%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_885BC%0"] == 0) then
						TABLE_TableIndirection["VirtualInputManager%0"]:SendKeyEvent(true, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\3\80\103\115\183\44\80", "\216\72\53\30\48")].E, false, game);
						task.delay(((prompt[LUAOBFUSACTOR_DECRYPT_STR_0("\122\248\167\135\245\71\229\170\151\216\93\249", "\177\50\151\203\227")] > 0) and (prompt[LUAOBFUSACTOR_DECRYPT_STR_0("\46\140\36\226\36\19\145\41\242\9\9\141", "\96\102\227\72\134")] + 0.1)) or 0.1, function()
							TABLE_TableIndirection["VirtualInputManager%0"]:SendKeyEvent(false, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\207\71\23\32\29\224\71", "\114\132\34\110\99")].E, false, game);
						end);
						break;
					end
				end
			end);
			TABLE_TableIndirection["FlatIdent_186F%0"] = 3;
		end
		if (0 == TABLE_TableIndirection["FlatIdent_186F%0"]) then
			if not prompt then
				return;
			end
			TABLE_TableIndirection["oldSight%0"] = prompt[LUAOBFUSACTOR_DECRYPT_STR_0("\238\255\3\215\250\200\161\110\240\243\28\199\220\220\151\116\219\242\6", "\29\188\154\114\162\147\186\196")];
			TABLE_TableIndirection["FlatIdent_186F%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_186F%0"] == 3) then
			task.delay(0.5, function()
				pcall(function()
					if prompt then
						prompt[LUAOBFUSACTOR_DECRYPT_STR_0("\48\7\153\250\77\230\7\17\164\230\74\241\45\4\187\230\67\252\22", "\148\98\98\232\143\36")] = TABLE_TableIndirection["oldSight%0"];
						prompt[LUAOBFUSACTOR_DECRYPT_STR_0("\134\69\34\50\160\191\77\44\18\183\162\75\52\55\170\184\80\59\29\160\174", "\195\203\36\90\115")] = TABLE_TableIndirection["oldDist%0"];
					end
				end);
			end);
			break;
		end
	end
end
TABLE_TableIndirection["raidStartState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\117\68\94\87", "\61\60\32\50\50\104\194\169");
TABLE_TableIndirection["raidStateTimer%0"] = tick();
TABLE_TableIndirection["lastPromptFire%0"] = tick();
task.spawn(function()
	while sessionAlive() do
		task.wait(0.1);
		repeat
			if (not TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\147\48\100\22\129\49\113\11\166\23\113\16\182", "\121\210\69\16")] or (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\29\24\127\68\254\58\24\119\115\252\39\25", "\157\78\125\19\33")] == LUAOBFUSACTOR_DECRYPT_STR_0("\234\113\252\212\218\96\190\159\151", "\177\185\20\144")) or (1136 > 4317)) then
				TABLE_TableIndirection["raidStartState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\117\80\194\32", "\228\60\52\174\69");
				break;
			end
			TABLE_TableIndirection["data%0"] = TABLE_TableIndirection["RaidData%0"][TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\41\89\226\8\122\14\89\234\63\120\19\88", "\25\122\60\142\109")]];
			if ((4748 == 4748) and not TABLE_TableIndirection["data%0"]) then
				break;
			end
			TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\50\9\112\161\225\18\21\116\161", "\128\113\97\17\211")];
			TABLE_TableIndirection["hrp%0"] = TABLE_TableIndirection["char%0"] and TABLE_TableIndirection["char%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\54\199\227\208\240\185\23\214\220\222\241\162\46\211\252\197", "\214\126\178\142\177\158"));
			if ((3736 <= 4740) and not TABLE_TableIndirection["hrp%0"]) then
				break;
			end
			TABLE_TableIndirection["inOverworld%0"] = (workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\111\57\55\93", "\94\33\73\84\46\113")) ~= nil) or (workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\159\107\120\13", "\126\209\59\59")) ~= nil);
			if (not TABLE_TableIndirection["inOverworld%0"] or (3390 <= 3060)) then
				TABLE_TableIndirection["raidStartState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\155\75\164\221", "\232\210\47\200\184\193\192");
				break;
			end
			TABLE_TableIndirection["npc%0"] = getRaidNPC(TABLE_TableIndirection["state%0"].SelectedRaid);
			TABLE_TableIndirection["choiceBtn%0"] = getDialogueChoice();
			if (TABLE_TableIndirection["raidStartState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\163\244\193\72", "\219\234\144\173\45")) then
				if TABLE_TableIndirection["choiceBtn%0"] then
					TABLE_TableIndirection["raidStartState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\111\77\224\6\18\234\87\40\126\64\224\1", "\79\44\33\137\101\121\131\57");
				elseif TABLE_TableIndirection["npc%0"] then
					TABLE_TableIndirection["raidStartState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\233\83\114\72\53\190\239\60\212\88\121\121\42\159\205\11", "\72\189\54\30\45\69\209\157");
				elseif ((tick() - TABLE_TableIndirection["raidStateTimer%0"]) <= 3) then
				else
					TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\34\159\228\215\91\4", "\54\97\217\150\182")] = CFrame.new(TABLE_TableIndirection["data%0"].Circle);
					TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\237\186\2\248\2\23\147\194", "\231\187\223\110\151\97\126")] = Vector3.new(0, 0, 0);
					TABLE_TableIndirection["raidStateTimer%0"] = tick();
				end
			elseif ((TABLE_TableIndirection["raidStartState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\4\87\119\8\39\89\34\70\114\3\48\98\63\124\75\46", "\54\80\50\27\109\87")) or (999 > 2693)) then
				if ((463 < 601) and not TABLE_TableIndirection["npc%0"]) then
					TABLE_TableIndirection["raidStartState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\99\218\135\177", "\176\42\190\235\212\26\145\178");
					break;
				end
				TABLE_TableIndirection["pPos%0"] = getPos(TABLE_TableIndirection["npc%0"]);
				if (TABLE_TableIndirection["pPos%0"] or (2183 < 687)) then
					TABLE_TableIndirection["FlatIdent_60AAB%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_60AAB%0"] == 1) then
							if ((4549 == 4549) and not TABLE_TableIndirection["choiceBtn%0"]) then
								TABLE_TableIndirection["prompt%0"] = TABLE_TableIndirection["npc%0"]:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\74\47\52\255\211\141\129\110\36\11\245\213\141\152\110", "\232\26\93\91\135\186\224"), true);
								if (TABLE_TableIndirection["prompt%0"] and ((tick() - TABLE_TableIndirection["lastPromptFire%0"]) > 1.5)) then
									TABLE_TableIndirection["FlatIdent_37906%0"] = 0;
									while true do
										if (TABLE_TableIndirection["FlatIdent_37906%0"] == 0) then
											TABLE_TableIndirection["lastPromptFire%0"] = tick();
											firePromptFast(TABLE_TableIndirection["prompt%0"]);
											break;
										end
									end
								end
							else
								TABLE_TableIndirection["raidStartState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\40\227\241\235\78\249\13\12\221\249\225\65", "\99\107\143\152\136\37\144");
								TABLE_TableIndirection["raidStateTimer%0"] = tick();
							end
							break;
						end
						if (TABLE_TableIndirection["FlatIdent_60AAB%0"] == 0) then
							TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\0\86\206\136\87\221", "\184\67\16\188\233\58")] = CFrame.new(TABLE_TableIndirection["pPos%0"] + Vector3.new(0, 0, 3), TABLE_TableIndirection["pPos%0"]);
							TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\57\22\43\69\251\60\27\10", "\85\111\115\71\42\152")] = Vector3.new(0, 0, 0);
							TABLE_TableIndirection["FlatIdent_60AAB%0"] = 1;
						end
					end
				elseif ((4672 == 4672) and ((tick() - TABLE_TableIndirection["raidStateTimer%0"]) > 5)) then
					TABLE_TableIndirection["raidStartState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\44\124\39\17", "\153\101\24\75\116\141\20\51");
				end
			elseif (TABLE_TableIndirection["raidStartState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\30\20\204\9\54\17\203\13\15\25\204\14", "\106\93\120\165")) then
				TABLE_TableIndirection["FlatIdent_772BD%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_772BD%0"] == 0) then
						if (TABLE_TableIndirection["npc%0"] or (3668 < 395)) then
							TABLE_TableIndirection["FlatIdent_2CB11%0"] = 0;
							TABLE_TableIndirection["pPos%0"] = nil;
							while true do
								if (TABLE_TableIndirection["FlatIdent_2CB11%0"] == 0) then
									TABLE_TableIndirection["pPos%0"] = getPos(TABLE_TableIndirection["npc%0"]);
									if (TABLE_TableIndirection["pPos%0"] or (4166 == 455)) then
										TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\121\126\102\212\87\93", "\181\58\56\20")] = CFrame.new(TABLE_TableIndirection["pPos%0"] + Vector3.new(0, 0, 3), TABLE_TableIndirection["pPos%0"]);
										TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\122\161\253\139\20\69\176\232", "\119\44\196\145\228")] = Vector3.new(0, 0, 0);
									end
									break;
								end
							end
						end
						if (TABLE_TableIndirection["choiceBtn%0"] or (4449 == 2663)) then
							if (((tick() - TABLE_TableIndirection["raidStateTimer%0"]) > 0.5) or (4277 < 2989)) then
								clickButton(TABLE_TableIndirection["choiceBtn%0"]);
								pcall(function()
									TABLE_TableIndirection["VirtualInputManager%0"]:SendKeyEvent(true, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\216\125\160\96\237\161\219", "\190\147\24\217\35\130\197")].One, false, game);
									task.wait(0.05);
									TABLE_TableIndirection["VirtualInputManager%0"]:SendKeyEvent(false, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\244\95\233\193\208\94\245", "\130\191\58\144")].One, false, game);
								end);
								task.wait(1.5);
								TABLE_TableIndirection["raidStartState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\85\16\193\46\220\123\13\246\45\250", "\159\18\127\149\65");
								TABLE_TableIndirection["raidStateTimer%0"] = tick();
							end
						elseif ((tick() - TABLE_TableIndirection["raidStateTimer%0"]) <= 4) then
						else
							TABLE_TableIndirection["raidStartState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\212\231\30\232\52\1\242\246\27\227\35\58\239\204\34\206", "\110\128\130\114\141\68");
						end
						break;
					end
				end
			elseif ((TABLE_TableIndirection["raidStartState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\157\94\230\173\1\179\67\209\174\39", "\66\218\49\178\194")) or (870 >= 4149)) then
				TABLE_TableIndirection["FlatIdent_6E337%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_6E337%0"] == 1) then
						if ((2212 < 3183) and ((tick() - TABLE_TableIndirection["raidStateTimer%0"]) > 8)) then
							TABLE_TableIndirection["raidStartState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\216\199\139\140", "\33\145\163\231\233\72\221\213");
						end
						break;
					end
					if (TABLE_TableIndirection["FlatIdent_6E337%0"] == 0) then
						TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\113\121\249\249\180\15", "\106\50\63\139\152\217")] = CFrame.new(TABLE_TableIndirection["data%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\166\236\225\136\87\128", "\59\229\133\147\235")] + Vector3.new(0, 3, 0));
						TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\29\84\21\203\166\94\63\72", "\55\75\49\121\164\197")] = Vector3.new(0, 0, 0);
						TABLE_TableIndirection["FlatIdent_6E337%0"] = 1;
					end
				end
			end
		until true 
	end
end);
TABLE_TableIndirection["MissionBoardPos%0"] = Vector3.new(1303.84, 949.92, 981.48);
TABLE_TableIndirection["pveState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\147\217\135\0", "\217\218\189\235\101");
TABLE_TableIndirection["pveTargetNPC%0"] = nil;
TABLE_TableIndirection["pveStateTimer%0"] = tick();
TABLE_TableIndirection["lastSeenMob%0"] = tick();
TABLE_TableIndirection["promptDebounce%0"] = tick();
local function setPveState(newState)
	TABLE_TableIndirection["pveState%0"] = newState;
	TABLE_TableIndirection["pveStateTimer%0"] = tick();
end
TABLE_TableIndirection["PVENPCs%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\187\125\234\51\48", "\168\233\24\131\93\81")]=Vector3.new(1315.25, 879.51, -613.94),[LUAOBFUSACTOR_DECRYPT_STR_0("\118\47\39\116\254\40\183\66\48\44\49\200\58\165\64\62\48\114\242\58\164", "\214\37\95\66\17\154\95")]=Vector3.new(1490.58, 914, 915.97),[LUAOBFUSACTOR_DECRYPT_STR_0("\104\82\86\165\231\74\35\198\73\85\87\166\236", "\175\58\61\62\196\137\106\104")]=Vector3.new(2549.47, 878.12, -71.58),[LUAOBFUSACTOR_DECRYPT_STR_0("\213\66\225\254\30\23\43\246\244", "\128\145\39\149\155\125\99\66")]=Vector3.new(250.57, 896.26, 177.6),[LUAOBFUSACTOR_DECRYPT_STR_0("\24\18\89\72\42\8\18\112\32\10\83\78\40\20\90\64", "\41\65\103\50")]=Vector3.new(414.31, 953.29, 1744.79),[LUAOBFUSACTOR_DECRYPT_STR_0("\21\53\250\68\168\77\48\62", "\56\81\80\158\33\217")]=Vector3.new(1413.68, 878.74, 131.45),[LUAOBFUSACTOR_DECRYPT_STR_0("\82\25\4\95\220\175\241\22\116\23\23\95\194", "\119\26\118\112\58\176\143\188")]=Vector3.new(1985.44, 898.28, 632.28),[LUAOBFUSACTOR_DECRYPT_STR_0("\15\251\41\122\208\136\33", "\227\78\144\64\18\185")]=Vector3.new(1215.61, 882.69, -859.37),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\227\154\82\42", "\38\75\150\234")]=Vector3.new(801.96, 890.65, -711.22)};
local function getNPCPrompt(npcName)
	TABLE_TableIndirection["npcs%0"] = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\206\94\22\186", "\201\128\46\117")) or workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\91\138\199\170", "\182\21\218\132\217\88"));
	if not TABLE_TableIndirection["npcs%0"] then
		return nil;
	end
	TABLE_TableIndirection["npc%0"] = TABLE_TableIndirection["npcs%0"]:FindFirstChild(npcName);
	if TABLE_TableIndirection["npc%0"] then
		TABLE_TableIndirection["FlatIdent_935CE%0"] = 0;
		TABLE_TableIndirection["p%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_935CE%0"] == 0) then
				TABLE_TableIndirection["p%0"] = TABLE_TableIndirection["npc%0"]:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\72\245\240\76\25\186\113\243\230\100\2\184\117\247\235", "\215\24\135\159\52\112"), true);
				if ((4646 > 2992) and TABLE_TableIndirection["p%0"]) then
					return TABLE_TableIndirection["p%0"];
				end
				break;
			end
		end
	end
	for _, child in ipairs(TABLE_TableIndirection["npcs%0"]:GetChildren()) do
		if ((1434 < 3106) and string.find(string.lower(child.Name), string.lower(npcName))) then
			TABLE_TableIndirection["p%0"] = child:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\35\230\91\153\172\141\168\7\237\100\147\170\141\177\7", "\193\115\148\52\225\197\224"), true);
			if ((786 < 3023) and TABLE_TableIndirection["p%0"]) then
				return TABLE_TableIndirection["p%0"];
			end
		end
	end
	TABLE_TableIndirection["staticPos%0"] = TABLE_TableIndirection["PVENPCs%0"][npcName];
	if TABLE_TableIndirection["staticPos%0"] then
		TABLE_TableIndirection["FlatIdent_93E71%0"] = 0;
		TABLE_TableIndirection["closestPrompt%0"] = nil;
		TABLE_TableIndirection["minDist%0"] = nil;
		while true do
			if (0 == TABLE_TableIndirection["FlatIdent_93E71%0"]) then
				TABLE_TableIndirection["closestPrompt%0"], TABLE_TableIndirection["minDist%0"] = nil, 20;
				for _, child in ipairs(TABLE_TableIndirection["npcs%0"]:GetChildren()) do
					TABLE_TableIndirection["FlatIdent_4B329%0"] = 0;
					TABLE_TableIndirection["pPos%0"] = nil;
					while true do
						if (TABLE_TableIndirection["FlatIdent_4B329%0"] == 0) then
							TABLE_TableIndirection["pPos%0"] = getPos(child);
							if TABLE_TableIndirection["pPos%0"] then
								local _ok_ps, dist = pcall(function()
									return (TABLE_TableIndirection["pPos%0"] - TABLE_TableIndirection["staticPos%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\106\88\5\23\180\24\82\93\7", "\108\39\57\98\121\221")];
								end);
								if not _ok_ps then
									dist = math[LUAOBFUSACTOR_DECRYPT_STR_0("\239\34\142\254", "\156\135\87\233\155\232\138\208")];
								end
								if ((dist < TABLE_TableIndirection["minDist%0"]) or (2442 < 74)) then
									TABLE_TableIndirection["prompt%0"] = child:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\180\81\57\98\141\78\63\110\157\115\36\117\137\83\34", "\26\228\35\86"), true);
									if TABLE_TableIndirection["prompt%0"] then
										TABLE_TableIndirection["minDist%0"] = dist;
										TABLE_TableIndirection["closestPrompt%0"] = TABLE_TableIndirection["prompt%0"];
									end
								end
							end
							break;
						end
					end
				end
				TABLE_TableIndirection["FlatIdent_93E71%0"] = 1;
			end
			if (TABLE_TableIndirection["FlatIdent_93E71%0"] == 1) then
				if TABLE_TableIndirection["closestPrompt%0"] then
					return TABLE_TableIndirection["closestPrompt%0"];
				end
				break;
			end
		end
	end
	return nil;
end
TABLE_TableIndirection["cachedBoardPrompt%0"] = nil;
local function getMissionBoardPrompt()
	if ((4535 == 4535) and TABLE_TableIndirection["cachedBoardPrompt%0"] and TABLE_TableIndirection["cachedBoardPrompt%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\216\190\186\172\86\255", "\65\136\223\200\201\56\139\68")]) then
		return TABLE_TableIndirection["cachedBoardPrompt%0"];
	end
	TABLE_TableIndirection["parts%0"] = workspace:GetPartBoundsInRadius(TABLE_TableIndirection["MissionBoardPos%0"], 50);
	for _, part in ipairs(TABLE_TableIndirection["parts%0"]) do
		TABLE_TableIndirection["FlatIdent_57195%0"] = 0;
		TABLE_TableIndirection["prompt%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_57195%0"] == 0) then
				TABLE_TableIndirection["prompt%0"] = part:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\206\232\56\239\83\243\243\35\238\106\236\245\58\231\78", "\58\158\154\87\151"));
				if (TABLE_TableIndirection["prompt%0"] or (3009 <= 2105)) then
					TABLE_TableIndirection["FlatIdent_5B487%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_5B487%0"] == 0) then
							TABLE_TableIndirection["cachedBoardPrompt%0"] = TABLE_TableIndirection["prompt%0"];
							return TABLE_TableIndirection["prompt%0"];
						end
					end
				end
				break;
			end
		end
	end
	for _, desc in ipairs(workspace:GetDescendants()) do
		if ((1830 < 3669) and desc:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\214\190\225\145\0\125\62\46\255\156\252\134\4\96\35", "\90\134\204\142\233\105\16\87"))) then
			TABLE_TableIndirection["pPos%0"] = getPos(desc.Parent);
			local _ok_pm, _pm_dist = pcall(function()
				return (TABLE_TableIndirection["pPos%0"] - TABLE_TableIndirection["MissionBoardPos%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\141\38\246\173\169\51\228\167\165", "\195\192\71\145")];
			end);
			if (TABLE_TableIndirection["pPos%0"] and _ok_pm and _pm_dist and (_pm_dist < 50)) then
				TABLE_TableIndirection["FlatIdent_43917%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_43917%0"] == 0) then
						TABLE_TableIndirection["cachedBoardPrompt%0"] = desc;
						return desc;
					end
				end
			end
		end
	end
	return nil;
end
TABLE_TableIndirection["currentMissionType%0"] = nil;
TABLE_TableIndirection["currentMissionTarget%0"] = nil;
TABLE_TableIndirection["childAddedConnection%0"] = nil;
local function setupNotificationListener()
	if (TABLE_TableIndirection["childAddedConnection%0"] or (1430 >= 3612)) then
		TABLE_TableIndirection["FlatIdent_7E46E%0"] = 0;
		while true do
			if (0 == TABLE_TableIndirection["FlatIdent_7E46E%0"]) then
				TABLE_TableIndirection["childAddedConnection%0"]:Disconnect();
				TABLE_TableIndirection["childAddedConnection%0"] = nil;
				break;
			end
		end
	end
	TABLE_TableIndirection["gui2%0"] = TABLE_TableIndirection["LocalPlayer%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\187\221\248\13\95\91\172\196\240", "\41\235\177\153\116\58"), 5);
	if ((2683 >= 2460) and not TABLE_TableIndirection["gui2%0"]) then
		return;
	end
	TABLE_TableIndirection["notifs%0"] = TABLE_TableIndirection["gui2%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\198\241\192\9\14\33\235\255\192\9\7\38\251", "\72\136\158\180\96\104"), 5);
	if (not TABLE_TableIndirection["notifs%0"] or (1804 >= 3275)) then
		return;
	end
	TABLE_TableIndirection["holder%0"] = TABLE_TableIndirection["notifs%0"]:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\50\126\205\73\63\99", "\45\90\17\161"), 5);
	if not TABLE_TableIndirection["holder%0"] then
		return;
	end
	local function parseText(txt)
		TABLE_TableIndirection["FlatIdent_94E30%0"] = 0;
		TABLE_TableIndirection["cleanTxt%0"] = nil;
		TABLE_TableIndirection["isComplete%0"] = nil;
		TABLE_TableIndirection["isCombat%0"] = nil;
		TABLE_TableIndirection["isDelivery%0"] = nil;
		TABLE_TableIndirection["isElim%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_94E30%0"] == 2) then
				TABLE_TableIndirection["isElim%0"] = not TABLE_TableIndirection["isComplete%0"] and not TABLE_TableIndirection["isCombat%0"] and not TABLE_TableIndirection["isDelivery%0"] and (string.find(TABLE_TableIndirection["cleanTxt%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\202\250\83\230\40\227\40\114\206\246\66", "\28\175\130\39\131\90\142\65")) or string.find(TABLE_TableIndirection["cleanTxt%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\113\116\182\133\220\122\121\171\141", "\181\20\24\223\232")) or string.find(TABLE_TableIndirection["cleanTxt%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\89\190\118\181\13\50", "\66\61\219\16\208\108\70")));
				if (TABLE_TableIndirection["isComplete%0"] or (1417 > 3629)) then
					TABLE_TableIndirection["FlatIdent_82627%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_82627%0"] == 0) then
							TABLE_TableIndirection["currentMissionType%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\125\167\244\155\82\173\237\142", "\235\62\200\153");
							TABLE_TableIndirection["currentMissionTarget%0"] = nil;
							break;
						end
					end
				elseif ((4795 > 402) and TABLE_TableIndirection["isCombat%0"]) then
					TABLE_TableIndirection["currentMissionType%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\121\163\175\161\91\184", "\195\58\204\194");
					TABLE_TableIndirection["currentMissionTarget%0"] = nil;
				elseif TABLE_TableIndirection["isDelivery%0"] then
					TABLE_TableIndirection["FlatIdent_23522%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_23522%0"] == 0) then
							TABLE_TableIndirection["currentMissionType%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\192\162\249\61\242\162\231\45", "\84\132\199\149");
							for npcName, _ in pairs(TABLE_TableIndirection["PVENPCs%0"]) do
								if ((4813 > 3565) and string.find(TABLE_TableIndirection["cleanTxt%0"], string.lower(npcName))) then
									TABLE_TableIndirection["currentMissionTarget%0"] = npcName;
									break;
								end
							end
							break;
						end
					end
				elseif ((3912 == 3912) and TABLE_TableIndirection["isElim%0"]) then
					TABLE_TableIndirection["FlatIdent_212D3%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_212D3%0"] == 0) then
							TABLE_TableIndirection["currentMissionType%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\10\184\143\54\232\234\244\73\42", "\61\79\212\230\91\129\132\149");
							TABLE_TableIndirection["currentMissionTarget%0"] = nil;
							break;
						end
					end
				end
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_94E30%0"] == 0) then
				TABLE_TableIndirection["cleanTxt%0"] = string.lower(txt);
				TABLE_TableIndirection["isComplete%0"] = string.find(TABLE_TableIndirection["cleanTxt%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\193\143\174\30\120\209\237\70\207\137\176\29\125\219\247\3", "\102\172\230\221\109\17\190\131")) or string.find(TABLE_TableIndirection["cleanTxt%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\231\184\196\222\224\9\98\248\224", "\157\132\215\169\174\140\108\22"));
				TABLE_TableIndirection["FlatIdent_94E30%0"] = 1;
			end
			if (TABLE_TableIndirection["FlatIdent_94E30%0"] == 1) then
				TABLE_TableIndirection["isCombat%0"] = not TABLE_TableIndirection["isComplete%0"] and string.find(TABLE_TableIndirection["cleanTxt%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\180\244\30\173\251\35", "\64\215\155\115\207\154\87\173"));
				TABLE_TableIndirection["isDelivery%0"] = not TABLE_TableIndirection["isComplete%0"] and not TABLE_TableIndirection["isCombat%0"] and (string.find(TABLE_TableIndirection["cleanTxt%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\16\188\226\30\225\112\155", "\233\116\217\142\119\151\21")) or string.find(TABLE_TableIndirection["cleanTxt%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\174\47\3\169\36\175\56\22", "\82\202\74\111\192")));
				TABLE_TableIndirection["FlatIdent_94E30%0"] = 2;
			end
		end
	end
	local function processNode(node)
		if (node:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\250\95\88\158\242\207\88\69\134", "\190\174\58\32\234")) and (node[LUAOBFUSACTOR_DECRYPT_STR_0("\3\236\44\236", "\142\87\137\84\152\83")] ~= "")) then
			TABLE_TableIndirection["FlatIdent_2AB7E%0"] = 0;
			while true do
				if (TABLE_TableIndirection["FlatIdent_2AB7E%0"] == 0) then
					parseText(node.Text);
					node:GetPropertyChangedSignal(LUAOBFUSACTOR_DECRYPT_STR_0("\180\174\35\226", "\55\224\203\91\150\174\80")):Connect(function()
						if ((2821 <= 4824) and (node[LUAOBFUSACTOR_DECRYPT_STR_0("\140\122\101\36", "\31\216\31\29\80\163\123\73")] ~= "")) then
							parseText(node.Text);
						end
					end);
					break;
				end
			end
		end
	end
	local function onChildAdded(child)
		TABLE_TableIndirection["FlatIdent_7A6E5%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_7A6E5%0"] == 1) then
				for _, desc in ipairs(child:GetDescendants()) do
					processNode(desc);
				end
				child[LUAOBFUSACTOR_DECRYPT_STR_0("\51\8\250\169\214\212\19\12\231\190\242\222\19\8\237", "\186\119\109\137\202\179")]:Connect(function(desc)
					processNode(desc);
				end);
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_7A6E5%0"] == 0) then
				task.wait(0.1);
				processNode(child);
				TABLE_TableIndirection["FlatIdent_7A6E5%0"] = 1;
			end
		end
	end
	TABLE_TableIndirection["childAddedConnection%0"] = TABLE_TableIndirection["holder%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\25\83\89\206\188\212\238\62\94\84", "\138\90\59\48\162\216\149")]:Connect(onChildAdded);
	for _, child in ipairs(TABLE_TableIndirection["holder%0"]:GetChildren()) do
		onChildAdded(child);
	end
end
TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\154\164\49\7\31\194\219\86\171\141\52\17\27\197", "\51\217\204\80\117\126\161\175")]:Connect(function()
	TABLE_TableIndirection["pveState%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\231\160\70\118", "\137\174\196\42\19\170");
	TABLE_TableIndirection["pveTargetNPC%0"] = nil;
	TABLE_TableIndirection["pveStateTimer%0"] = tick();
	TABLE_TableIndirection["lastSeenMob%0"] = tick();
	TABLE_TableIndirection["promptDebounce%0"] = tick();
	TABLE_TableIndirection["isTargetNearby%0"] = false;
	TABLE_TableIndirection["currentFarmTarget%0"] = nil;
	TABLE_TableIndirection["activeElimTarget%0"] = nil;
	TABLE_TableIndirection["currentMissionType%0"] = nil;
	TABLE_TableIndirection["currentMissionTarget%0"] = nil;
	task.spawn(setupNotificationListener);
end);
task.spawn(setupNotificationListener);
local function getHighlightedMob()
	TABLE_TableIndirection["hrp%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\94\143\230\67\178\81\47\71\111", "\34\29\231\135\49\211\50\91")] and TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\252\36\227\66\84\220\56\231\66", "\53\191\76\130\48")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\27\92\186\84\61\70\190\81\1\70\184\65\3\72\165\65", "\53\83\41\215"));
	if not TABLE_TableIndirection["hrp%0"] then
		return nil;
	end
	local closest, minDist = nil, math[LUAOBFUSACTOR_DECRYPT_STR_0("\83\183\70\77", "\197\59\194\33\40")];
	TABLE_TableIndirection["folderNames%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\161\66\171\239", "\219\237\43\221\138\135\157"),LUAOBFUSACTOR_DECRYPT_STR_0("\209\176\120\172\116\241\173", "\29\148\222\29\193"),LUAOBFUSACTOR_DECRYPT_STR_0("\205\77\45\222", "\182\128\34\79\173"),LUAOBFUSACTOR_DECRYPT_STR_0("\13\9\224\228\113\48\10\250", "\60\95\104\137\128"),LUAOBFUSACTOR_DECRYPT_STR_0("\24\70\150\111\57\122\177\76\36", "\41\86\22\213"),LUAOBFUSACTOR_DECRYPT_STR_0("\56\6\151\89\165\31\8\134\87", "\214\111\105\229\50")};
	TABLE_TableIndirection["searched%0"] = {};
	for _, fname in ipairs(TABLE_TableIndirection["folderNames%0"]) do
		TABLE_TableIndirection["folder%0"] = ((fname == LUAOBFUSACTOR_DECRYPT_STR_0("\206\39\238\94\61\233\41\255\80", "\78\153\72\156\53")) and workspace) or workspace:FindFirstChild(fname);
		if (TABLE_TableIndirection["folder%0"] and not TABLE_TableIndirection["searched%0"][TABLE_TableIndirection["folder%0"]]) then
			TABLE_TableIndirection["FlatIdent_384E6%0"] = 0;
			while true do
				if (TABLE_TableIndirection["FlatIdent_384E6%0"] == 0) then
					TABLE_TableIndirection["searched%0"][TABLE_TableIndirection["folder%0"]] = true;
					for _, mob in ipairs(TABLE_TableIndirection["folder%0"]:GetChildren()) do
						TABLE_TableIndirection["lname%0"] = string.lower(mob.Name);
						if ((1738 <= 2195) and mob:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\9\41\50\239\40", "\138\68\70\86")) and (mob ~= TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\23\64\227\19\209\234\232\49\90", "\156\84\40\130\97\176\137")]) and (TABLE_TableIndirection["lname%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\252\9\251\27\50\231", "\149\143\108\137\109\87")) and (TABLE_TableIndirection["lname%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\46\114\233\26\87\51\121", "\54\90\23\155\104")) and (TABLE_TableIndirection["lname%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\60\163\212", "\147\81\194\164\116")) and (TABLE_TableIndirection["lname%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\46\170\39\47\216\18\119\56\174", "\22\76\203\84\74\168\126")) and not TABLE_TableIndirection["Players%0"]:GetPlayerFromCharacter(mob)) then
							TABLE_TableIndirection["mHrp%0"] = mob:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\244\192\232\205\163\6\198\216\231\234\195\185\57\206\206\193", "\175\188\181\133\172\205\105"));
							TABLE_TableIndirection["mHum%0"] = mob:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\152\106\165\52\163\242\185\123", "\157\208\31\200\85\205"));
							if ((41 <= 3018) and TABLE_TableIndirection["mHrp%0"] and TABLE_TableIndirection["mHum%0"] and (TABLE_TableIndirection["mHum%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\117\253\189\62\108\123", "\63\61\152\220\82\24\19\84")] > 0)) then
								if (mob:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\175\234\40\223\39\91\169\178\147", "\218\231\131\79\183\75\50\206"), true) and not mob:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\197\26\252\248\180\229\178\233\236\56\225\239\176\248\175", "\157\149\104\147\128\221\136\219"), true)) then
									TABLE_TableIndirection["FlatIdent_32867%0"] = 0;
									TABLE_TableIndirection["ok%0"] = nil;
									TABLE_TableIndirection["dist%0"] = nil;
									while true do
										if (TABLE_TableIndirection["FlatIdent_32867%0"] == 0) then
											TABLE_TableIndirection["ok%0"], TABLE_TableIndirection["dist%0"] = pcall(function()
												return (TABLE_TableIndirection["mHrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\176\251\233\200\148\253\245\207", "\161\224\148\154")] - TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\15\244\84\246\206\95\48\245", "\54\95\155\39\159\186")])[LUAOBFUSACTOR_DECRYPT_STR_0("\230\22\176\240\194\3\162\250\206", "\158\171\119\215")];
											end);
											if (TABLE_TableIndirection["ok%0"] and TABLE_TableIndirection["dist%0"] and (TABLE_TableIndirection["dist%0"] < minDist)) then
												minDist = TABLE_TableIndirection["dist%0"];
												closest = mob;
											end
											break;
										end
									end
								end
							end
						end
					end
					break;
				end
			end
		end
	end
	return closest;
end
task.spawn(function()
	while sessionAlive() do
		task.wait(0.1);
		repeat
			if not TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\27\92\181\13\253\105\247\23\64\178\17\196\80\220", "\178\90\41\193\98\173\63")] then
				setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\14\230\245\207", "\165\71\130\153\170\169\99\100"));
				TABLE_TableIndirection["currentMissionType%0"] = nil;
				TABLE_TableIndirection["currentMissionTarget%0"] = nil;
				break;
			end
			TABLE_TableIndirection["hrp%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\33\47\49\18\3\36\36\5\16", "\96\98\71\80")] and TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\157\67\82\242\66\63\170\78\65", "\92\222\43\51\128\35")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\159\171\199\183\84\82\132\179\140\197\185\78\109\140\165\170", "\237\215\222\170\214\58\61"));
			if ((2145 <= 4104) and not TABLE_TableIndirection["hrp%0"]) then
				break;
			end
			if ((2689 < 4845) and (TABLE_TableIndirection["pveState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\7\38\9\203", "\69\78\66\101\174\186\221\202"))) then
				if ((TABLE_TableIndirection["currentMissionType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\160\9\171\9\130\18", "\107\227\102\198")) or (2322 > 2622)) then
					if ((tick() - TABLE_TableIndirection["pveStateTimer%0"]) > 3) then
						showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\117\246\18\29\166\81\40\86\201\56\83", "\91\37\160\87\61\235\56"), LUAOBFUSACTOR_DECRYPT_STR_0("\107\74\94\209\55\252\88\28\95\88\133\61\254\90\93\89\23\230\49\255\93\93\95\25\139\112", "\63\60\43\55\165\94\146"), true);
						TABLE_TableIndirection["pveStateTimer%0"] = tick();
					end
					break;
				elseif (((TABLE_TableIndirection["currentMissionType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\59\83\227\208\87\74\189\184", "\193\127\54\143\185\33\47\207")) and TABLE_TableIndirection["currentMissionTarget%0"]) or (4534 == 2082)) then
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\41\70\69\223\252\221\31\90", "\184\109\35\41\182\138"));
					TABLE_TableIndirection["pveTargetNPC%0"] = TABLE_TableIndirection["currentMissionTarget%0"];
					break;
				elseif ((TABLE_TableIndirection["currentMissionType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\26\224\160\119\231\132\184\43\233", "\217\95\140\201\26\142\234")) or (1571 > 1867)) then
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\218\126\124\62\206\232\115\112\58\245\255\107", "\154\141\31\21\74"));
					break;
				end
				TABLE_TableIndirection["prompt%0"] = getMissionBoardPrompt();
				if (TABLE_TableIndirection["prompt%0"] or (2654 >= 2996)) then
					TABLE_TableIndirection["pPos%0"] = getPos(TABLE_TableIndirection["prompt%0"].Parent) or TABLE_TableIndirection["MissionBoardPos%0"];
					TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\205\14\80\246\25\64", "\37\142\72\34\151\116")] = CFrame.new(TABLE_TableIndirection["pPos%0"] + Vector3.new(0, 4, 0));
					TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\132\47\143\209\37\187\62\154", "\70\210\74\227\190")] = Vector3.new(0, 0, 0);
					if ((3978 > 2104) and ((tick() - TABLE_TableIndirection["promptDebounce%0"]) > 1)) then
						TABLE_TableIndirection["FlatIdent_87A87%0"] = 0;
						while true do
							if (TABLE_TableIndirection["FlatIdent_87A87%0"] == 1) then
								TABLE_TableIndirection["currentMissionTarget%0"] = nil;
								firePromptFast(TABLE_TableIndirection["prompt%0"]);
								TABLE_TableIndirection["FlatIdent_87A87%0"] = 2;
							end
							if (TABLE_TableIndirection["FlatIdent_87A87%0"] == 2) then
								setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\217\69\226\2\226\1\19\252\64\217\19\211\30\29\224\87\238", "\114\142\36\139\118\160\110"));
								break;
							end
							if (TABLE_TableIndirection["FlatIdent_87A87%0"] == 0) then
								TABLE_TableIndirection["promptDebounce%0"] = tick();
								TABLE_TableIndirection["currentMissionType%0"] = nil;
								TABLE_TableIndirection["FlatIdent_87A87%0"] = 1;
							end
						end
					end
				else
					TABLE_TableIndirection["FlatIdent_83DDB%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_83DDB%0"] == 0) then
							TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\131\241\161\35\59\165", "\86\192\183\211\66")] = CFrame.new(TABLE_TableIndirection["MissionBoardPos%0"] + Vector3.new(0, 4, 0));
							TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\181\94\125\69\246\141\151\66", "\228\227\59\17\42\149")] = Vector3.new(0, 0, 0);
							break;
						end
					end
				end
			elseif (TABLE_TableIndirection["pveState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\155\168\126\215\142\166\118\209\168\155\114\208\188\166\121\208\169", "\163\204\201\23")) then
				if (TABLE_TableIndirection["currentMissionType%0"] ~= nil) then
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\40\199\27\66\19\204\29\100\21\195\8\66", "\38\122\162\122"));
				elseif ((tick() - TABLE_TableIndirection["pveStateTimer%0"]) > 4) then
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\0\163\235\250", "\211\73\199\135\159"));
				end
			elseif (TABLE_TableIndirection["pveState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\197\6\168\46\213\124\240\33\166\43\206\118", "\18\151\99\201\74\188")) then
				if ((2995 > 1541) and (TABLE_TableIndirection["currentMissionType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\121\1\179\35\39\195\13\68", "\127\61\100\223\74\81\166")) and TABLE_TableIndirection["currentMissionTarget%0"]) then
					TABLE_TableIndirection["FlatIdent_104FA%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_104FA%0"] == 1) then
							showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\104\251\248\143\132\81\222\206\198\166\86", "\201\56\173\189\175"), LUAOBFUSACTOR_DECRYPT_STR_0("\19\236\142\254\245\50\251\155\183\247\56\179\194", "\131\87\137\226\151") .. TABLE_TableIndirection["currentMissionTarget%0"], false);
							break;
						end
						if (TABLE_TableIndirection["FlatIdent_104FA%0"] == 0) then
							setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\149\252\5\129\34\8\75\7", "\126\209\153\105\232\84\109\57"));
							TABLE_TableIndirection["pveTargetNPC%0"] = TABLE_TableIndirection["currentMissionTarget%0"];
							TABLE_TableIndirection["FlatIdent_104FA%0"] = 1;
						end
					end
				elseif (TABLE_TableIndirection["currentMissionType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\252\215\189\77\221\215\218\160\69", "\180\185\187\212\32")) then
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\238\85\86\21\156\220\88\90\17\167\203\64", "\200\185\52\63\97"));
					showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\74\118\108\152\144\34\15\106\115\79\71", "\25\26\32\41\184\221\75\124"), LUAOBFUSACTOR_DECRYPT_STR_0("\144\204\136\35\174\187\193\149\39\168\187\128\181\47\181\178\197\149\110\129\186\213\143\42\233", "\199\213\160\225\78"), false);
				elseif ((3249 > 953) and (TABLE_TableIndirection["currentMissionType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\171\139\137\179\28\186", "\145\232\228\228\209\125\206"))) then
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\143\185\236\25\146\191\236\30\182\185\241\41\186\186\254\20", "\109\223\214\159"));
				elseif (((tick() - TABLE_TableIndirection["pveStateTimer%0"]) > 5) or (3273 > 4573)) then
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\194\1\223\35", "\169\139\101\179\70\22\117\199"));
				end
			elseif ((TABLE_TableIndirection["pveState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\23\5\91\223\124\53\44\1\66\196\90\36", "\80\64\100\50\171\40")) or (3151 < 1284)) then
				if (TABLE_TableIndirection["currentMissionType%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\104\143\210\220\42\218\73\183", "\210\43\224\191\172\70\191\61")) then
				else
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\5\86\151\213\48\60\74\151\200\18\59\125\129\205\28\44", "\125\85\57\228\161"));
					break;
				end
				TABLE_TableIndirection["_mobNearby%0"] = getHighlightedMob();
				local _distOk, _distVal = pcall(function()
					return (TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\29\50\178\166\57\52\174\161", "\207\77\93\193")] - TABLE_TableIndirection["MissionBoardPos%0"])[LUAOBFUSACTOR_DECRYPT_STR_0("\127\8\189\168\171\108\7\86\12", "\114\50\105\218\198\194\24")];
				end);
				if (TABLE_TableIndirection["_mobNearby%0"] or (_distOk and _distVal and (_distVal > 100))) then
					TABLE_TableIndirection["FlatIdent_47F4B%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_47F4B%0"] == 0) then
							setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\202\195\169\216\95\230\213\251\202", "\180\143\175\192\181\54\136"));
							TABLE_TableIndirection["lastSeenMob%0"] = tick();
							break;
						end
					end
				elseif (TABLE_TableIndirection["currentMissionType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\136\83\27\215\94\23\214\151\168", "\227\205\63\114\186\55\121\183")) then
					if (((tick() - TABLE_TableIndirection["pveStateTimer%0"]) > 20) or (1850 == 1529)) then
						setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\152\176\68\59", "\76\209\212\40\94\38\194"));
					end
				elseif ((tick() - TABLE_TableIndirection["pveStateTimer%0"]) > 15) then
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\48\203\195\115", "\100\121\175\175\22\231\216\61"));
				end
			elseif (TABLE_TableIndirection["pveState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\227\217\239\30\209\217\241\14", "\119\167\188\131")) then
				if (TABLE_TableIndirection["pveTargetNPC%0"] and TABLE_TableIndirection["PVENPCs%0"][TABLE_TableIndirection["pveTargetNPC%0"]]) then
					TABLE_TableIndirection["staticPos%0"] = TABLE_TableIndirection["PVENPCs%0"][TABLE_TableIndirection["pveTargetNPC%0"]];
					TABLE_TableIndirection["prompt%0"] = getNPCPrompt(TABLE_TableIndirection["pveTargetNPC%0"]);
					if ((821 < 2123) and TABLE_TableIndirection["prompt%0"]) then
						TABLE_TableIndirection["tPos%0"] = getPos(TABLE_TableIndirection["prompt%0"].Parent);
						if ((902 < 2325) and TABLE_TableIndirection["tPos%0"]) then
							TABLE_TableIndirection["FlatIdent_5B644%0"] = 0;
							while true do
								if (TABLE_TableIndirection["FlatIdent_5B644%0"] == 1) then
									if ((858 <= 2962) and ((tick() - TABLE_TableIndirection["promptDebounce%0"]) > 1.5)) then
										TABLE_TableIndirection["promptDebounce%0"] = tick();
										firePromptFast(TABLE_TableIndirection["prompt%0"]);
										setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\127\0\176\26\105\216\68\8\175\11\95\196\107\14\180\30\65\216\92\4", "\189\40\97\217\110\45"));
									end
									break;
								end
								if (TABLE_TableIndirection["FlatIdent_5B644%0"] == 0) then
									TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\9\224\210\90\136\47", "\229\74\166\160\59")] = CFrame.new(TABLE_TableIndirection["tPos%0"] + Vector3.new(0, 4, 0));
									TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\100\245\9\23\185\182\70\233", "\223\50\144\101\120\218")] = Vector3.new(0, 0, 0);
									TABLE_TableIndirection["FlatIdent_5B644%0"] = 1;
								end
							end
						end
					else
						TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\232\129\87\188\185\48", "\97\171\199\37\221\212\85\68")] = CFrame.new(TABLE_TableIndirection["staticPos%0"] + Vector3.new(0, 5, 0));
						TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\150\141\80\167\64\210\217\185", "\173\192\232\60\200\35\187")] = Vector3.new(0, 0, 0);
						if ((tick() - TABLE_TableIndirection["pveStateTimer%0"]) <= 20) then
						else
							setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\239\193\229\9", "\115\166\165\137\108\62\25"));
						end
					end
				else
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\37\131\119\172", "\201\108\231\27"));
				end
			elseif ((TABLE_TableIndirection["pveState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\104\174\242\84\101\68\83\166\237\69\83\88\124\160\246\80\77\68\75\170", "\33\63\207\155\32\33")) or (3946 < 1288)) then
				if ((TABLE_TableIndirection["currentMissionType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\170\232\168\90\32\140\243\160", "\76\233\135\197\42")) or (3242 == 567)) then
					TABLE_TableIndirection["FlatIdent_733BE%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_733BE%0"] == 0) then
							setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\132\201\159\219\199\189\213\159\198\229\186\226\137\195\235\173", "\138\212\166\236\175"));
							TABLE_TableIndirection["pveTargetNPC%0"] = nil;
							break;
						end
					end
				elseif ((TABLE_TableIndirection["currentMissionType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\141\133\211\45\42\135\15\29", "\100\201\224\191\68\92\226\125")) or (847 >= 1263)) then
					if ((tick() - TABLE_TableIndirection["promptDebounce%0"]) <= 1.5) then
					else
						TABLE_TableIndirection["FlatIdent_65844%0"] = 0;
						TABLE_TableIndirection["prompt%0"] = nil;
						while true do
							if (TABLE_TableIndirection["FlatIdent_65844%0"] == 1) then
								if TABLE_TableIndirection["prompt%0"] then
									TABLE_TableIndirection["FlatIdent_94DD1%0"] = 0;
									TABLE_TableIndirection["tPos%0"] = nil;
									while true do
										if (TABLE_TableIndirection["FlatIdent_94DD1%0"] == 0) then
											TABLE_TableIndirection["tPos%0"] = getPos(TABLE_TableIndirection["prompt%0"].Parent);
											if (TABLE_TableIndirection["tPos%0"] or (2253 == 1851)) then
												TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\103\62\41\89\67\249", "\23\36\120\91\56\46\156")] = CFrame.new(TABLE_TableIndirection["tPos%0"] + Vector3.new(0, 4, 0));
												TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\217\221\126\19\27\64\251\193", "\41\143\184\18\124\120")] = Vector3.new(0, 0, 0);
												firePromptFast(TABLE_TableIndirection["prompt%0"]);
											end
											break;
										end
									end
								end
								break;
							end
							if (TABLE_TableIndirection["FlatIdent_65844%0"] == 0) then
								TABLE_TableIndirection["promptDebounce%0"] = tick();
								TABLE_TableIndirection["prompt%0"] = getNPCPrompt(TABLE_TableIndirection["pveTargetNPC%0"]);
								TABLE_TableIndirection["FlatIdent_65844%0"] = 1;
							end
						end
					end
					if (((tick() - TABLE_TableIndirection["pveStateTimer%0"]) > 15) or (2087 > 2372)) then
						TABLE_TableIndirection["FlatIdent_35814%0"] = 0;
						while true do
							if (TABLE_TableIndirection["FlatIdent_35814%0"] == 0) then
								setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\135\11\70\196", "\47\206\111\42\161\50"));
								TABLE_TableIndirection["pveTargetNPC%0"] = nil;
								break;
							end
						end
					end
				elseif (((tick() - TABLE_TableIndirection["pveStateTimer%0"]) > 15) or (4445 < 4149)) then
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\227\72\201\204", "\202\170\44\165\169"));
				end
			elseif (TABLE_TableIndirection["pveState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\222\34\66\0\242\32\74\25\254", "\109\155\78\43")) then
				if (TABLE_TableIndirection["currentMissionType%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\7\186\114\10\179\26\48\176", "\127\68\213\31\122\223")) then
				else
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\3\227\30\168\30\229\30\175\58\227\3\152\54\224\12\165", "\220\83\140\109"));
					break;
				end
				if (getHighlightedMob() or (1818 == 85)) then
					TABLE_TableIndirection["lastSeenMob%0"] = tick();
				end
				if ((630 < 2127) and ((tick() - TABLE_TableIndirection["lastSeenMob%0"]) >= 25)) then
					setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\156\5\21\197", "\200\213\97\121\160\100\219\200"));
				end
			elseif (TABLE_TableIndirection["pveState%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\207\39\200\74\205\26\15\232\246\39\213\122\229\31\29\226", "\155\159\72\187\62\128\115\124")) then
			else
				TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\18\219\28\29\60\248", "\124\81\157\110")] = CFrame.new(TABLE_TableIndirection["MissionBoardPos%0"] + Vector3.new(0, 4, 0));
				TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\198\122\15\18\135\219\185\58", "\67\144\31\99\125\228\178\205")] = Vector3.new(0, 0, 0);
				if ((tick() - TABLE_TableIndirection["pveStateTimer%0"]) <= 2) then
				else
					TABLE_TableIndirection["FlatIdent_2D6F2%0"] = 0;
					while true do
						if (1 == TABLE_TableIndirection["FlatIdent_2D6F2%0"]) then
							setPveState(LUAOBFUSACTOR_DECRYPT_STR_0("\250\53\209\50", "\108\179\81\189\87\164\186\70"));
							break;
						end
						if (TABLE_TableIndirection["FlatIdent_2D6F2%0"] == 0) then
							TABLE_TableIndirection["currentMissionType%0"] = nil;
							TABLE_TableIndirection["currentMissionTarget%0"] = nil;
							TABLE_TableIndirection["FlatIdent_2D6F2%0"] = 1;
						end
					end
				end
			end
		until true 
	end
end);
task.spawn(function()
	while sessionAlive() do
		task.wait(0.1);
		repeat
			TABLE_TableIndirection["isFarming%0"] = TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\247\167\231\243\22\215\160\254\207\41\197\166\246\241", "\80\182\210\147\156")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\47\219\4\95\27\56\235\61\89\56\29\199\31\94", "\75\110\174\112\48")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\22\31\173\67\7\6\184\85\50\24\159\77\37\7", "\44\87\106\217")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\209\101\26\185\194\113\7\178", "\214\144\16\110")];
			if (not TABLE_TableIndirection["isFarming%0"] or (1938 == 2514)) then
				TABLE_TableIndirection["currentFarmTarget%0"] = nil;
				TABLE_TableIndirection["isTargetNearby%0"] = false;
				TABLE_TableIndirection["activeElimTarget%0"] = nil;
				break;
			end
			TABLE_TableIndirection["hrp%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\248\173\168\106\187\211\95\66\201", "\39\187\197\201\24\218\176\43")] and TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\6\182\61\212\70\254\149\3\55", "\102\69\222\92\166\39\157\225")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\86\48\63\204\216\63\65\122\23\61\194\194\0\73\108\49", "\40\30\69\82\173\182\80"));
			if ((4255 >= 55) and not TABLE_TableIndirection["hrp%0"]) then
				break;
			end
			TABLE_TableIndirection["closestMob%0"] = nil;
			if ((2999 > 1156) and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\147\76\207\86\22\161\179\75\207\107\36\188\182", "\213\210\57\187\57\69")] and (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\205\66\215\164\42\42\206\9\204\70\210\165", "\109\158\39\187\193\73\94\171")] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\228\173\87\140\210\236\153\230\21", "\152\183\200\59\233\177")) and not (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\162\183\162\48\221\162\108\19\176\187\165\43\254\174", "\126\227\194\214\95\155\195\30")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\96\184\231\202\67\137\197\243\102\191\225\245\123", "\136\154\21\204")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\125\101\152\178\71\124\174\98\89\98\170\188\101\125", "\27\60\16\236\221\23\16\207")])) then
				TABLE_TableIndirection["npcsFolder%0"] = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\249\17\195\241", "\130\183\97\160")) or workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\149\117\51\64", "\227\219\37\112\51\32\169"));
				if TABLE_TableIndirection["npcsFolder%0"] then
					TABLE_TableIndirection["currentFarmTarget%0"] = nil;
					TABLE_TableIndirection["isTargetNearby%0"] = false;
					break;
				end
			end
			if (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\29\228\203\167\72\250\13\40\53\226\204\161\119\194", "\101\92\145\191\200\24\172\72")] and ((TABLE_TableIndirection["pveState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\136\206\229\230\161\83\56\185\199", "\89\205\162\140\139\200\61")) or (TABLE_TableIndirection["pveState%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\150\253\171\222\149\249\174\207\177\243\176\222", "\170\193\156\194")))) then
				if ((2350 > 1155) and TABLE_TableIndirection["activeElimTarget%0"] and TABLE_TableIndirection["activeElimTarget%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\187\136\89\76\64\159", "\46\235\233\43\41")] and TABLE_TableIndirection["activeElimTarget%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\114\186\209\18\84\160\213\23", "\115\58\207\188")) and (TABLE_TableIndirection["activeElimTarget%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\141\212\6\76\45\170\200\15", "\67\197\161\107\45")][LUAOBFUSACTOR_DECRYPT_STR_0("\123\179\178\2\146\91", "\230\51\214\211\110")] > 0) and TABLE_TableIndirection["activeElimTarget%0"]:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\99\14\69\190\15\130\76\15\86", "\235\43\103\34\214\99"), true)) then
					TABLE_TableIndirection["closestMob%0"] = TABLE_TableIndirection["activeElimTarget%0"];
				else
					TABLE_TableIndirection["FlatIdent_9761C%0"] = 0;
					while true do
						if (0 == TABLE_TableIndirection["FlatIdent_9761C%0"]) then
							TABLE_TableIndirection["closestMob%0"] = getHighlightedMob();
							if TABLE_TableIndirection["closestMob%0"] then
								TABLE_TableIndirection["activeElimTarget%0"] = TABLE_TableIndirection["closestMob%0"];
							end
							break;
						end
					end
				end
			elseif ((4029 <= 4853) and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\93\102\80\81\195\32\125\106\65\76\213\45\110\126", "\76\28\19\36\62\147")]) then
				if (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\143\239\174\23\20\85\9\201\140\230\163\11\18\83", "\173\220\138\194\114\119\33\108")] and (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\101\218\176\25\215\66\218\184\44\216\87\198\185\14", "\180\54\191\220\124")] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\137\15\193\31\136\100\129\86\244", "\120\218\106\173\122\235\16\175"))) then
					TABLE_TableIndirection["targetPlayer%0"] = TABLE_TableIndirection["Players%0"]:FindFirstChild(TABLE_TableIndirection["state%0"].SelectedPlayer);
					if ((TABLE_TableIndirection["targetPlayer%0"] and TABLE_TableIndirection["targetPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\135\0\30\249\165\11\11\238\182", "\139\196\104\127")]) or (516 > 3434)) then
						TABLE_TableIndirection["FlatIdent_B6A2%0"] = 0;
						TABLE_TableIndirection["tHum%0"] = nil;
						while true do
							if (TABLE_TableIndirection["FlatIdent_B6A2%0"] == 0) then
								TABLE_TableIndirection["tHum%0"] = TABLE_TableIndirection["targetPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\243\27\164\50\209\16\177\37\194", "\64\176\115\197")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\81\226\78\16\16\118\254\71", "\126\25\151\35\113"));
								if ((4046 >= 3033) and TABLE_TableIndirection["tHum%0"] and (TABLE_TableIndirection["tHum%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\199\218\192\181\82\29", "\112\143\191\161\217\38\117\232")] > 0)) then
									TABLE_TableIndirection["closestMob%0"] = TABLE_TableIndirection["targetPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\101\192\31\91\167\242\82\205\12", "\145\38\168\126\41\198")];
								end
								break;
							end
						end
					end
				end
			elseif TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\59\50\239\112\221\34\84\30", "\61\122\71\155\31\143\67")] then
				TABLE_TableIndirection["shortestDist%0"] = math[LUAOBFUSACTOR_DECRYPT_STR_0("\217\146\243\118", "\19\177\231\148")];
				pcall(function()
					TABLE_TableIndirection["FlatIdent_97A1A%0"] = 0;
					TABLE_TableIndirection["raidFolderNames%0"] = nil;
					TABLE_TableIndirection["raidSearched%0"] = nil;
					while true do
						if (TABLE_TableIndirection["FlatIdent_97A1A%0"] == 0) then
							TABLE_TableIndirection["raidFolderNames%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\131\174\145\211", "\192\207\199\231\182\25\108\62"),LUAOBFUSACTOR_DECRYPT_STR_0("\49\48\8\94\29\59\30", "\51\116\94\109"),LUAOBFUSACTOR_DECRYPT_STR_0("\100\119\129\230", "\149\41\24\227"),LUAOBFUSACTOR_DECRYPT_STR_0("\237\171\69\173\142\186\29\204", "\127\191\202\44\201\195\213"),LUAOBFUSACTOR_DECRYPT_STR_0("\232\206\123\106\160\134\251\62\212", "\91\166\158\56\44\207\234\159"),LUAOBFUSACTOR_DECRYPT_STR_0("\248\218\109\1\14\95\44\204\208", "\77\175\181\31\106\125\47")};
							TABLE_TableIndirection["raidSearched%0"] = {};
							TABLE_TableIndirection["FlatIdent_97A1A%0"] = 1;
						end
						if (TABLE_TableIndirection["FlatIdent_97A1A%0"] == 1) then
							for _, fname in ipairs(TABLE_TableIndirection["raidFolderNames%0"]) do
								TABLE_TableIndirection["FlatIdent_49DA6%0"] = 0;
								TABLE_TableIndirection["folder%0"] = nil;
								while true do
									if (TABLE_TableIndirection["FlatIdent_49DA6%0"] == 0) then
										TABLE_TableIndirection["folder%0"] = ((fname == LUAOBFUSACTOR_DECRYPT_STR_0("\27\207\243\247\178\60\193\226\249", "\193\76\160\129\156")) and workspace) or workspace:FindFirstChild(fname);
										if ((TABLE_TableIndirection["folder%0"] and not TABLE_TableIndirection["raidSearched%0"][TABLE_TableIndirection["folder%0"]]) or (2719 <= 1447)) then
											TABLE_TableIndirection["raidSearched%0"][TABLE_TableIndirection["folder%0"]] = true;
											for _, mob in ipairs(TABLE_TableIndirection["folder%0"]:GetChildren()) do
												TABLE_TableIndirection["FlatIdent_5C892%0"] = 0;
												TABLE_TableIndirection["lname%0"] = nil;
												while true do
													if (TABLE_TableIndirection["FlatIdent_5C892%0"] == 0) then
														TABLE_TableIndirection["lname%0"] = string.lower(mob.Name);
														if (mob:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\246\36\64\88\143", "\233\187\75\36\61\227\178\235")) and (mob ~= TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\123\72\231\188\89\67\242\171\74", "\206\56\32\134")]) and (TABLE_TableIndirection["lname%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\43\24\3\27\183\154", "\232\88\125\113\109\210")) and (TABLE_TableIndirection["lname%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\73\249\87\35\203\170\118", "\86\61\156\37\81\170\195\24")) and (TABLE_TableIndirection["lname%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\48\204\214", "\69\93\173\166\162\106")) and (TABLE_TableIndirection["lname%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\222\200\159\42\251\185\180\206\217", "\186\188\169\236\79\139\213\213")) and not TABLE_TableIndirection["Players%0"]:GetPlayerFromCharacter(mob)) then
															if ((mob:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\248\41\20\220\138\223\53\29\239\139\223\40\41\220\150\196", "\228\176\92\121\189")) and mob:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\255\70\207\239\74\216\90\198", "\36\183\51\162\142")) and (mob[LUAOBFUSACTOR_DECRYPT_STR_0("\145\60\177\130\244\247\132\189", "\237\217\73\220\227\154\152")][LUAOBFUSACTOR_DECRYPT_STR_0("\134\221\239\26\196\202", "\96\206\184\142\118\176\162\177")] > 0)) or (4134 < 3926)) then
																if (not string.find(TABLE_TableIndirection["lname%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\208\57\198\205\59\143\18", "\138\184\86\181\185\90\232\119")) and not mob:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\70\59\139\250\132\218\127\61\157\210\159\216\123\57\144", "\183\22\73\228\130\237"), true)) then
																	local _ok_d, _dist_d = pcall(function()
																		return (mob[LUAOBFUSACTOR_DECRYPT_STR_0("\243\165\2\126\55\176\37\39\233\191\0\107\9\190\62\55", "\67\187\208\111\31\89\223\76")][LUAOBFUSACTOR_DECRYPT_STR_0("\118\138\207\143\82\140\211\136", "\230\38\229\188")] - TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\218\15\163\117\254\9\191\114", "\28\138\96\208")])[LUAOBFUSACTOR_DECRYPT_STR_0("\10\180\36\224\38\1\162\35\176", "\215\71\213\67\142\79\117")];
																	end);
																	if ((_ok_d and _dist_d and (_dist_d < TABLE_TableIndirection["shortestDist%0"])) or (164 >= 2785)) then
																		TABLE_TableIndirection["shortestDist%0"] = _dist_d;
																		TABLE_TableIndirection["closestMob%0"] = mob;
																	end
																end
															end
														end
														break;
													end
												end
											end
										end
										break;
									end
								end
							end
							break;
						end
					end
				end);
			elseif (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\208\250\30\51\151\240\253\7\15\168\226\251\15\49", "\209\145\143\106\92")] or (525 == 2109)) then
				TABLE_TableIndirection["shortestDist%0"] = math[LUAOBFUSACTOR_DECRYPT_STR_0("\43\151\216\55", "\177\67\226\191\82\196\64")];
				pcall(function()
					TABLE_TableIndirection["liveFolder%0"] = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\228\169\50\118", "\25\168\192\68\19\168\138\170")) or workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\110\182\71\225", "\214\35\217\37\146\92")) or workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\117\246\132\115\193\52\67", "\81\48\152\225\30\168"));
					if not TABLE_TableIndirection["liveFolder%0"] then
						return;
					end
					for _, mob in ipairs(TABLE_TableIndirection["liveFolder%0"]:GetChildren()) do
						if (string.lower(mob.Name) == LUAOBFUSACTOR_DECRYPT_STR_0("\203\89\104\202\66\254", "\140\184\60\26\188\39")) then
						elseif ((33 == 33) and mob:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\86\10\68\91\80", "\30\27\101\32\62\60\112")) and mob:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\242\188\91\70\34\213\160\82\117\35\213\189\102\70\62\206", "\76\186\201\54\39")) and mob:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\56\214\66\180\4\18\62\20", "\87\112\163\47\213\106\125")) and (mob[LUAOBFUSACTOR_DECRYPT_STR_0("\5\204\50\93\35\214\54\88", "\60\77\185\95")][LUAOBFUSACTOR_DECRYPT_STR_0("\50\161\255\40\14\172", "\68\122\196\158")] > 0) and not TABLE_TableIndirection["Players%0"]:GetPlayerFromCharacter(mob)) then
							if not mob:FindFirstChildWhichIsA(LUAOBFUSACTOR_DECRYPT_STR_0("\255\186\120\251\124\9\251\219\177\71\241\122\9\226\219", "\146\175\200\23\131\21\100"), true) then
								TABLE_TableIndirection["cleanName%0"] = getCleanMobName(mob.Name);
								if ((3054 <= 4015) and (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\182\183\167\77\134\166\174\76\168\189\169\91", "\40\229\210\203")][LUAOBFUSACTOR_DECRYPT_STR_0("\208\175\41", "\213\145\195\69")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\138\176\199\47\228\173\176\207\7\232\187\166", "\135\217\213\171\74")][TABLE_TableIndirection["cleanName%0"]])) then
									local _ok_d, _dist_d = pcall(function()
										return (mob[LUAOBFUSACTOR_DECRYPT_STR_0("\96\32\161\113\85\162\28\169\122\58\163\100\107\172\7\185", "\205\40\85\204\16\59\205\117")][LUAOBFUSACTOR_DECRYPT_STR_0("\194\10\184\116\230\12\164\115", "\29\146\101\203")] - TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\205\215\197\59\174\244\215\216", "\218\157\184\182\82")])[LUAOBFUSACTOR_DECRYPT_STR_0("\18\84\182\213\15\57\42\81\180", "\77\95\53\209\187\102")];
									end);
									if ((1871 < 3382) and _ok_d and _dist_d and (_dist_d < TABLE_TableIndirection["shortestDist%0"])) then
										TABLE_TableIndirection["shortestDist%0"] = _dist_d;
										TABLE_TableIndirection["closestMob%0"] = mob;
									end
								end
							end
						end
					end
				end);
			end
			TABLE_TableIndirection["currentFarmTarget%0"] = TABLE_TableIndirection["closestMob%0"];
			TABLE_TableIndirection["isTargetNearby%0"] = TABLE_TableIndirection["currentFarmTarget%0"] ~= nil;
		until true 
	end
end);
trackConn(TABLE_TableIndirection["RunService%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\5\215\181\166\0\190\93\83\57", "\50\77\178\212\212\116\220\56")]:Connect(function()
	if (not sessionAlive() or not TABLE_TableIndirection["currentFarmTarget%0"]) then
		return;
	end
	TABLE_TableIndirection["hrp%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\198\70\187\85\12\205\241\75\168", "\174\133\46\218\39\109")] and TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\16\83\135\145\10\180\110\54\73", "\26\83\59\230\227\107\215")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\33\199\240\79\7\221\244\74\59\221\242\90\57\211\239\90", "\46\105\178\157"));
	if not TABLE_TableIndirection["hrp%0"] then
		return;
	end
	pcall(function()
		TABLE_TableIndirection["FlatIdent_D1AF%0"] = 0;
		TABLE_TableIndirection["tHrp%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_D1AF%0"] == 0) then
				TABLE_TableIndirection["tHrp%0"] = TABLE_TableIndirection["currentFarmTarget%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\57\84\245\93\197\142\24\69\202\83\196\149\33\64\234\72", "\225\113\33\152\60\171"));
				if TABLE_TableIndirection["tHrp%0"] then
					TABLE_TableIndirection["d%0"] = (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\119\222\170\7\100\202\183\12", "\104\54\171\222")] and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\63\168\54\247\55\15\167\67\58\180\49\236\4\0\173\66", "\39\126\221\66\152\101\110\206")]) or (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\207\229\26\118\229\8\74\247\245\28\95\212\22\70", "\43\142\144\110\25\181\100")] and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\58\197\59\199\40\218\26\201\42\218\60\223\8\196\46\198\27\211", "\182\123\176\79\168\120")]) or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\197\219\30\42\50\229\220\7\1\29\247\218\11\43\23\225", "\116\132\174\106\69")] or 7.5;
					TABLE_TableIndirection["pType%0"] = (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\215\63\109\163\129\250\43\96\169\163\208\43\107\161", "\209\150\74\25\204")] and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\157\241\103\59\237\161\164\158\185\246\67\59\206\164\177\142\179\234", "\231\220\132\19\84\189\205\197")]) or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\123\71\151\175\130\15\77\19\106\93\144\169\176\7\80\16", "\126\58\50\227\192\196\110\63")] or LUAOBFUSACTOR_DECRYPT_STR_0("\46\115\204\211\234", "\157\108\22\160\188");
					TABLE_TableIndirection["targetCFrame%0"] = nil;
					if ((1293 <= 2166) and (TABLE_TableIndirection["pType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\82\250\56\211\118", "\165\19\152\87"))) then
						TABLE_TableIndirection["targetCFrame%0"] = TABLE_TableIndirection["tHrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\21\34\73\169\139\51", "\230\86\100\59\200")] * CFrame.new(0, TABLE_TableIndirection["d%0"], 0) * CFrame.Angles(math.rad(-90), 0, 0);
					elseif ((TABLE_TableIndirection["pType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\3\29\0\239\190", "\162\65\120\108\128\201")) or (2579 < 123)) then
						TABLE_TableIndirection["targetCFrame%0"] = TABLE_TableIndirection["tHrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\167\31\254\21\31\229", "\105\228\89\140\116\114\128")] * CFrame.new(0, -TABLE_TableIndirection["d%0"], 0) * CFrame.Angles(math.rad(90), 0, 0);
					elseif (TABLE_TableIndirection["pType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\94\11\12\191", "\102\28\106\111\212\87")) then
						TABLE_TableIndirection["targetCFrame%0"] = TABLE_TableIndirection["tHrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\31\22\70\17\49\53", "\112\92\80\52")] * CFrame.new(0, 0, TABLE_TableIndirection["d%0"]);
					elseif ((TABLE_TableIndirection["pType%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\159\74\172\138\95", "\142\217\56\195\228\43")) or (846 >= 2368)) then
						TABLE_TableIndirection["targetCFrame%0"] = TABLE_TableIndirection["tHrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\127\243\178\76\92\89", "\49\60\181\192\45")] * CFrame.new(0, 0, -TABLE_TableIndirection["d%0"]) * CFrame.Angles(0, math.rad(180), 0);
					end
					TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\17\160\212\70\239\13\51\188", "\100\71\197\184\41\140")] = Vector3.new(0, 0, 0);
					TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\129\201\56\164\175\234", "\197\194\143\74")] = TABLE_TableIndirection["targetCFrame%0"];
				end
				break;
			end
		end
	end);
end));
task.spawn(function()
	while sessionAlive() do
		TABLE_TableIndirection["FlatIdent_48BB9%0"] = 0;
		TABLE_TableIndirection["isFarming%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_48BB9%0"] == 1) then
				if ((TABLE_TableIndirection["isFarming%0"] and TABLE_TableIndirection["isTargetNearby%0"] and not TABLE_TableIndirection["UserInputService%0"]:IsMouseButtonPressed(Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\183\80\231\205\101\69\43\204\150\119\251\207\73", "\185\226\35\130\191\44\43\91")].MouseButton1) and not TABLE_TableIndirection["mouseOverHub%0"] and not TABLE_TableIndirection["hubMouseDown%0"]) or (4012 <= 3358)) then
					pcall(function()
						TABLE_TableIndirection["FlatIdent_29C18%0"] = 0;
						TABLE_TableIndirection["char%0"] = nil;
						while true do
							if (TABLE_TableIndirection["FlatIdent_29C18%0"] == 1) then
								for _, tool in ipairs(TABLE_TableIndirection["char%0"]:GetChildren()) do
									if ((1494 <= 3005) and tool:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\42\212\236\249", "\34\126\187\131\149"))) then
										tool:Activate();
									end
								end
								TABLE_TableIndirection["VirtualInputManager%0"]:SendMouseButtonEvent(0, 50, 0, true, game, 1);
								TABLE_TableIndirection["FlatIdent_29C18%0"] = 2;
							end
							if (TABLE_TableIndirection["FlatIdent_29C18%0"] == 0) then
								TABLE_TableIndirection["char%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\29\46\254\59\125\61\50\250\59", "\28\94\70\159\73")];
								if not TABLE_TableIndirection["char%0"] then
									return;
								end
								TABLE_TableIndirection["FlatIdent_29C18%0"] = 1;
							end
							if (TABLE_TableIndirection["FlatIdent_29C18%0"] == 2) then
								task.wait(0.01);
								TABLE_TableIndirection["VirtualInputManager%0"]:SendMouseButtonEvent(0, 50, 0, false, game, 1);
								break;
							end
						end
					end);
				end
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_48BB9%0"] == 0) then
				task.wait(0.05);
				TABLE_TableIndirection["isFarming%0"] = TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\62\106\44\202\138\30\109\53\246\181\12\107\61\200", "\204\127\31\88\165")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\172\216\205\54\225\187\232\244\48\194\158\196\214\55", "\177\237\173\185\89")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\123\66\39\242\59\245\197\176\95\69\21\252\25\244", "\201\58\55\83\157\107\153\164")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\19\195\110\43\211\34\36\54", "\77\82\182\26\68\129\67")];
				TABLE_TableIndirection["FlatIdent_48BB9%0"] = 1;
			end
		end
	end
end);
task.spawn(function()
	TABLE_TableIndirection["keys%0"] = {Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\199\187\105\52\227\186\117", "\119\140\222\16")]['E'],Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\57\118\64\106\184\3\190", "\219\114\19\57\41\215\103")]['R'],Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\29\80\180\235\251\50\80", "\148\86\53\205\168")]['Z'],Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\252\202\177\86\252\85\210", "\49\183\175\200\21\147")]['X'],Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\118\51\55\50\193\235\88", "\143\61\86\78\113\174")]['C'],Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\13\88\17\159\66\177\35", "\213\70\61\104\220\45")]['V']};
	while true do
		task.wait(0.1);
		TABLE_TableIndirection["isFarming%0"] = TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\14\6\38\223\245\46\1\63\227\202\60\7\55\221", "\179\79\115\82\176")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\231\156\229\85\35\240\172\220\83\0\213\128\254\84", "\115\166\233\145\58")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\96\42\194\221\137\75\64\38\211\192\159\70\83\50", "\39\33\95\182\178\217")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\29\49\222\182\247\33\53\32", "\64\92\68\170\217\165")];
		if ((TABLE_TableIndirection["isFarming%0"] and TABLE_TableIndirection["isTargetNearby%0"]) or (3111 == 2134)) then
			for _, k in ipairs(TABLE_TableIndirection["keys%0"]) do
				if (not (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\53\43\93\184\50\63\91\186\39\39\90\163\17\51", "\215\116\94\41")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\202\88\24\24\27\211\154\198\68\31\4\34\234\177", "\223\139\45\108\119\75\133")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\86\163\53\220\7\123\183\56\214\37\81\183\51\222", "\87\23\214\65\179")] or TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\214\25\241\186\197\13\236\177", "\213\151\108\133")]) or not TABLE_TableIndirection["isTargetNearby%0"]) then
					break;
				end
				if ((2355 == 2355) and TABLE_TableIndirection["UserInputService%0"]:IsMouseButtonPressed(Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\40\242\190\172\55\22\13\244\175\138\7\8\24", "\120\125\129\219\222\126")].MouseButton1)) then
					break;
				end
				TABLE_TableIndirection["VirtualInputManager%0"]:SendKeyEvent(true, k, false, game);
				task.wait(0.02);
				TABLE_TableIndirection["VirtualInputManager%0"]:SendKeyEvent(false, k, false, game);
				task.wait(0.08);
			end
		end
	end
end);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\204\225\17\152\57\235\233", "\135\154\136\98\237\88")], LUAOBFUSACTOR_DECRYPT_STR_0("\12\191\183\131\243\90\106\172\58\153\134\207\166", "\197\73\236\231\163\213\122\60"));
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\110\26\97\144\164\209\80", "\35\56\115\18\229\197\189")], LUAOBFUSACTOR_DECRYPT_STR_0("\140\162\255\52\8\8\252\139\205\29", "\122\220\206\158\77\109"), LUAOBFUSACTOR_DECRYPT_STR_0("\158\129\225", "\60\219\210\177\217\185\226"), function(val)
	if (val or (588 <= 432)) then
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\9\178\187\251\62\183\187", "\142\95\219\200"), LUAOBFUSACTOR_DECRYPT_STR_0("\228\234\114\34\177\77\148\190\251\251\101\41\185\77\247\205\231\190\118\34\180\15\222\251\211\176", "\158\183\158\19\76\213\109\178"), false);
	else
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\205\217\185\146\183\16\232", "\124\155\176\202\231\214"), LUAOBFUSACTOR_DECRYPT_STR_0("\7\212\153\88\54\245\168\27\41\238\167\31\98\227\160\11\35\229\165\29\38\169", "\120\66\135\201"), false);
	end
end);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\225\118\218\52\202\218\97\194", "\186\181\19\182\81")], LUAOBFUSACTOR_DECRYPT_STR_0("\99\178\215\124\143\244\146\64\83\178\213\112\132\186\173", "\47\48\211\161\25\235\212\222"));
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\158\4\9\136\169\192\60\190", "\78\202\97\101\237\217\175")], LUAOBFUSACTOR_DECRYPT_STR_0("\82\127\207\111\144\52\116\62\235\126\137\35\97\113\205\111\197\119", "\70\17\30\191\27\229"), function()
	TABLE_TableIndirection["hrp%0"] = (TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\39\132\233\94\5\143\252\73\22", "\44\100\236\136")] or TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\217\35\136\105\47\242\225\119\232\10\141\127\43\245", "\18\154\75\233\27\78\145\149")]:Wait()):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\250\145\116\85\209\243\167\246\224\139\118\64\239\253\188\230", "\146\178\228\25\52\191\156\206"), 2);
	if TABLE_TableIndirection["hrp%0"] then
		TABLE_TableIndirection["FlatIdent_7C7BE%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_7C7BE%0"] == 0) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\63\117\54\248", "\201\115\26\85")] = TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\19\117\80\81\201\237\219\45", "\180\67\26\35\56\189\132")];
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\15\104\204\194\234\21\158", "\237\92\29\175\161\143\102"), LUAOBFUSACTOR_DECRYPT_STR_0("\3\79\248\199\223\56\88\224\130\158\119\89\245\212\202\51\4", "\175\87\42\148\162"), false);
				break;
			end
		end
	end
end);
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\226\176\90\18\87\217\167\66", "\39\182\213\54\119")], LUAOBFUSACTOR_DECRYPT_STR_0("\113\69\182\222\52\64\65\230\254\36\94\65\182\197\51\70\4\244", "\65\50\36\198\170"), function()
	TABLE_TableIndirection["FlatIdent_9072E%0"] = 0;
	TABLE_TableIndirection["hrp%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_9072E%0"] == 0) then
			TABLE_TableIndirection["hrp%0"] = (TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\245\120\91\27\164\55\168\225\196", "\132\182\16\58\105\197\84\220")] or TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\170\27\76\110\25\166\227\140\1\108\120\28\160\243", "\151\233\115\45\28\120\197")]:Wait()):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\150\219\69\77\176\193\65\72\140\193\71\88\142\207\90\88", "\44\222\174\40"), 2);
			if ((4797 >= 3895) and TABLE_TableIndirection["hrp%0"]) then
				TABLE_TableIndirection["FlatIdent_2D245%0"] = 0;
				while true do
					if (0 == TABLE_TableIndirection["FlatIdent_2D245%0"]) then
						TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\30\83\113\100", "\43\82\60\18\86\72")] = TABLE_TableIndirection["hrp%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\23\42\103\168\110\162\40\43", "\203\71\69\20\193\26")];
						showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\215\169\48\51\214\251\41", "\90\132\220\83\80\179\136"), LUAOBFUSACTOR_DECRYPT_STR_0("\37\125\6\164\26\213\3\108\74\243\74\201\16\110\15\165\68", "\186\113\24\106\193\106"), false);
						break;
					end
				end
			end
			break;
		end
	end
end);
createDivider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\129\140\218\131\165\134\196\146", "\230\213\233\182")]);
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\248\137\10\254\220\131\20\239", "\155\172\236\102")], LUAOBFUSACTOR_DECRYPT_STR_0("\44\180\18\196\78\111\20\245\52\209\2\126\11\186\18\192\78\42", "\27\123\213\96\180\110"), function()
	if TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\132\20\240\15", "\18\200\123\147\62")] then
		smoothTeleport(TABLE_TableIndirection["state%0"].Loc1);
	else
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\44\179\239\236\219\130", "\110\98\220\155\133\184\231"), LUAOBFUSACTOR_DECRYPT_STR_0("\67\166\35\56\105\117\153\1\55\242\111\52\106\58\142\24\103\183\54\115", "\117\23\195\79\93\25\26\235"), true);
	end
end);
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\210\224\174\254\246\234\176\239", "\155\134\133\194")], LUAOBFUSACTOR_DECRYPT_STR_0("\247\76\100\99\104\212\66\54\71\45\204\72\102\124\58\212\13\36", "\72\160\45\22\19"), function()
	if TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\170\179\17\138", "\104\230\220\114\184\75\139")] then
		smoothTeleport(TABLE_TableIndirection["state%0"].Loc2);
	else
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\163\89\55\5\76\136", "\47\237\54\67\108"), LUAOBFUSACTOR_DECRYPT_STR_0("\39\71\76\2\21\251\1\86\0\85\69\253\0\2\69\10\21\224\10\12", "\148\115\34\32\103\101"), true);
	end
end);
createDivider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\145\171\113\195\100\170\188\105", "\20\197\206\29\166")]);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\125\46\17\26\197\36\242\77", "\57\41\75\125\127\181\75\128")], LUAOBFUSACTOR_DECRYPT_STR_0("\43\224\88\25\205\71\4\246", "\41\96\133\33\123\164"));
createKeybind(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\32\55\68\90\237\173\255\103", "\19\116\82\40\63\157\194\141")], LUAOBFUSACTOR_DECRYPT_STR_0("\217\5\10\248\161\76\48\249\247\9\20\243\233\24\68\173\187\59\5\238\235", "\156\155\108\100"), LUAOBFUSACTOR_DECRYPT_STR_0("\46\68\11\47", "\30\101\33\114"));
createKeybind(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\133\229\201\25\58\190\242\209", "\74\209\128\165\124")], LUAOBFUSACTOR_DECRYPT_STR_0("\106\51\222\70\18\122\228\71\68\63\192\77\90\46\144\16\8\13\209\80\88", "\34\40\90\176"), LUAOBFUSACTOR_DECRYPT_STR_0("\156\253\79\240", "\85\215\152\54\194\105"));
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\192\236\55\195\31\191\230", "\141\151\137\85\171\112\208")], LUAOBFUSACTOR_DECRYPT_STR_0("\104\50\105\174\67\41\126\237\123\62\120\165\67\52\113", "\205\44\91\26"));
TABLE_TableIndirection["webhookBox%0"] = createTextBox(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\203\76\8\128\239\211\168", "\115\156\41\106\232\128\188\195")], LUAOBFUSACTOR_DECRYPT_STR_0("\192\25\191\228\36\145\134\69\246\20\164\243\50\145\149\73\231\31\164\238\61\145\151\126\201\89\229\175", "\44\133\119\203\129\86\177\194"), function(txt)
	TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\245\255\227\161\51\205\241\212\155\16", "\92\162\154\129\201")] = txt;
end);
TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\97\122\187\22\19\139\195\135\70", "\226\53\31\195\98\81\228\187")][LUAOBFUSACTOR_DECRYPT_STR_0("\113\195\220\85\218\73\205\235\111\249", "\181\38\166\190\61")] = function()
	TABLE_TableIndirection["webhookBox%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\206\134\238\37", "\81\154\227\150")] = TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\156\168\191\225\9\123\160\152\143\197", "\20\203\205\221\137\102")];
end;
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\186\0\60\181\130\10\53", "\221\237\101\94")], LUAOBFUSACTOR_DECRYPT_STR_0("\5\19\177\4\199\39\193\163\57\25\173\27", "\193\81\118\194\112\231\112\164"), function()
	if (not TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\96\67\8\208\88\73\1\237\101\106", "\184\55\38\106")] or (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\195\116\120\112\202\182\138\193\67\86", "\225\148\17\26\24\165\217")] == "")) then
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\99\39\66\38\179", "\193\38\85\48\73"), LUAOBFUSACTOR_DECRYPT_STR_0("\71\208\189\7\71\182\92\35\121\200\189\20\20\178\92\17\114\222\176\9\91\184\92\19\69\240\248\0\93\161\15\50\57", "\70\23\188\216\102\52\211\124"), true);
		return;
	end
	TABLE_TableIndirection["payload%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\186\211\231\173\58\43\10\170", "\103\207\160\130\223\84\74")]=LUAOBFUSACTOR_DECRYPT_STR_0("\192\184\22\29\181\133\151\202\172\16\84\140\135\213\234\182\29\31", "\183\130\217\114\116\219\226"),[LUAOBFUSACTOR_DECRYPT_STR_0("\116\4\28\43\198\103\45\8\45\203", "\167\21\114\125\95")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\0\25\94\153\106\129\91\4\0\131\61\201\1\31\0\137\63\195\91\42\68\164\104\156\22\37\0\154\62\201", "\80\174\116\109\46\234"),[LUAOBFUSACTOR_DECRYPT_STR_0("\32\213\22\169\202\54", "\174\69\184\116\204")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\17\90\147\117\226", "\57\101\51\231\25\135\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\10\226\221\65\168\243\54\167\235\76\180\232", "\156\93\135\191\41\199"),[LUAOBFUSACTOR_DECRYPT_STR_0("\75\21\159\5\170\197\95\4\133\9\182", "\172\47\112\236\102\216")]=LUAOBFUSACTOR_DECRYPT_STR_0("\34\161\111\34\19\146\61\197\95\62\5\143\111\229\22\26\3\130\117\238\89\38\70\137\110\161\85\34\8\134\116\230\67\63\3\132\61\226\89\63\20\133\126\245\90\52\71", "\224\29\129\54\77\102"),[LUAOBFUSACTOR_DECRYPT_STR_0("\82\131\250\35\67", "\76\49\236\150")]=16020172}}};
	TABLE_TableIndirection["requestFunc%0"] = (syn and syn[LUAOBFUSACTOR_DECRYPT_STR_0("\151\225\106\29\221\150\240", "\184\229\132\27\104")]) or (http and http[LUAOBFUSACTOR_DECRYPT_STR_0("\172\196\17\175\249\102\70", "\220\222\161\96\218\156\21\50")]) or http_request or (fluxus and fluxus[LUAOBFUSACTOR_DECRYPT_STR_0("\84\50\4\3\203\235\101", "\17\38\87\117\118\174\152")]) or request;
	if TABLE_TableIndirection["requestFunc%0"] then
		TABLE_TableIndirection["FlatIdent_90135%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_90135%0"] == 0) then
				pcall(function()
					TABLE_TableIndirection["requestFunc%0"]({[LUAOBFUSACTOR_DECRYPT_STR_0("\35\163\37", "\37\118\209\73\26\131")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\222\92\166\118\83\230\82\145\76\112", "\60\137\57\196\30")],[LUAOBFUSACTOR_DECRYPT_STR_0("\110\125\108\16\136\92", "\56\35\24\24\120\231")]=LUAOBFUSACTOR_DECRYPT_STR_0("\96\156\99\127", "\143\48\211\48\43\163\22\53"),[LUAOBFUSACTOR_DECRYPT_STR_0("\103\247\81\230\10\225\246", "\134\47\146\48\130\111\147\133")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\41\61\90\21\23\81\165\71\6\77\17\23", "\209\106\82\52\97\114\63")]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\99\63\66\174\112\46\90\174\124\33\1\173\96\32\64", "\46\199\19\79")},[LUAOBFUSACTOR_DECRYPT_STR_0("\246\196\181\155", "\236\180\171\209\226\144")]=TABLE_TableIndirection["HttpService%0"]:JSONEncode(TABLE_TableIndirection["payload%0"])});
				end);
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\50\24\91\11\124\118\69", "\46\101\125\57\99\19\25"), LUAOBFUSACTOR_DECRYPT_STR_0("\116\211\14\244\252\82\211\12\245\185\83\194\93\243\185\78\194\93\244\179\0\242\20\243\191\79\196\25\174", "\220\32\182\125\128"), false);
				break;
			end
		end
	else
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\200\234\25\210\230", "\148\141\152\107\189"), "Your executor doesn't support Webhook Requests.", true);
	end
end);
createDivider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\64\225\95\90\232\177\124", "\222\23\132\61\50\135")]);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\155\23\252\89\163\29\245", "\49\204\114\158")], LUAOBFUSACTOR_DECRYPT_STR_0("\149\249\29\184\67\119\165\171\56\186\92\115", "\18\193\139\124\219\40"));
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\62\137\87\118\79\236\54", "\93\105\236\53\30\32\131")], LUAOBFUSACTOR_DECRYPT_STR_0("\34\88\67\20\88\85\0\48\83\64\30\91\95\75", "\32\103\54\34\118\52\48"), LUAOBFUSACTOR_DECRYPT_STR_0("\153\53\117\162\184\186\77\139\62\118\168\187\176\66", "\38\206\80\23\202\215\213"));
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\56\41\24\197\22\0\39", "\121\111\76\122\173")], LUAOBFUSACTOR_DECRYPT_STR_0("\237\239\244\21\110", "\40\160\128\154\112\23\224"), LUAOBFUSACTOR_DECRYPT_STR_0("\123\249\218\113\215\201\11\56\67\242\221\96", "\117\44\156\184\25\184\166\96"));
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\135\116\22\62\191\126\31", "\86\208\17\116")], LUAOBFUSACTOR_DECRYPT_STR_0("\109\135\5\228\245", "\155\33\226\115\129\153\170"), LUAOBFUSACTOR_DECRYPT_STR_0("\79\122\45\39\236\255\169\84\122\57\42\239", "\194\24\31\79\79\131\144"));
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\126\168\38\1\91\7\74", "\178\41\205\68\105\52\104\33")], LUAOBFUSACTOR_DECRYPT_STR_0("\233\64\34\144\236\139\26\66\223\70\51\134\234", "\45\170\40\71\227\152\171\89"), LUAOBFUSACTOR_DECRYPT_STR_0("\56\192\136\235\57\122\4\230\130\230\37\97\28", "\21\111\165\234\131\86"));
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\0\246\202\174\56\252\195", "\198\87\147\168")], LUAOBFUSACTOR_DECRYPT_STR_0("\96\223\50\245\151\99\29\65\203\55\229\196", "\120\50\190\91\145\183\49"), LUAOBFUSACTOR_DECRYPT_STR_0("\32\195\179\251\45\24\205\131\242\43\19", "\66\119\166\209\147"));
createSlider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\198\0\175\6\178\254\14", "\221\145\101\205\110")], LUAOBFUSACTOR_DECRYPT_STR_0("\147\23\95\83\195\138\16\69\81\145\181\31\93\20\203\142\23\95\65\151\166\13\24", "\227\195\126\49\52"), LUAOBFUSACTOR_DECRYPT_STR_0("\209\122\242\162\173\9\248\207\113\228\175\176\16\242\234", "\147\134\31\144\202\194\102"), 1, 60);
TABLE_TableIndirection["lastWebhookTime%0"] = 0;
TABLE_TableIndirection["wasWebhookEnabled%0"] = false;
task.spawn(function()
	while sessionAlive() do
		task.wait(1);
		if ((3577 == 3577) and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\223\61\184\203\231\55\177\230\230\57\184\207\237\60", "\163\136\88\218")] and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\222\76\42\228\160\230\66\29\222\131", "\207\137\41\72\140")] and (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\48\85\5\250\31\23\169\50\98\43", "\194\103\48\103\146\112\120")] ~= "")) then
			if ((3794 > 3693) and not TABLE_TableIndirection["wasWebhookEnabled%0"]) then
				TABLE_TableIndirection["wasWebhookEnabled%0"] = true;
				TABLE_TableIndirection["interval%0"] = tonumber(TABLE_TableIndirection["state%0"].WebhookInterval) or 1;
				TABLE_TableIndirection["lastWebhookTime%0"] = tick() - (TABLE_TableIndirection["interval%0"] * 60);
			end
			TABLE_TableIndirection["interval%0"] = tonumber(TABLE_TableIndirection["state%0"].WebhookInterval) or 1;
			if ((tick() - TABLE_TableIndirection["lastWebhookTime%0"]) < (TABLE_TableIndirection["interval%0"] * 60)) then
			else
				TABLE_TableIndirection["FlatIdent_78D43%0"] = 0;
				TABLE_TableIndirection["embeds%0"] = nil;
				while true do
					if (TABLE_TableIndirection["FlatIdent_78D43%0"] == 0) then
						TABLE_TableIndirection["lastWebhookTime%0"] = tick();
						TABLE_TableIndirection["embeds%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\182\202\213\58\167", "\86\194\163\161")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\85\253\89\206\253\22\129\65\251\16\220\186\116\160\78\248\66\210\255\22\133\93\247\85\193\253\83\233\96\235\81\195\241\83\187", "\54\201\52\153\48\160\154"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\194\9\39\11", "\122\124\173\101\72\121\123\141")]=16020172,[LUAOBFUSACTOR_DECRYPT_STR_0("\237\182\13\12\58\1", "\201\139\223\104\96\94\114\46")]={},[LUAOBFUSACTOR_DECRYPT_STR_0("\4\242\79\38\117\93", "\47\98\157\32\82\16")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\199\227\211\170", "\169\179\134\171\222\231\149\224")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\155\17\118\51\139\140\181\16\172\18\50\10\151\142\248\49\172\29\50\119\197", "\88\217\112\18\90\229\235\149") .. TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\102\209\41\161", "\230\40\176\68\196\122")])},[LUAOBFUSACTOR_DECRYPT_STR_0("\208\233\42\38\26\77\27\201\240", "\122\164\128\71\67\105\57")]=DateTime.now():ToIsoDate()}};
						TABLE_TableIndirection["FlatIdent_78D43%0"] = 1;
					end
					if (1 == TABLE_TableIndirection["FlatIdent_78D43%0"]) then
						pcall(function()
							TABLE_TableIndirection["FlatIdent_4E54D%0"] = 0;
							TABLE_TableIndirection["sd%0"] = nil;
							while true do
								if (TABLE_TableIndirection["FlatIdent_4E54D%0"] == 0) then
									TABLE_TableIndirection["sd%0"] = TABLE_TableIndirection["LocalPlayer%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\220\216\131\169\179\162\58\237\192\131", "\126\140\180\226\208\214\208")) and TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\211\116\18\107\73\66\124\140\247\121", "\237\131\24\115\18\44\48\56")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\194\54\185\64\83\240\46\183", "\23\145\90\214\52"));
									if ((TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\76\140\17\58\74\178\112\165\22\36\64\177", "\221\27\233\115\82\37")] and TABLE_TableIndirection["sd%0"] and TABLE_TableIndirection["sd%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\144\213\199\228\215", "\158\220\176\177\129\187\65"))) or (1275 == 4100)) then
										table.insert(TABLE_TableIndirection["embeds%0"][1].fields, {[LUAOBFUSACTOR_DECRYPT_STR_0("\250\68\95\214", "\179\148\37\50")]=LUAOBFUSACTOR_DECRYPT_STR_0("\132\55\225\59\245\61\194", "\174\187\23\173\94\131\88"),[LUAOBFUSACTOR_DECRYPT_STR_0("\176\173\169\47\66", "\59\198\204\197\90\39\196\215")]=tostring(TABLE_TableIndirection["sd%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\193\168\34\183\69", "\114\141\205\84\210\41\177\79")].Value),[LUAOBFUSACTOR_DECRYPT_STR_0("\141\51\62\131\42\214", "\99\228\93\82\234\68\179")]=true});
									end
									TABLE_TableIndirection["FlatIdent_4E54D%0"] = 1;
								end
								if (1 == TABLE_TableIndirection["FlatIdent_4E54D%0"]) then
									if ((TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\102\118\46\77\210\219\90\94\35\75\216\205", "\180\49\19\76\37\189")] and TABLE_TableIndirection["sd%0"] and TABLE_TableIndirection["sd%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\62\73\191\188\78", "\198\115\38\209\217\55\163"))) or (1591 >= 3580)) then
										table.insert(TABLE_TableIndirection["embeds%0"][1].fields, {[LUAOBFUSACTOR_DECRYPT_STR_0("\163\80\235\54", "\46\205\49\134\83\107")]=LUAOBFUSACTOR_DECRYPT_STR_0("\108\78\254\95\15\230\174", "\162\83\110\179\48\97\131\215"),[LUAOBFUSACTOR_DECRYPT_STR_0("\84\183\12\214\182", "\152\34\214\96\163\211\151\93")]=("$" .. tostring(TABLE_TableIndirection["sd%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\49\0\125\171\26", "\35\124\111\19\206\99\112")].Value)),[LUAOBFUSACTOR_DECRYPT_STR_0("\87\28\164\197\30\115", "\137\62\114\200\172\112\22")]=true});
									end
									if ((983 <= 1808) and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\249\169\61\244\7\60\226\62\198\169\44\232\27", "\125\174\204\95\156\104\83\137")] and TABLE_TableIndirection["sd%0"] and TABLE_TableIndirection["sd%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\142\32\36\208\38\179\33\32\204", "\72\199\78\82\181"))) then
										local c, r, l = 0, 0, 0;
										local success, decodedInventory = pcall(function()
											return TABLE_TableIndirection["HttpService%0"]:JSONDecode(TABLE_TableIndirection["sd%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\139\219\73\184\40\182\218\77\164", "\70\194\181\63\221")].Value);
										end);
										if (success and (type(decodedInventory) == LUAOBFUSACTOR_DECRYPT_STR_0("\7\123\49\29\160", "\158\115\26\83\113\197"))) then
											for _, item in ipairs(decodedInventory) do
												TABLE_TableIndirection["n%0"] = string.lower(item[LUAOBFUSACTOR_DECRYPT_STR_0("\95\184\205\181", "\117\17\217\160\208")] or "");
												TABLE_TableIndirection["amount%0"] = tonumber(item.Amount) or tonumber(item.Quantity) or tonumber(item.Count) or tonumber(item.Value) or 1;
												if (string.find(TABLE_TableIndirection["n%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\86\215\134\92\199\91", "\53\53\184\235\49\168")) and string.find(TABLE_TableIndirection["n%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\212\253\236\167\195", "\212\183\149\137"))) then
													c = c + TABLE_TableIndirection["amount%0"];
												elseif (string.find(TABLE_TableIndirection["n%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\176\130\78\15", "\106\194\227\60")) and string.find(TABLE_TableIndirection["n%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\35\78\26\151\52", "\228\64\38\127"))) then
													r = r + TABLE_TableIndirection["amount%0"];
												elseif (string.find(TABLE_TableIndirection["n%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\173\121\92\245\130\64\38\56\184", "\74\193\28\59\144\236\36\71")) and string.find(TABLE_TableIndirection["n%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\15\163\234\80\67", "\55\108\203\143\35"))) then
													l = l + TABLE_TableIndirection["amount%0"];
												end
											end
										end
										table.insert(TABLE_TableIndirection["embeds%0"][1].fields, {[LUAOBFUSACTOR_DECRYPT_STR_0("\250\228\222\231", "\196\148\133\179\130\212")]=LUAOBFUSACTOR_DECRYPT_STR_0("\14\54\80\54\45\154\151\94\120\120\101\59\38\157\140\12\72", "\126\49\22\19\94\72\233\227"),[LUAOBFUSACTOR_DECRYPT_STR_0("\146\54\180\145\186", "\185\228\87\216\228\223")]=string.format("```yaml\nCommon: %d\nRare: %d\nLegendary: %d\n```", c, r, l),[LUAOBFUSACTOR_DECRYPT_STR_0("\83\174\19\33\12\214", "\39\58\192\127\72\98\179\141")]=false});
									end
									break;
								end
							end
						end);
						if (#TABLE_TableIndirection["embeds%0"][1][LUAOBFUSACTOR_DECRYPT_STR_0("\200\86\5\196\180\221", "\208\174\63\96\168")] > 0) then
							TABLE_TableIndirection["FlatIdent_11006%0"] = 0;
							TABLE_TableIndirection["payload%0"] = nil;
							TABLE_TableIndirection["requestFunc%0"] = nil;
							while true do
								if (TABLE_TableIndirection["FlatIdent_11006%0"] == 1) then
									if (TABLE_TableIndirection["requestFunc%0"] or (2150 <= 1197)) then
										pcall(function()
											TABLE_TableIndirection["requestFunc%0"]({[LUAOBFUSACTOR_DECRYPT_STR_0("\179\31\62", "\234\230\109\82\217")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\201\172\46\229\241\166\39\216\204\133", "\141\158\201\76")],[LUAOBFUSACTOR_DECRYPT_STR_0("\237\177\60\80\218\196", "\181\160\212\72\56")]=LUAOBFUSACTOR_DECRYPT_STR_0("\206\34\219\228", "\211\158\109\136\176\100"),[LUAOBFUSACTOR_DECRYPT_STR_0("\35\18\222\24\237\94\24", "\44\107\119\191\124\136")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\246\7\137\43\30\204\230\152\60\158\47\30", "\146\181\104\231\95\123\162")]=LUAOBFUSACTOR_DECRYPT_STR_0("\233\250\149\210\225\233\132\202\225\229\139\145\226\249\138\208", "\190\136\138\229")},[LUAOBFUSACTOR_DECRYPT_STR_0("\217\77\194\158", "\206\155\34\166\231")]=TABLE_TableIndirection["HttpService%0"]:JSONEncode(TABLE_TableIndirection["payload%0"])});
										end);
									end
									break;
								end
								if (TABLE_TableIndirection["FlatIdent_11006%0"] == 0) then
									TABLE_TableIndirection["payload%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\44\195\47\180\36\240\87\60", "\58\89\176\74\198\74\145")]=LUAOBFUSACTOR_DECRYPT_STR_0("\63\205\223\88\63\24\227\126\8\206\155\98\37\30\183\67\14", "\54\125\172\187\49\81\127\195"),[LUAOBFUSACTOR_DECRYPT_STR_0("\187\161\202\164\172\188\140\61\168\187", "\72\218\215\171\208\205\206\211")]=LUAOBFUSACTOR_DECRYPT_STR_0("\89\198\10\41\205\255\237\151\88\156\23\52\217\176\176\150\82\221\19\118\249\175\140\128\3\208\54\119\206\171\165", "\184\49\178\126\89\190\197\194"),[LUAOBFUSACTOR_DECRYPT_STR_0("\181\23\237\200\21\163", "\113\208\122\143\173")]=TABLE_TableIndirection["embeds%0"]};
									TABLE_TableIndirection["requestFunc%0"] = (syn and syn[LUAOBFUSACTOR_DECRYPT_STR_0("\9\227\83\207\13\215\213", "\161\123\134\34\186\104\164")]) or (http and http[LUAOBFUSACTOR_DECRYPT_STR_0("\233\173\200\106\143\36\111", "\27\155\200\185\31\234\87")]) or http_request or (fluxus and fluxus[LUAOBFUSACTOR_DECRYPT_STR_0("\23\172\14\5\64\188\17", "\207\101\201\127\112\37")]) or request;
									TABLE_TableIndirection["FlatIdent_11006%0"] = 1;
								end
							end
						end
						break;
					end
				end
			end
		else
			TABLE_TableIndirection["wasWebhookEnabled%0"] = false;
		end
	end
end);
local function getTokenData()
	TABLE_TableIndirection["FlatIdent_5805E%0"] = 0;
	TABLE_TableIndirection["total%0"] = nil;
	TABLE_TableIndirection["str%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_5805E%0"] == 1) then
			pcall(function()
				TABLE_TableIndirection["rawVal%0"] = tostring(TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\140\136\60\152\123\146\112\189\144\60", "\52\220\228\93\225\30\224")][LUAOBFUSACTOR_DECRYPT_STR_0("\110\71\118\17\19\199\73\74", "\166\61\43\25\101\87")][LUAOBFUSACTOR_DECRYPT_STR_0("\192\69\5\194\132\17\67\247\74\31", "\40\146\36\108\166\208\126")].Value);
				local s, parsed = pcall(function()
					return TABLE_TableIndirection["HttpService%0"]:JSONDecode(TABLE_TableIndirection["rawVal%0"]);
				end);
				if ((3769 >= 1173) and s and (type(parsed) == LUAOBFUSACTOR_DECRYPT_STR_0("\177\116\132\217\160", "\181\197\21\230"))) then
					TABLE_TableIndirection["t%0"] = {};
					for k, v in pairs(parsed) do
						TABLE_TableIndirection["num%0"] = tonumber(v) or 0;
						TABLE_TableIndirection["total%0"] = TABLE_TableIndirection["total%0"] + TABLE_TableIndirection["num%0"];
						table.insert(TABLE_TableIndirection["t%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\158\23", "\36\180\61\91") .. k .. LUAOBFUSACTOR_DECRYPT_STR_0("\72\25\254\59\208", "\194\98\51\196\27\176") .. tostring(TABLE_TableIndirection["num%0"]) .. "`");
					end
					TABLE_TableIndirection["str%0"] = table.concat(TABLE_TableIndirection["t%0"], "\n");
				else
					TABLE_TableIndirection["str%0"] = "`" .. TABLE_TableIndirection["rawVal%0"] .. "`";
					TABLE_TableIndirection["total%0"] = tonumber(TABLE_TableIndirection["rawVal%0"]) or 0;
				end
			end);
			return TABLE_TableIndirection["total%0"], TABLE_TableIndirection["str%0"];
		end
		if (TABLE_TableIndirection["FlatIdent_5805E%0"] == 0) then
			TABLE_TableIndirection["total%0"] = 0;
			TABLE_TableIndirection["str%0"] = "0";
			TABLE_TableIndirection["FlatIdent_5805E%0"] = 1;
		end
	end
end
local function parseRaidResults(raidGui)
	TABLE_TableIndirection["rank%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\114\95\231\143\143\151\70", "\40\39\49\140\225\224\224");
	TABLE_TableIndirection["rewardsList%0"] = {};
	TABLE_TableIndirection["rewardCounts%0"] = {};
	TABLE_TableIndirection["ignoreList%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\62\35\29\66\62\34\25", "\35\76\70\106")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\177\194\190\8\227\192\184\1\179\207\178\24\166", "\108\195\163\215")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\169\71\137\10\166\184\74\133\15\244", "\134\219\38\224\110")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\204\26\249\134\184\33\242\142\221\30\227\145", "\237\190\123\144\226\152\82\135")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\233\204\51\18\211\226\215\125\22\218\232\216\47", "\182\141\185\93\117")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\87\166\183\163\14\174\42\166\3\161\186\165\21", "\210\35\195\219\198\126\193\88")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\221\38\247\148\141\43\241\140\196\36", "\237\173\74\150")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\249\95\202\90", "\195\141\54\167\63\140")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\92\23\30", "\117\96\61\121")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\123\37\161\119\57\31", "\172\24\74\204\26\86\113\106")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\37\122\245\29\81\24\167\62", "\200\80\20\150\114\60\117")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\55\63\216\113", "\145\69\94\170\20")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\2\81\71\180", "\57\103\33\46\215\158")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\250\20\171\165\214\213\247\3\181", "\177\150\113\204\192\184")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\143\31\178\56\139\5", "\80\226\102\198")]=true};
	for _, v in ipairs(raidGui:GetDescendants()) do
		if (v:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\188\40\73\187\164\44\83\170\132", "\207\232\77\49")) and v[LUAOBFUSACTOR_DECRYPT_STR_0("\54\197\91\211\2\192\77", "\186\96\172\40")] and (v[LUAOBFUSACTOR_DECRYPT_STR_0("\127\43\223\13\117\7\132\69\61\215\24\83\16\139\72\55", "\229\43\78\167\121\33\117")] < 0.9)) then
			TABLE_TableIndirection["rawTxt%0"] = string.match(v.Text, LUAOBFUSACTOR_DECRYPT_STR_0("\214\156\48\13\143\191\149\17\173\202\105\3", "\56\136\185\67\39\167\145\184"));
			if ((1485 == 1485) and TABLE_TableIndirection["rawTxt%0"] and (TABLE_TableIndirection["rawTxt%0"] ~= "")) then
				TABLE_TableIndirection["FlatIdent_60BB%0"] = 0;
				TABLE_TableIndirection["lowTxt%0"] = nil;
				while true do
					if (TABLE_TableIndirection["FlatIdent_60BB%0"] == 0) then
						TABLE_TableIndirection["lowTxt%0"] = string.lower(TABLE_TableIndirection["rawTxt%0"]);
						if (string.match(TABLE_TableIndirection["lowTxt%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\57\110\253\162\238\71\78\66\111\182\228\171\86\88", "\113\103\28\156\204\133\125")) or (3315 <= 2782)) then
							TABLE_TableIndirection["rank%0"] = string.match(TABLE_TableIndirection["rawTxt%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\135\30\67\227\132\30\80\240\132\30\95\255\132\30\90\250\132\127\46\180\170\111\57\191\242\108", "\145\217\69\17"));
						elseif ((((TABLE_TableIndirection["rawTxt%0"] == "S") or (TABLE_TableIndirection["rawTxt%0"] == "A") or (TABLE_TableIndirection["rawTxt%0"] == "B") or (TABLE_TableIndirection["rawTxt%0"] == "C") or (TABLE_TableIndirection["rawTxt%0"] == "D") or (TABLE_TableIndirection["rawTxt%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\179\7", "\134\224\84\226\158")) or (TABLE_TableIndirection["rawTxt%0"] == LUAOBFUSACTOR_DECRYPT_STR_0("\123\29\185", "\142\40\78\234\200"))) and (v[LUAOBFUSACTOR_DECRYPT_STR_0("\25\21\227\165\199\231\44\91", "\62\77\112\155\209\148\142\86")] >= 15)) or (876 >= 2964)) then
							if (TABLE_TableIndirection["rank%0"] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\1\114\91\178\59\107\94", "\220\84\28\48")) then
							else
								TABLE_TableIndirection["rank%0"] = TABLE_TableIndirection["rawTxt%0"];
							end
						elseif ((not string.find(TABLE_TableIndirection["lowTxt%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\224\240\191\254\219", "\147\190\132\214")) and not TABLE_TableIndirection["ignoreList%0"][TABLE_TableIndirection["lowTxt%0"]]) or (2232 > 2497)) then
							if (not TABLE_TableIndirection["rewardCounts%0"][TABLE_TableIndirection["rawTxt%0"]] or (2110 <= 332)) then
								TABLE_TableIndirection["rewardCounts%0"][TABLE_TableIndirection["rawTxt%0"]] = 1;
								table.insert(TABLE_TableIndirection["rewardsList%0"], TABLE_TableIndirection["rawTxt%0"]);
							else
								TABLE_TableIndirection["rewardCounts%0"][TABLE_TableIndirection["rawTxt%0"]] = TABLE_TableIndirection["rewardCounts%0"][TABLE_TableIndirection["rawTxt%0"]] + 1;
							end
						end
						break;
					end
				end
			end
		end
	end
	TABLE_TableIndirection["rewardLines%0"] = {};
	for _, r in ipairs(TABLE_TableIndirection["rewardsList%0"]) do
		TABLE_TableIndirection["FlatIdent_5E594%0"] = 0;
		TABLE_TableIndirection["count%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_5E594%0"] == 0) then
				TABLE_TableIndirection["count%0"] = TABLE_TableIndirection["rewardCounts%0"][r];
				if ((3686 > 3172) and (TABLE_TableIndirection["count%0"] > 1)) then
					table.insert(TABLE_TableIndirection["rewardLines%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\200\229", "\64\229\197\17") .. TABLE_TableIndirection["count%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\74\56", "\220\50\24\74\57\135\51\106") .. r);
				else
					table.insert(TABLE_TableIndirection["rewardLines%0"], LUAOBFUSACTOR_DECRYPT_STR_0("\179\104", "\159\158\72\29\133") .. r);
				end
				break;
			end
		end
	end
	TABLE_TableIndirection["rewardStr%0"] = table.concat(TABLE_TableIndirection["rewardLines%0"], "\n");
	if (TABLE_TableIndirection["rewardStr%0"] == "") then
		TABLE_TableIndirection["rewardStr%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\234\199\102\228\235\45\54\205\206\47\244\187\44\39\203\216\53\184\233\45\34\197\218\34\228\187\44\48\208\205\37\227\254\44\123", "\85\164\168\70\151\155\72");
	end
	return TABLE_TableIndirection["rank%0"], TABLE_TableIndirection["rewardStr%0"];
end
TABLE_TableIndirection["raidStartTime%0"] = 0;
TABLE_TableIndirection["preRaidTokens%0"] = 0;
TABLE_TableIndirection["wasInOverworld%0"] = true;
TABLE_TableIndirection["raidProcessed%0"] = false;
task.spawn(function()
	while sessionAlive() do
		TABLE_TableIndirection["FlatIdent_97786%0"] = 0;
		TABLE_TableIndirection["npcsFolder%0"] = nil;
		TABLE_TableIndirection["inOverworld%0"] = nil;
		while true do
			if (TABLE_TableIndirection["FlatIdent_97786%0"] == 1) then
				TABLE_TableIndirection["inOverworld%0"] = TABLE_TableIndirection["npcsFolder%0"] ~= nil;
				if ((TABLE_TableIndirection["inOverworld%0"] and not TABLE_TableIndirection["wasInOverworld%0"]) or (4474 < 820)) then
					TABLE_TableIndirection["FlatIdent_1D124%0"] = 0;
					while true do
						if (1 == TABLE_TableIndirection["FlatIdent_1D124%0"]) then
							TABLE_TableIndirection["raidProcessed%0"] = false;
							break;
						end
						if (TABLE_TableIndirection["FlatIdent_1D124%0"] == 0) then
							TABLE_TableIndirection["raidStartTime%0"] = 0;
							TABLE_TableIndirection["wasInOverworld%0"] = true;
							TABLE_TableIndirection["FlatIdent_1D124%0"] = 1;
						end
					end
				elseif (not TABLE_TableIndirection["inOverworld%0"] and TABLE_TableIndirection["wasInOverworld%0"]) then
					TABLE_TableIndirection["raidStartTime%0"] = tick();
					TABLE_TableIndirection["preRaidTokens%0"], _ = getTokenData();
					TABLE_TableIndirection["wasInOverworld%0"] = false;
					TABLE_TableIndirection["raidProcessed%0"] = false;
				end
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_97786%0"] == 0) then
				task.wait(1);
				TABLE_TableIndirection["npcsFolder%0"] = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\255\205\241\21", "\133\177\189\146\102\196\151\20")) or workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\216\253\236\248", "\75\150\173\175\139"));
				TABLE_TableIndirection["FlatIdent_97786%0"] = 1;
			end
		end
	end
end);
task.spawn(function()
	while sessionAlive() do
		task.wait(1);
		pcall(function()
			TABLE_TableIndirection["raidGui%0"] = TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\193\213\182\176\73\227\254\162\160", "\44\145\185\215\201")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\40\209\132\83\173\22\55\192\129\82\186\28", "\121\90\176\237\55\206"));
			if (TABLE_TableIndirection["raidGui%0"] and TABLE_TableIndirection["raidGui%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\203\9\90\198\51\40\234", "\77\142\103\59\164\95")]) then
				if ((4279 >= 2882) and not TABLE_TableIndirection["raidProcessed%0"]) then
					TABLE_TableIndirection["raidProcessed%0"] = true;
					task.wait(4);
					TABLE_TableIndirection["elapsedStr%0"] = LUAOBFUSACTOR_DECRYPT_STR_0("\60\140\209\253\248\241\7", "\134\105\226\186\147\151");
					if (TABLE_TableIndirection["raidStartTime%0"] <= 0) then
					else
						TABLE_TableIndirection["FlatIdent_20FDE%0"] = 0;
						TABLE_TableIndirection["secs%0"] = nil;
						while true do
							if (TABLE_TableIndirection["FlatIdent_20FDE%0"] == 0) then
								TABLE_TableIndirection["secs%0"] = math.floor(tick() - TABLE_TableIndirection["raidStartTime%0"]);
								TABLE_TableIndirection["elapsedStr%0"] = string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\207\68\244\137\141\122\118\216\16", "\70\234\116\198\237\183\95"), math.floor(TABLE_TableIndirection["secs%0"] / 60), TABLE_TableIndirection["secs%0"] % 60);
								break;
							end
						end
					end
					local rank, rewardStr = parseRaidResults(TABLE_TableIndirection["raidGui%0"]);
					local currentTotalTokens, currentTokensStr = getTokenData();
					TABLE_TableIndirection["earnedTokens%0"] = math.max(currentTotalTokens - TABLE_TableIndirection["preRaidTokens%0"], 0);
					if (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\155\212\14\58\115\204\167\244\2\51\126\207\169\213", "\163\204\177\108\82\28")] and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\196\91\129\117\114\252\85\177\124\116\247", "\29\147\62\227\29")] and (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\134\15\122\55\117\211\173\132\56\84", "\198\209\106\24\95\26\188")] ~= "")) then
						TABLE_TableIndirection["fields%0"] = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\131\50\44\180", "\156\237\83\65\209\66\94")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\7\104\209\88\83", "\54\56\39\58\176"),[LUAOBFUSACTOR_DECRYPT_STR_0("\14\38\112\0\74", "\137\120\71\28\117\47\92\95")]=("`" .. rank .. "`"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\189\1\65\116\251", "\158\137\211\109\40\26")]=true},{[LUAOBFUSACTOR_DECRYPT_STR_0("\195\240\165\114", "\157\173\145\200\23\204\109")]=LUAOBFUSACTOR_DECRYPT_STR_0("\248\39\159\59\174\117\218\79\148\104\218\1\179", "\111\199\24\191"),[LUAOBFUSACTOR_DECRYPT_STR_0("\186\177\121\174\50", "\21\204\208\21\219\87")]=("`" .. TABLE_TableIndirection["elapsedStr%0"] .. "`"),[LUAOBFUSACTOR_DECRYPT_STR_0("\58\252\240\13\34\20", "\190\83\146\156\100\76\113\163")]=true},{[LUAOBFUSACTOR_DECRYPT_STR_0("\172\36\44\3", "\235\194\69\65\102\137\103")]=LUAOBFUSACTOR_DECRYPT_STR_0("\237\138\78\115\239\250\185\242\248\123\117\255\187\129\189\193\127\114\232", "\213\210\170\26\28\155\155"),[LUAOBFUSACTOR_DECRYPT_STR_0("\150\228\211\254\133", "\139\224\133\191")]=currentTokensStr,[LUAOBFUSACTOR_DECRYPT_STR_0("\233\208\75\132\55\79", "\206\128\190\39\237\89\42")]=false}};
						if ((TABLE_TableIndirection["earnedTokens%0"] > 0) or (2029 >= 3521)) then
							table.insert(TABLE_TableIndirection["fields%0"], {[LUAOBFUSACTOR_DECRYPT_STR_0("\214\10\213\230", "\115\184\107\184\131\113\20\192")]=LUAOBFUSACTOR_DECRYPT_STR_0("\69\84\29\66\114\112\20\7\105\104\120\103\20\17\45", "\21\122\116\73\45\25"),[LUAOBFUSACTOR_DECRYPT_STR_0("\199\199\137\240\162", "\214\177\166\229\133\199\89")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\140\6", "\210\236\45\82\116\41\103\63") .. tostring(TABLE_TableIndirection["earnedTokens%0"]) .. "`"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\71\35\57\204\23", "\162\114\41\79\80")]=true});
						end
						table.insert(TABLE_TableIndirection["fields%0"], {[LUAOBFUSACTOR_DECRYPT_STR_0("\248\53\134\190", "\57\150\84\235\219\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\143\86\97\90\26\209\4\87\76\77\150\86\119\77\2\192\5", "\109\176\118\51\63"),[LUAOBFUSACTOR_DECRYPT_STR_0("\69\12\246\27\196", "\161\51\109\154\110")]=("```yaml\n" .. rewardStr .. "\n```"),[LUAOBFUSACTOR_DECRYPT_STR_0("\237\61\220\53\26\182", "\211\132\83\176\92\116")]=false});
						TABLE_TableIndirection["payload%0"] = {[LUAOBFUSACTOR_DECRYPT_STR_0("\66\231\204\175\53\247\39\82", "\74\55\148\169\221\91\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\33\173\21\48\39\233\52\43\34\233\43\59\34\161\19\49\43", "\124\94\64\201"),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\249\11\190\49\188\216\250\24\166", "\206\135\143\106\202\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\228\93\49\181\218\132\69\5\229\7\44\168\206\203\24\4\239\70\40\234\238\212\36\18\190\75\13\235\217\208\13", "\42\140\41\69\197\169\190\106"),[LUAOBFUSACTOR_DECRYPT_STR_0("\177\139\229\182\176\149", "\211\212\230\135")]={{[LUAOBFUSACTOR_DECRYPT_STR_0("\70\175\99\234\219", "\190\50\198\23\134")]=LUAOBFUSACTOR_DECRYPT_STR_0("\28\20\145\93\215\117\191\212\76\89\179\80\219\101\250\243\2", "\151\35\52\195\60\190\17\159"),[LUAOBFUSACTOR_DECRYPT_STR_0("\181\187\119\230\144", "\226\214\212\27\137")]=16766720,[LUAOBFUSACTOR_DECRYPT_STR_0("\120\54\180\40\239\223", "\172\30\95\209\68\139")]=TABLE_TableIndirection["fields%0"],[LUAOBFUSACTOR_DECRYPT_STR_0("\240\23\39\65\243\10", "\53\150\120\72")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\107\1\206\23", "\45\31\100\182\99")]=(LUAOBFUSACTOR_DECRYPT_STR_0("\19\118\12\61\22\54\55\32\33\26\113\71\26\49\21\56\98\5\116\85\113", "\120\81\23\104\84") .. TABLE_TableIndirection["LocalPlayer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\230\78\112\114", "\23\168\47\29")])},[LUAOBFUSACTOR_DECRYPT_STR_0("\100\178\134\143\99\175\138\135\96", "\234\16\219\235")]=DateTime.now():ToIsoDate()}}};
						TABLE_TableIndirection["requestFunc%0"] = (syn and syn[LUAOBFUSACTOR_DECRYPT_STR_0("\86\19\69\39\46\25\86", "\34\36\118\52\82\75\106")]) or (http and http[LUAOBFUSACTOR_DECRYPT_STR_0("\40\132\10\167\234\150\72", "\139\90\225\123\210\143\229\60")]) or http_request or (fluxus and fluxus[LUAOBFUSACTOR_DECRYPT_STR_0("\226\45\11\38\221\227\228", "\144\144\72\122\83\184")]) or request;
						if (TABLE_TableIndirection["requestFunc%0"] or (2037 >= 4642)) then
							pcall(function()
								TABLE_TableIndirection["requestFunc%0"]({[LUAOBFUSACTOR_DECRYPT_STR_0("\223\30\66", "\201\138\108\46\38")]=TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\12\48\61\130\63\32\28\14\7\19", "\119\91\85\95\234\80\79")],[LUAOBFUSACTOR_DECRYPT_STR_0("\112\177\94\162\126\89", "\17\61\212\42\202")]=LUAOBFUSACTOR_DECRYPT_STR_0("\217\140\222\114", "\36\137\195\141\38\208\119\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\25\217\59\75\214\35\207", "\179\81\188\90\47")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\142\35\170\171\211\163\56\233\139\207\189\41", "\182\205\76\196\223")]=LUAOBFUSACTOR_DECRYPT_STR_0("\87\242\226\201\179\55\238\226\95\237\252\138\176\39\224\248", "\150\54\130\146\165\218\84\143")},[LUAOBFUSACTOR_DECRYPT_STR_0("\29\24\218\59", "\97\95\119\190\66")]=TABLE_TableIndirection["HttpService%0"]:JSONEncode(TABLE_TableIndirection["payload%0"])});
							end);
						end
					end
					if ((1720 < 4458) and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\141\109\48\93\230\169\108\54\75\230\173\113\32", "\180\204\24\68\50")]) then
						TABLE_TableIndirection["retryBtn%0"] = TABLE_TableIndirection["raidGui%0"]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\226\127\87\116", "\16\144\30\62")) and TABLE_TableIndirection["raidGui%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\166\41\52\243", "\48\212\72\93\151\83\217\38")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\35\141\26\145\74", "\99\81\232\110\227\51")) and TABLE_TableIndirection["raidGui%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\19\190\60\237", "\229\97\223\85\137\218\24\18")][LUAOBFUSACTOR_DECRYPT_STR_0("\226\217\179\54\233", "\68\144\188\199")]:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\39\1\215\206\47\35\224\7\11\193", "\148\115\100\175\186\109\86"));
						if TABLE_TableIndirection["retryBtn%0"] then
							TABLE_TableIndirection["FlatIdent_928A1%0"] = 0;
							TABLE_TableIndirection["timeout%0"] = nil;
							while true do
								if (TABLE_TableIndirection["FlatIdent_928A1%0"] == 0) then
									TABLE_TableIndirection["timeout%0"] = tick();
									while TABLE_TableIndirection["raidGui%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\89\229\201\213\112\238\204", "\183\28\139\168")] and TABLE_TableIndirection["retryBtn%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\34\176\229\43\131\79", "\218\114\209\151\78\237\59")] and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\109\163\30\81\126\179\30\76\85\132\11\87\72", "\62\44\214\106")] and ((tick() - TABLE_TableIndirection["timeout%0"]) < 15) do
										TABLE_TableIndirection["FlatIdent_677DA%0"] = 0;
										while true do
											if (TABLE_TableIndirection["FlatIdent_677DA%0"] == 0) then
												clickButton(TABLE_TableIndirection["retryBtn%0"]);
												task.wait(0.5);
												break;
											end
										end
									end
									break;
								end
							end
						end
					end
				end
			end
		end);
	end
end);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\5\50\13\214\162\33", "\203\70\93\99\176")], LUAOBFUSACTOR_DECRYPT_STR_0("\135\221\189\40\244\154\235\1\187\221\175", "\77\212\188\203"));
TABLE_TableIndirection["inputConfigName%0"] = "";
createTextBox(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\122\220\235\185\254\202", "\173\57\179\133\223\151")], LUAOBFUSACTOR_DECRYPT_STR_0("\128\80\92\173\111\245\60\209\167\82\11\195\77\247\55\153\224\27", "\183\206\53\43\141\44\154\82"), function(txt)
	TABLE_TableIndirection["inputConfigName%0"] = txt;
end);
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\207\10\57\26\61\224", "\155\140\101\87\124\84\135")], LUAOBFUSACTOR_DECRYPT_STR_0("\229\22\60\14\30\69\134\39\54\1\12\73\193", "\32\166\100\89\111\106"), function()
	TABLE_TableIndirection["FlatIdent_2E949%0"] = 0;
	while true do
		if (TABLE_TableIndirection["FlatIdent_2E949%0"] == 0) then
			if ((TABLE_TableIndirection["inputConfigName%0"] == "") or (436 > 3021)) then
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\214\33\182\67\35\196\7\107\231\60\183\87", "\46\149\78\216\37\74\163\39"), LUAOBFUSACTOR_DECRYPT_STR_0("\126\229\120\206\212\37\103\75\231\105\202\213\96\38\14\231\124\194\194\110", "\71\46\137\29\175\167\64"), true);
				return;
			end
			if (isfile and isfile(TABLE_TableIndirection["configFolder%0"] .. "/" .. TABLE_TableIndirection["inputConfigName%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\115\245\36\8\234", "\110\93\159\87\103\132\39"))) then
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\112\26\39\36\201\84\85\12\48\210\92\7", "\160\51\117\73\66"), LUAOBFUSACTOR_DECRYPT_STR_0("\50\60\135\128\236\50\12\60\152\145\191\118\84\0\152\128\236\24\2\48\153\146\190\62\0\48\197", "\87\116\85\235\229\204"), true);
			elseif saveConfig(TABLE_TableIndirection["inputConfigName%0"]) then
				TABLE_TableIndirection["FlatIdent_5FF12%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_5FF12%0"] == 1) then
						TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\199\148\27\205\123\50\74\237\149", "\61\131\230\116\189\31\93")][LUAOBFUSACTOR_DECRYPT_STR_0("\157\3\25\255\187\86\28\170\37\26\244\190\75\30", "\121\206\102\117\154\216\34")]();
						break;
					end
					if (TABLE_TableIndirection["FlatIdent_5FF12%0"] == 0) then
						showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\246\78\88\230\27\64", "\134\181\33\54\128\114\39"), LUAOBFUSACTOR_DECRYPT_STR_0("\33\222\160\68\184\7\200\255\5", "\204\98\172\197\37") .. TABLE_TableIndirection["inputConfigName%0"], false);
						TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\252\4\116\36\164\211\212\203\34\119\47\161\206\214", "\177\175\97\24\65\199\167")] = TABLE_TableIndirection["inputConfigName%0"];
						TABLE_TableIndirection["FlatIdent_5FF12%0"] = 1;
					end
				end
			else
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\49\202\236\89\32", "\151\116\184\158\54\82\30\193"), "Executor doesn't support saving.", true);
			end
			break;
		end
	end
end);
createDivider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\6\198\210\32\189\193", "\158\69\169\188\70\212\166")]);
createDropdown(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\40\215\248\12\209\12", "\184\107\184\150\106")], LUAOBFUSACTOR_DECRYPT_STR_0("\241\212\64\192\229\214\145\111\202\232\196\216\75", "\134\162\177\44\165"), LUAOBFUSACTOR_DECRYPT_STR_0("\244\45\77\247\196\60\68\246\228\39\79\244\206\47", "\146\167\72\33"), getSavedConfigs);
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\217\3\161\42\171\73", "\45\154\108\207\76\194\46")], LUAOBFUSACTOR_DECRYPT_STR_0("\81\224\11\222\61\204\5\212\123\230\13", "\186\29\143\106"), function()
	TABLE_TableIndirection["FlatIdent_4FF01%0"] = 0;
	while true do
		if (TABLE_TableIndirection["FlatIdent_4FF01%0"] == 0) then
			if (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\154\204\170\18\15\168\47\31\138\198\168\17\5\187", "\123\201\169\198\119\108\220\74")] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\17\140\30\83\64\54\199\92\24", "\35\66\233\114\54")) then
			else
				TABLE_TableIndirection["FlatIdent_6626A%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_6626A%0"] == 0) then
						showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\86\151\152\248\223", "\173\19\229\234\151"), LUAOBFUSACTOR_DECRYPT_STR_0("\26\47\49\77\42\62\125\73\105\41\50\70\47\35\58\6", "\40\73\74\93"), true);
						return;
					end
				end
			end
			if ((713 <= 847) and loadConfig(TABLE_TableIndirection["state%0"].SelectedConfig)) then
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\217\228\240\53\141\240", "\151\154\139\158\83\228"), LUAOBFUSACTOR_DECRYPT_STR_0("\211\165\9\221\221\251\240\72", "\184\159\202\104\185") .. TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\96\12\179\226\169\71\12\187\196\165\93\15\182\224", "\202\51\105\223\135")], false);
			else
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\141\233\198\187\186", "\212\200\155\180"), LUAOBFUSACTOR_DECRYPT_STR_0("\96\251\173\168\150\69\253\179\191\195\86\230\164\169\152", "\182\38\146\193\205"), true);
			end
			break;
		end
	end
end);
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\44\22\135\164\230\8", "\143\111\121\233\194")], LUAOBFUSACTOR_DECRYPT_STR_0("\195\200\46\195\218\254\215\63\212\141\207\209\37\215\196\235", "\173\140\190\75\177"), function()
	TABLE_TableIndirection["FlatIdent_12F27%0"] = 0;
	while true do
		if (TABLE_TableIndirection["FlatIdent_12F27%0"] == 0) then
			if ((2154 <= 4031) and (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\216\49\36\208\83\7\224\239\23\39\219\86\26\226", "\133\139\84\72\181\48\115")] == LUAOBFUSACTOR_DECRYPT_STR_0("\227\69\27\196\138\167\25\158\14", "\55\176\32\119\161\233\211"))) then
				TABLE_TableIndirection["FlatIdent_706CB%0"] = 0;
				while true do
					if (TABLE_TableIndirection["FlatIdent_706CB%0"] == 0) then
						showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\121\19\6\182\167", "\213\60\97\116\217"), LUAOBFUSACTOR_DECRYPT_STR_0("\180\53\47\114\41\147\112\34\55\41\136\62\37\126\45\201", "\74\231\80\67\23"), true);
						return;
					end
				end
			end
			if saveConfig(TABLE_TableIndirection["state%0"].SelectedConfig) then
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\32\216\178\84\89\65", "\170\99\183\220\50\48\38\57"), LUAOBFUSACTOR_DECRYPT_STR_0("\16\4\56\12\40\0\50\10\58\72\125", "\126\95\114\93") .. TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\158\58\126\95\174\43\119\94\142\48\124\92\164\56", "\58\205\95\18")], false);
			else
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\41\15\214\254\181", "\199\108\125\164\145"), LUAOBFUSACTOR_DECRYPT_STR_0("\250\41\56\55\128\229\8\57\211\104\62\45\128\243\95\63\213\60\52\117", "\77\188\72\81\91\229\129\40"), true);
			end
			break;
		end
	end
end);
TABLE_TableIndirection["confirmDelete%0"] = false;
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\129\136\95\50\233\116", "\19\194\231\49\84\128")], LUAOBFUSACTOR_DECRYPT_STR_0("\124\2\167\184\82\220\2\233\87\9\173\180\65", "\170\56\103\203\221\38\185\34"), function(btn, lbl)
	if (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\29\188\82\22\95\236\43\189\125\28\82\254\39\190", "\152\78\217\62\115\60")] == LUAOBFUSACTOR_DECRYPT_STR_0("\70\182\14\169\181\222\27\59\253", "\53\21\211\98\204\214\170")) then
		TABLE_TableIndirection["FlatIdent_950AF%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_950AF%0"] == 0) then
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\28\200\94\9\161", "\203\89\186\44\102\211"), LUAOBFUSACTOR_DECRYPT_STR_0("\150\135\195\49\200\177\194\206\116\200\170\140\201\61\204\235", "\171\197\226\175\84"), true);
				return;
			end
		end
	end
	if ((4615 == 4615) and not TABLE_TableIndirection["confirmDelete%0"]) then
		TABLE_TableIndirection["confirmDelete%0"] = true;
		lbl[LUAOBFUSACTOR_DECRYPT_STR_0("\179\83\107\65", "\179\231\54\19\53")] = LUAOBFUSACTOR_DECRYPT_STR_0("\231\231\178\14\189\74\180\144\213\224\165\75\251\5\130\220\207\246\188\14\165\66\160\217\200\187", "\176\166\149\215\46\196\37\193");
		lbl[LUAOBFUSACTOR_DECRYPT_STR_0("\122\115\186\26\109\121\174\1\92\37", "\110\46\22\194")] = Color3.fromRGB(248, 113, 113);
		task.delay(3, function()
			TABLE_TableIndirection["confirmDelete%0"] = false;
			lbl[LUAOBFUSACTOR_DECRYPT_STR_0("\185\246\34\232", "\206\237\147\90\156\170")] = LUAOBFUSACTOR_DECRYPT_STR_0("\212\65\38\212\162\14\176\103\37\223\176\2\247", "\107\144\36\74\177\214");
			lbl[LUAOBFUSACTOR_DECRYPT_STR_0("\79\201\38\210\81\0\119\195\44\149", "\111\27\172\94\166\18")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\17\10\227\33", "\206\69\111\155\85\80\34\32")];
		end);
	else
		TABLE_TableIndirection["FlatIdent_22E42%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_22E42%0"] == 0) then
				TABLE_TableIndirection["confirmDelete%0"] = false;
				lbl[LUAOBFUSACTOR_DECRYPT_STR_0("\136\190\190\24", "\167\220\219\198\108")] = LUAOBFUSACTOR_DECRYPT_STR_0("\142\1\21\59\33\67\68\137\11\23\56\60\65", "\100\202\100\121\94\85\38");
				TABLE_TableIndirection["FlatIdent_22E42%0"] = 1;
			end
			if (TABLE_TableIndirection["FlatIdent_22E42%0"] == 1) then
				lbl[LUAOBFUSACTOR_DECRYPT_STR_0("\62\185\219\21\98\242\6\179\209\82", "\157\106\220\163\97\33")] = TABLE_TableIndirection["Theme%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\9\165\250\100", "\189\93\192\130\16\183\52")];
				pcall(function()
					TABLE_TableIndirection["p%0"] = TABLE_TableIndirection["configFolder%0"] .. "/" .. TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\58\23\54\49\8\47\50\13\49\53\58\13\50\48", "\87\105\114\90\84\107\91")] .. LUAOBFUSACTOR_DECRYPT_STR_0("\61\195\214\191\134", "\31\19\169\165\208\232\61\161");
					if (isfile and isfile(TABLE_TableIndirection["p%0"])) then
						delfile(TABLE_TableIndirection["p%0"]);
					end
				end);
				TABLE_TableIndirection["FlatIdent_22E42%0"] = 2;
			end
			if (TABLE_TableIndirection["FlatIdent_22E42%0"] == 3) then
				TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\246\178\46\22\255\193\192\220\179", "\183\178\192\65\102\155\174")][LUAOBFUSACTOR_DECRYPT_STR_0("\132\235\71\54\15\157\37\238\148\225\69\53\5\142", "\138\215\142\43\83\108\233\64")]();
				break;
			end
			if (TABLE_TableIndirection["FlatIdent_22E42%0"] == 2) then
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\92\182\135\122\118\190", "\28\31\217\233"), LUAOBFUSACTOR_DECRYPT_STR_0("\21\241\161\197\209\15\66\127", "\38\81\148\205\160\165\106"), false);
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\124\75\163\35\118\21\31\166\108\65\161\32\124\6", "\194\47\46\207\70\21\97\122")] = LUAOBFUSACTOR_DECRYPT_STR_0("\226\62\219\228\216\221\151\149\159", "\187\177\91\183\129\187\169\185");
				TABLE_TableIndirection["FlatIdent_22E42%0"] = 3;
			end
		end
	end
end);
TABLE_TableIndirection["autoLoadLabel%0"] = createLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\54\221\181\75\220\202", "\173\117\178\219\45\181")], LUAOBFUSACTOR_DECRYPT_STR_0("\216\11\233\245\140\119\145\187\63\238\243\134\117\138\250\26\161\167\167\118\139\254", "\229\155\126\155\135\233\25"), Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\112\11\146\6\110\235\72\7\141\28\91\207\74\26", "\170\36\110\234\114\54")].Left);
pcall(function()
	if ((isfile and isfile(TABLE_TableIndirection["configFolder%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\143\74\39\76\242\116\252\173\196\5\38\64\233", "\204\160\43\82\56\157\24\147"))) or (3790 == 500)) then
		TABLE_TableIndirection["autoLoadLabel%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\119\126\157\151", "\216\35\27\229\227\43")] = LUAOBFUSACTOR_DECRYPT_STR_0("\36\77\60\26\180\163\19\50\38\77\58\7\189\162\6\118\93\24", "\18\103\56\78\104\209\205\103") .. readfile(TABLE_TableIndirection["configFolder%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\153\125\25\40\195\59\199\215\120\66\40\212\35", "\168\182\28\108\92\172\87"));
	end
end);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\212\78\174\175\228\208", "\183\151\33\192\201\141")], LUAOBFUSACTOR_DECRYPT_STR_0("\89\146\196\178\116\136\209\185", "\221\24\231\176"));
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\98\242\225\91\5\186", "\221\33\157\143\61\108")], LUAOBFUSACTOR_DECRYPT_STR_0("\134\238\156\225\241\38\187\237\129\166\146\40\166\171\169\180\198\38\185\228\137\165", "\73\213\139\232\193\178"), function()
	if (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\135\143\90\93\95\9\177\142\117\87\82\27\189\141", "\125\212\234\54\56\60")] ~= LUAOBFUSACTOR_DECRYPT_STR_0("\110\57\117\65\85\188\181\19\114", "\155\61\92\25\36\54\200")) then
	else
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\37\170\94\48\18", "\95\96\216\44"), LUAOBFUSACTOR_DECRYPT_STR_0("\197\76\22\90\190\93\62\176\182\74\21\81\187\64\121\255", "\209\150\41\122\63\221\41\30"), true);
		return;
	end
	pcall(function()
		writefile(TABLE_TableIndirection["configFolder%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\179\44\104\46\112\80\243\44\121\116\107\68\232", "\60\156\77\29\90\31"), TABLE_TableIndirection["state%0"].SelectedConfig);
	end);
	TABLE_TableIndirection["autoLoadLabel%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\155\218\252\148", "\224\207\191\132")] = LUAOBFUSACTOR_DECRYPT_STR_0("\145\36\247\90\32\214\37\242\16\240\92\42\212\62\179\53\191\8", "\81\210\81\133\40\69\184") .. TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\104\69\200\227\88\84\193\226\120\79\202\224\82\71", "\134\59\32\164")];
	showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\150\212\17\131\33\68", "\156\213\187\127\229\72\35"), LUAOBFUSACTOR_DECRYPT_STR_0("\80\216\205\120\166\215\69\117\141\202\114\190\150", "\36\17\173\185\23\202\184"), false);
end);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\45\77\226\60\230\220\161\31", "\108\126\40\150\72\143\178\198")], LUAOBFUSACTOR_DECRYPT_STR_0("\244\61\144\121\96\248\183\99\223\59\129\101\100\229\248\72", "\38\167\94\226\16\16\140\151"));
createToggle(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\107\0\4\172\197\86\2\3", "\172\56\101\112\216")], LUAOBFUSACTOR_DECRYPT_STR_0("\160\88\181\225\153\34\136\79\185\225\205\81\132\83\240\197\220\29\142\77\191\227\205", "\113\235\61\208\145\185"), LUAOBFUSACTOR_DECRYPT_STR_0("\172\89\93\6\168\84\76\10\152\88\76\58\142\94\64\25\153", "\105\237\44\41"), function(val)
	if ((89 < 221) and val) then
		applyAutoExecute();
		if TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\92\240\104\93\167\243\128\126\240\104\87\177\232\151\116\245\104", "\229\29\133\28\50\226\139")] then
			showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\225\210\80\100\89\92\208\253", "\142\178\183\36\16\48\50\183"), LUAOBFUSACTOR_DECRYPT_STR_0("\215\156\231\255\187\140\235\245\245\156\231\245\182\134\253\176\226\140\255\245\230\134\225\228\182\140\253\241\244\133\246\244\184", "\144\150\233\147"), false);
		end
	else
		showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\24\7\187\48\81\91\44\17", "\53\75\98\207\68\56"), LUAOBFUSACTOR_DECRYPT_STR_0("\31\179\160\33\115\163\172\43\61\179\160\43\126\162\189\61\63\164\184\43\58\232", "\78\94\198\212"), false);
	end
end);
createButton(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\218\208\235\97\252\231\210\236", "\149\137\181\159\21")], LUAOBFUSACTOR_DECRYPT_STR_0("\73\135\218\38\8\128\121\148\197\51\92\243\124\137\222\99\105\166\110\137\129\6\80\182\121\147\216\38", "\211\26\230\172\67\40"), function()
	TABLE_TableIndirection["FlatIdent_86BC3%0"] = 0;
	TABLE_TableIndirection["saved%0"] = nil;
	TABLE_TableIndirection["foundPath%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_86BC3%0"] == 0) then
			TABLE_TableIndirection["saved%0"] = false;
			TABLE_TableIndirection["foundPath%0"] = "";
			TABLE_TableIndirection["FlatIdent_86BC3%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_86BC3%0"] == 1) then
			pcall(function()
				TABLE_TableIndirection["FlatIdent_57C9C%0"] = 0;
				TABLE_TableIndirection["searchPaths%0"] = nil;
				while true do
					if (TABLE_TableIndirection["FlatIdent_57C9C%0"] == 1) then
						for _, p in ipairs(TABLE_TableIndirection["searchPaths%0"]) do
							if ((2054 >= 1421) and isfile(p)) then
								writefile(AUTOEXEC_SAVED_PATH, readfile(p));
								TABLE_TableIndirection["saved%0"] = true;
								TABLE_TableIndirection["foundPath%0"] = p;
								break;
							end
						end
						break;
					end
					if (TABLE_TableIndirection["FlatIdent_57C9C%0"] == 0) then
						if not (writefile and isfile and readfile) then
							showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\214\34\62\2\174\107\94\21\244\34\62\8", "\112\151\87\74\109\131\46\38"), "Executor doesn't support file saving.", true);
							return;
						end
						TABLE_TableIndirection["searchPaths%0"] = {LUAOBFUSACTOR_DECRYPT_STR_0("\8\201\52\196\184\45\224\37\207\248\38\221\49", "\214\74\168\80\173"),LUAOBFUSACTOR_DECRYPT_STR_0("\18\2\187\87\167\55\43\170\92\150\22\10\167\91\173\126\15\170\95", "\201\80\99\223\62"),LUAOBFUSACTOR_DECRYPT_STR_0("\245\115\24\226\91\66\169\255\103\30\165\89\80\232", "\137\151\18\124\139\53\37"),LUAOBFUSACTOR_DECRYPT_STR_0("\4\116\56\121\177\236\4\56\8\113\165\241\25\112\2\101\163\182\27\98\43", "\152\119\23\74\16\193"),LUAOBFUSACTOR_DECRYPT_STR_0("\64\188\32\220\77\223\96\240\16\212\89\194\125\184\26\192\95\133\127\170\51", "\171\19\223\82\181\61"),LUAOBFUSACTOR_DECRYPT_STR_0("\26\144\198\222\196\3\128\209\158\227\26\129\219\223\198\51\144\208\159\205\14\132", "\161\123\229\178\177"),LUAOBFUSACTOR_DECRYPT_STR_0("\228\45\38\184\112\71\192\59\125\149\84\91\204\54\53\159\64\93\139\52\39\182", "\63\165\88\82\215\53")};
						TABLE_TableIndirection["FlatIdent_57C9C%0"] = 1;
					end
				end
			end);
			if ((692 < 3058) and TABLE_TableIndirection["saved%0"]) then
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\20\201\187\49\53\206\195\117\54\201\187\59", "\16\85\188\207\94\24\139\187"), LUAOBFUSACTOR_DECRYPT_STR_0("\61\49\175\165\73\98\8\34\182\173\23\98", "\66\110\80\217\192\45") .. TABLE_TableIndirection["foundPath%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\189\0", "\114\157\118\125\88"), false);
			else
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\196\178\6\253\119\165\86\224\230\178\6\247", "\133\133\199\114\146\90\224\46"), "Save this file as 'BadingHub.lua' in executor workspace first.", true);
			end
			break;
		end
	end
end);
createLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\154\191\251\18\44\113\7\186", "\96\201\218\143\102\69\31")], "-> Save this .lua file as 'BadingHub.lua' in", Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\203\22\58\61\222\48\169\196\248\29\47\44\232\5", "\173\159\115\66\73\134\113\197")].Left);
createLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\58\177\215\4\204\226\70\26", "\33\105\212\163\112\165\140")], LUAOBFUSACTOR_DECRYPT_STR_0("\102\56\250\196\41\109\168\157\35\96\191\222\51\108\181\207\102\111\181\207\45\107\170\220\37\125\246\157\50\112\191\211\102\123\182\212\37\115\250\238\39\110\191\147", "\189\70\24\218"), Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\157\53\4\105\45\0\165\57\27\115\24\36\167\36", "\65\201\80\124\29\117")].Left);
createDivider(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\231\115\22\221\222\165\180\50", "\65\180\22\98\169\183\203\211")]);
createSectionLabel(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\191\0\238\165\33\232\43\159", "\76\236\101\154\209\72\134")], LUAOBFUSACTOR_DECRYPT_STR_0("\149\86\36\230\118\176\87\46", "\31\222\51\93\132"));
createKeybind(tabFrames[LUAOBFUSACTOR_DECRYPT_STR_0("\68\114\61\26\241\177\138\100", "\237\23\23\73\110\152\223")], LUAOBFUSACTOR_DECRYPT_STR_0("\189\169\26\61\14\231\88\188\143\93\30\11\241\8\133\167\4", "\120\233\198\125\90\98\130"), LUAOBFUSACTOR_DECRYPT_STR_0("\147\201\48\230\43\196\4\194\190", "\167\199\166\87\129\71\161\79"));
trackConn(TABLE_TableIndirection["UserInputService%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\27\119\29\88\38\164\55\126\12\67", "\230\82\25\109\45\82")]:Connect(function(input, gp)
	if (isBindPressed(input, TABLE_TableIndirection["state%0"].ToggleKey) or (3254 == 1655)) then
		TABLE_TableIndirection["guiVisible%0"] = not TABLE_TableIndirection["guiVisible%0"];
		if TABLE_TableIndirection["guiVisible%0"] then
			TABLE_TableIndirection["FlatIdent_382D5%0"] = 0;
			while true do
				if (TABLE_TableIndirection["FlatIdent_382D5%0"] == 1) then
					if (not TABLE_TableIndirection["isMinimized%0"] or (1296 == 4910)) then
						task.delay(0.15, function()
							TABLE_TableIndirection["FlatIdent_74083%0"] = 0;
							while true do
								if (TABLE_TableIndirection["FlatIdent_74083%0"] == 1) then
									TABLE_TableIndirection["contentContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\123\126\40\203\28\1\206", "\171\45\23\91\162\126\109")] = true;
									TABLE_TableIndirection["sideDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\214\237\26\168\220\236\225", "\190\128\132\105\193")] = true;
									break;
								end
								if (TABLE_TableIndirection["FlatIdent_74083%0"] == 0) then
									TABLE_TableIndirection["profileFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\101\219\86\46\185\95\215", "\219\51\178\37\71")] = true;
									TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\106\76\198\13\198\80\64", "\164\60\37\181\100")] = true;
									TABLE_TableIndirection["FlatIdent_74083%0"] = 1;
								end
							end
						end);
					end
					break;
				end
				if (TABLE_TableIndirection["FlatIdent_382D5%0"] == 0) then
					TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\32\60\165\53\57\203\195", "\166\118\85\214\92\91\167")] = true;
					TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["mainFrame%0"], TweenInfo.new(0.5, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\121\58\68\169\82\60\100\180\69\55\82", "\192\60\91\55")].Back, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\47\10\245\120\86\13\47\239\99\93\9\31\239\126\86", "\56\106\107\134\17")].Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\40\85\96\75", "\71\123\60\26\46\84\88")]=((TABLE_TableIndirection["isMinimized%0"] and UDim2.new(0, 550, 0, 47)) or UDim2.new(0, 550, 0, 440))}):Play();
					TABLE_TableIndirection["FlatIdent_382D5%0"] = 1;
				end
			end
		else
			TABLE_TableIndirection["FlatIdent_4A232%0"] = 0;
			TABLE_TableIndirection["tw%0"] = nil;
			while true do
				if (TABLE_TableIndirection["FlatIdent_4A232%0"] == 0) then
					TABLE_TableIndirection["profileFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\190\23\107\38\135\182\160", "\230\232\126\24\79\229\218\197")] = false;
					TABLE_TableIndirection["sidebar%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\128\90\75\217\249\254\203", "\228\214\51\56\176\155\146\174")] = false;
					TABLE_TableIndirection["FlatIdent_4A232%0"] = 1;
				end
				if (3 == TABLE_TableIndirection["FlatIdent_4A232%0"]) then
					TABLE_TableIndirection["tw%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\254\113\179\57\207\65\96\238\217", "\139\189\30\222\73\163\36\20")]:Connect(function(s)
						if ((s == Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\42\7\87\48\24\10\85\34\41\31\87\61\31", "\73\122\107\54")][LUAOBFUSACTOR_DECRYPT_STR_0("\55\192\81\33\88\113\0\202\88", "\20\116\175\60\81\52")]) and not TABLE_TableIndirection["guiVisible%0"]) then
							TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\63\8\0\41\11\13\22", "\64\105\97\115")] = false;
						end
					end);
					break;
				end
				if (1 == TABLE_TableIndirection["FlatIdent_4A232%0"]) then
					TABLE_TableIndirection["contentContainer%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\157\225\246\167\250\242\174", "\158\203\136\133\206\152")] = false;
					TABLE_TableIndirection["sideDiv%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\225\225\181\113\52\219\237", "\86\183\136\198\24")] = false;
					TABLE_TableIndirection["FlatIdent_4A232%0"] = 2;
				end
				if (TABLE_TableIndirection["FlatIdent_4A232%0"] == 2) then
					TABLE_TableIndirection["tw%0"] = TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["mainFrame%0"], TweenInfo.new(0.35, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\164\42\187\200\53\238\155\149\50\164\196", "\200\225\75\200\161\91\137")].Quint, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\106\211\99\6\62\237\23\70\192\117\12\36\227\60\65", "\83\47\178\16\111\80\138")].In), {[LUAOBFUSACTOR_DECRYPT_STR_0("\48\195\0\167", "\90\99\170\122\194\21\71")]=UDim2.new(0, 0, 0, 0)});
					TABLE_TableIndirection["tw%0"]:Play();
					TABLE_TableIndirection["FlatIdent_4A232%0"] = 3;
				end
			end
		end
		return;
	end
	if ((3368 == 3368) and gp) then
		return;
	end
	if isBindPressed(input, TABLE_TableIndirection["state%0"].Key1) then
		if ((2643 < 3815) and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\36\160\66\255", "\149\104\207\33\206\201")]) then
			smoothTeleport(TABLE_TableIndirection["state%0"].Loc1);
		else
			showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\233\21\3\40\221\254", "\155\167\122\119\65\190"), LUAOBFUSACTOR_DECRYPT_STR_0("\66\178\201\63\198\121\165\209\122\135\54\185\202\46\150\101\182\211\63\210\56", "\182\22\215\165\90"), true);
		end
	elseif isBindPressed(input, TABLE_TableIndirection["state%0"].Key2) then
		if ((1913 > 493) and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\200\0\59\143", "\195\132\111\88\189\137\108")]) then
			smoothTeleport(TABLE_TableIndirection["state%0"].Loc2);
		else
			showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\197\181\183\69\232\191", "\44\139\218\195"), LUAOBFUSACTOR_DECRYPT_STR_0("\22\45\21\18\173\23\205\54\104\75\87\179\23\203\98\59\24\1\184\28\145", "\191\66\72\121\119\221\120"), true);
		end
	elseif isBindPressed(input, TABLE_TableIndirection["state%0"].TPWalkKey) then
		TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\3\178\144\56\134\137\98\57\131\165\53\143\134", "\39\87\226\199\89\234\226")] = not TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\197\125\255\233\207\74\225\255\76\202\228\198\69", "\164\145\45\168\136\163\33")];
		if TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\6\59\11\51\19\73\253", "\135\82\84\108\84\127\44\142")][LUAOBFUSACTOR_DECRYPT_STR_0("\184\99\42\235\3\221\193\130\82\31\230\10\210", "\132\236\51\125\138\111\182")] then
			TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\248\83\28\25\24\233\4", "\25\172\60\123\126\116\140\119")][LUAOBFUSACTOR_DECRYPT_STR_0("\179\236\125\80\71\30\162\210\75\83\71\16\131", "\117\231\188\42\49\43")]();
		end
		updateTPWalk();
		if ((4755 > 3428) and TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\180\101\207\46\140\94\221\33\129\87\244\42\132", "\79\224\53\152")]) then
			showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\197\108\51", "\94\149\58\99"), LUAOBFUSACTOR_DECRYPT_STR_0("\184\239\122\163\128\212\13\135\130\222\79\174\137\219\3", "\194\236\191\45"), false);
		else
			showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\53\145\47", "\49\101\199\127"), LUAOBFUSACTOR_DECRYPT_STR_0("\46\72\156\215\142\208\57\150\19\107\170\212\142\222\125\252", "\210\122\24\203\182\226\187\25"), false);
		end
	elseif ((1381 <= 2369) and isBindPressed(input, TABLE_TableIndirection["state%0"].CFlyKey)) then
		TABLE_TableIndirection["FlatIdent_6473%0"] = 0;
		while true do
			if (TABLE_TableIndirection["FlatIdent_6473%0"] == 0) then
				TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\196\37\188\198\194\13\177\221\235\6\180", "\191\135\99\208")] = not TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\219\12\65\71\221\36\76\92\244\47\73", "\62\152\74\45")];
				if TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\115\125\79\62\243\232\213", "\168\39\18\40\89\159\141\166")][LUAOBFUSACTOR_DECRYPT_STR_0("\134\33\61\230\113\53\164\5\61\250\80", "\91\197\103\81\159\52")] then
					TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\131\56\168\64\174\178\36", "\194\215\87\207\39")][LUAOBFUSACTOR_DECRYPT_STR_0("\91\215\247\22\110\229\121\243\247\10\79", "\139\24\145\155\111\43")]();
				end
				TABLE_TableIndirection["FlatIdent_6473%0"] = 1;
			end
			if (TABLE_TableIndirection["FlatIdent_6473%0"] == 1) then
				if (TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\60\147\43\106\129\163\188\29\185\34\119", "\221\127\213\71\19\196\205")] or (4843 == 4084)) then
					TABLE_TableIndirection["FlatIdent_1BB9C%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_1BB9C%0"] == 0) then
							startCFly();
							showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\239\125\84\53", "\98\172\59\56\76\97\172\90"), LUAOBFUSACTOR_DECRYPT_STR_0("\242\237\193\8\43\212\139\245\5\63\145\206\221\8\36\221\206\215\71", "\70\177\171\179\105"), false);
							break;
						end
					end
				else
					TABLE_TableIndirection["FlatIdent_451F3%0"] = 0;
					while true do
						if (TABLE_TableIndirection["FlatIdent_451F3%0"] == 0) then
							stopCFly();
							showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\15\234\75\240", "\224\76\172\39\137\232\132"), LUAOBFUSACTOR_DECRYPT_STR_0("\49\158\8\171\179\85\96\52\180\3\234\186\89\51\19\186\22\175\186\30", "\64\114\216\122\202\222\48"), false);
							break;
						end
					end
				end
				break;
			end
		end
	elseif ((4669 > 363) and isBindPressed(input, TABLE_TableIndirection["state%0"].StandSwitcherKey1)) then
		doStandSwitchFast(TABLE_TableIndirection["state%0"].SelectedSwitchStand1, LUAOBFUSACTOR_DECRYPT_STR_0("\6\6\31\78\233\100", "\201\85\106\112\58"));
	elseif isBindPressed(input, TABLE_TableIndirection["state%0"].StandSwitcherKey2) then
		doStandSwitchFast(TABLE_TableIndirection["state%0"].SelectedSwitchStand2, LUAOBFUSACTOR_DECRYPT_STR_0("\155\83\162\211\232\13", "\167\200\63\205"));
	end
end));
TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\55\197\20\124", "\57\100\172\110\25\132\191")] = UDim2.new(0, 0, 0, 0);
TABLE_TableIndirection["mainFrame%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\22\204\48\189\172\98\134\157\58\201\7\164\170\126\154\152\53\223\54\184\168\105", "\232\84\173\83\214\203\16\233")] = 0.5;
TABLE_TableIndirection["TweenService%0"]:Create(TABLE_TableIndirection["mainFrame%0"], TweenInfo.new(0.7, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\144\174\25\46\136\178\50\161\182\6\34", "\97\213\207\106\71\230\213")].Back, Enum[LUAOBFUSACTOR_DECRYPT_STR_0("\162\226\183\250\54\128\199\173\225\61\132\247\173\252\54", "\88\231\131\196\147")].Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\249\37\33\50", "\213\170\76\91\87\129\19\207")]=UDim2.new(0, 550, 0, 440),[LUAOBFUSACTOR_DECRYPT_STR_0("\171\84\132\64\118\240\253\110\135\81\179\89\112\236\225\107\136\71\130\69\114\251", "\27\233\53\231\43\17\130\146")]=0}):Play();
task.spawn(function()
	TABLE_TableIndirection["FlatIdent_41631%0"] = 0;
	TABLE_TableIndirection["autoLoaded%0"] = nil;
	while true do
		if (TABLE_TableIndirection["FlatIdent_41631%0"] == 0) then
			task.wait(1.5);
			TABLE_TableIndirection["autoLoaded%0"] = false;
			TABLE_TableIndirection["FlatIdent_41631%0"] = 1;
		end
		if (TABLE_TableIndirection["FlatIdent_41631%0"] == 1) then
			pcall(function()
				if ((isfile and isfile(TABLE_TableIndirection["configFolder%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\207\22\45\68\143\27\55\81\132\89\44\72\148", "\48\224\119\88"))) or (1877 >= 3138)) then
					TABLE_TableIndirection["autoName%0"] = readfile(TABLE_TableIndirection["configFolder%0"] .. LUAOBFUSACTOR_DECRYPT_STR_0("\240\13\177\99\193\231\36\49\187\66\176\111\218", "\80\223\108\196\23\174\139\75"));
					if ((4742 >= 3626) and TABLE_TableIndirection["autoName%0"] and (TABLE_TableIndirection["autoName%0"] ~= "") and loadConfig(TABLE_TableIndirection["autoName%0"])) then
						TABLE_TableIndirection["state%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\35\160\251\0\19\177\242\1\51\170\249\3\25\162", "\101\112\197\151")] = TABLE_TableIndirection["autoName%0"];
						if (TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\227\5\223\240\187\171\8\201\4", "\127\167\119\176\128\223\196")][LUAOBFUSACTOR_DECRYPT_STR_0("\190\223\9\161\7\86\136\222\38\171\10\68\132\221", "\34\237\186\101\196\100")] or (4540 == 916)) then
							TABLE_TableIndirection["UIUpdaters%0"][LUAOBFUSACTOR_DECRYPT_STR_0("\228\24\226\220\192\207\29\227\223", "\164\160\106\141\172")][LUAOBFUSACTOR_DECRYPT_STR_0("\138\206\134\85\11\201\174\14\154\196\132\86\1\218", "\106\217\171\234\48\104\189\203")]();
						end
						showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\22\1\173\66\242\212\227\116\36\190\77\229\199\225\49", "\134\84\104\215\35\128\166"), LUAOBFUSACTOR_DECRYPT_STR_0("\39\66\164\163\136\9\86\180\169\128\70\116\191\162\130\15\80\234\236", "\228\102\55\208\204") .. TABLE_TableIndirection["autoName%0"], false);
						TABLE_TableIndirection["autoLoaded%0"] = true;
					end
				end
			end);
			if not TABLE_TableIndirection["autoLoaded%0"] then
				showToast(LUAOBFUSACTOR_DECRYPT_STR_0("\226\190\76\190\5\104\197\247\122\182\25\127\193\176\83", "\26\160\215\54\223\119"), LUAOBFUSACTOR_DECRYPT_STR_0("\23\170\248\86\207\154\68\46\191\245\81\156\233\126\46\190\233\5\200\213\54\51\183\250\66\208\223\54\42\189\243\80\146", "\22\71\216\157\37\188\186"), false);
			end
			break;
		end
	end
end);
