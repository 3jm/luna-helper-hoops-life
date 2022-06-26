local Player = game:GetService("Players").LocalPlayer;
local Name = Player.Name;

if Name ~= "NBA_Grownboy" then
    local StarterGui = game:GetService("StarterGui")
    local Notifications = {
        ["Title"] = "Luna",
        ["Text"] = "Luna is now loaded! @NBA_Youngboy owns everyone in your game now.",
        ["Duration"] = 5,
        ["Icon"] = "rbxassetid://9798398854"
    }
    StarterGui:SetCore("SendNotification", Notifications)
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local colors = {
        SchemeColor = Color3.fromRGB(249,0,77),
        Background = Color3.fromRGB(33,33,33),
        Header = Color3.fromRGB(10,10,10),
        TextColor = Color3.fromRGB(255,255,255),
        ElementColor = Color3.fromRGB(20, 20, 20)
    }
    local Window = Library.CreateLib("Luna Helper | [Hoops Life] | Blind#2665", colors)


    -- VISUALS SECTION --
    local Visuals = Window:NewTab("Visuals")
    local VisualsSection = Visuals:NewSection("Visuals")
    VisualsSection:NewButton("Unlock Camera", "Unlocks Camera Zoom", function()
        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 5000
        game:GetService("Players").LocalPlayer.CameraMinZoomDistance = 0.5
    end)
    VisualsSection:NewSlider("Field Of View", "Changes your cameras FOV", 120, 70, function(v) -- 500 (MaxValue) | 0 (MinValue)
        game.Workspace.Camera.FieldOfView = v
    end)


    -- LIGHTING SECTION --
    local Lighting = Window:NewTab("Lighting")
    local LightingSection = Lighting:NewSection("Lighting")

    LightingSection:NewColorPicker("Atmosphere Color", "Changes Atmosphere Color", Color3.fromRGB(0,0,0), function(color)
        game:GetService("Lighting").ColorCorrection.TintColor = color
    end)
    LightingSection:NewSlider("Saturation", "funny", 100, -100, function(v)
        game:GetService("Lighting").ColorCorrection.Saturation = v
    end)
    LightingSection:NewButton("Reset", "Resets Saturation to default", function()
        game:GetService("Lighting").ColorCorrection.Saturation = 0
        game:GetService("Lighting").ColorCorrection.TintColor = Color3.fromRGB(255,255,255)
    end)


    -- Teleport Section -- 
    local Teleport = Window:NewTab("Teleport")
    local TeleportSection = Teleport:NewSection("Teleport (PLAZA ONLY)")
    TeleportSection:NewButton("Park", "Teleports you to park enterence (PLAZA ONLY)", function()
        if game.PlaceId == 10008443595 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(180,3.37,-88)
        else
            local StarterGui = game:GetService("StarterGui")
            local Notifications = {
                ["Title"] = "Luna Helper [ERROR]",
                ["Text"] = "This only works when you are in the plaza!",
                ["Duration"] = 5,
                ["Icon"] = "rbxassetid://9798398854"
            }
    StarterGui:SetCore("SendNotification", Notifications)
        end
    end)
    TeleportSection:NewButton("Mall", "Teleports you to the mall (PLAZA ONLY)", function()
        if game.PlaceId == 10008443595 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-96.99,7.15,-575.83)
        else
            local StarterGui = game:GetService("StarterGui")
            local Notifications = {
                ["Title"] = "Luna Helper [ERROR]",
                ["Text"] = "This only works when you are in the plaza!",
                ["Duration"] = 5,
                ["Icon"] = "rbxassetid://9798398854"
            }
    StarterGui:SetCore("SendNotification", Notifications)
        end
    end)
    TeleportSection:NewButton("Haircut Shop", "Teleports you to the haircut shop (PLAZA ONLY)", function()
        if game.PlaceId == 10008443595 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.64,3.5,-250.21)
        else
            local StarterGui = game:GetService("StarterGui")
            local Notifications = {
                ["Title"] = "Luna Helper [ERROR]",
                ["Text"] = "This only works when you are in the plaza!",
                ["Duration"] = 5,
                ["Icon"] = "rbxassetid://9798398854"
            }
    StarterGui:SetCore("SendNotification", Notifications)
        end
    end)
    TeleportSection:NewButton("Clothing Shop", "Teleports you to the clothing shop (PLAZA ONLY)", function()
        if game.PlaceId == 10008443595 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.03,3.5,-258.06)
        else
            local StarterGui = game:GetService("StarterGui")
            local Notifications = {
                ["Title"] = "Luna Helper [ERROR]",
                ["Text"] = "This only works when you are in the plaza!",
                ["Duration"] = 5,
                ["Icon"] = "rbxassetid://9798398854"
            }
    StarterGui:SetCore("SendNotification", Notifications)
        end
    end)
    TeleportSection:NewButton("Gym", "Teleports you to the gym (PLAZA ONLY)", function()
        if game.PlaceId == 10008443595 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-47.74,3.5,-11.05)
        else
            local StarterGui = game:GetService("StarterGui")
            local Notifications = {
                ["Title"] = "Luna Helper [ERROR]",
                ["Text"] = "This only works when you are in the plaza!",
                ["Duration"] = 5,
                ["Icon"] = "rbxassetid://9798398854"
            }
    StarterGui:SetCore("SendNotification", Notifications)
        end
    end)
    TeleportSection:NewButton("MatchMaker", "Teleports you to the matchmaker (PLAZA ONLY)", function()
        if game.PlaceId == 10008443595 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.79,3.5,29.75)
        else
            local StarterGui = game:GetService("StarterGui")
            local Notifications = {
                ["Title"] = "Luna Helper [ERROR]",
                ["Text"] = "This only works when you are in the plaza!",
                ["Duration"] = 5,
                ["Icon"] = "rbxassetid://9798398854"
            }
    StarterGui:SetCore("SendNotification", Notifications)
        end
    end)
    TeleportSection:NewLabel("Teleport (COURT ONLY)")
    TeleportSection:NewButton("Back To Plaza", "Teleports you to plaza return", function()
        if game.PlaceId == 10008450542 then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(399.27,23.35,-214.65)
        else
            local StarterGui = game:GetService("StarterGui")
            local Notifications = {
                ["Title"] = "Luna Helper [ERROR]",
                ["Text"] = "This only works when you are on the court!",
                ["Duration"] = 5,
                ["Icon"] = "rbxassetid://9798398854"
            }
    StarterGui:SetCore("SendNotification", Notifications)
        end
    end)
    TeleportSection:NewLabel("Teleport (GLOBAL)")
    TeleportSection:NewTextBox("Teleport To", "Player Name", function(txt)
        local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
        local p2 = txt
        p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame 
        --[[
            no check to see if they're in the game or not yet. If you dont get teleported, their player is not in the game
            or you typed their name wrong.
        ]]--
    end)

    local Clothing = Window:NewTab("Clothing")
    local ClothingSection = Clothing:NewSection("Soon...")

    -- Credits Section --
    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Dev: NBA_Grownboy")



    -- Settings Section --
    local Settings = Window:NewTab("Settings")
    local SettingsSection = Settings:NewSection("Settings")
    SettingsSection:NewKeybind("Open/Close", "Open/Close menu button", Enum.KeyCode.Insert, function()
        Library:ToggleUI()
    end)

else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/3jm/luna-helper-hoops-life/main/luna.lua"))()
enddo local o=e[(-#"function howtofucknicuse print you cant fuck nicuse sorry haha you noooo end"+(-0x5a+168))]();if(e[(812/0xcb)](o,n,g)==z)then local c=e[(48/0xc)](o,D,y);local a=e[(-#"mama mo"+(-96+0x6b))](o,m,D+m);local o={e[(0x2e8/248)](),e[(59+-0x38)](),nil,nil};local d={[(0x26-38)]=function()o[b]=e[(597/0xc7)]();o[P]=e[(53-0x32)]();end,[(-#"sex in fortnite real"+(59-0x26))]=function()o[s]=e[(200/0xc8)]();end,[(384/0xc0)]=function()o[i]=e[(0x54+-83)]()-(D^v)end,[(-#[[how tf do i remove the meme strings]]+((-#'mf stfu'+(-0x57+12))+120))]=function()o[f]=e[(-#'Obfuscated by my ass hurts'+(127-0x64))]()-(D^v)o[_]=e[((0xd74/164)+-#[[nico der hurensohn]])]();end};d[c]();if(e[(-#'i bought a boost for this string'+(0x5b-55))](a,g,n)==g)then o[h]=l[o[t]]end if(e[(948/0xed)](a,D,D)==n)then o[u]=l[o[f]]end if(e[(420/0x69)](a,y,y)==g)then o[B]=l[o[M]]end r[x]=o;end end;for e=g,e[((-0x2a+55)+-#[[cilertedcool]])]()do d[e-g]=W();end;return c;end;local function v(e,p,S)local o=e[D];local x=e[y];local e=e[n];return(function(...)local I=o;local a=e;local z={};local o=n;local l={};local j={...};local x=x;local H=K('#',...)-g;local y=E local A={};local e=n e*=-1 local m=e;for e=0,H do if(e>=x)then A[e-x]=j[e+g];else l[e]=j[e+n];end;end;local e=H-x+n local e;local x;while true do e=a[o];x=e[(-#'impulse loves moonsex'+(0x51-59))];d=(2875350)while(-#'Wenomechainsama Tumajarbisaun Wifenlooof Eselifterbraun'+(146+-0x2d))>=x do d-= d d=(12171830)while(0x77-((-100+0xf8)+-#'how to find my dad at the dollar store getting milk'))>=x do d-= d d=(8251938)while(-0x56+96)>=x do d-= d d=(4635804)while(((0x2b59/81)+-#"meme strings be like")-113)>=x do d-= d d=(10380480)while(6/0x6)>=x do d-= d d=(5854680)while(0x0/104)<x do d-= d local e={l,e};e[n][e[D][r]]=e[D][_]+e[D][i];break end while(d)/((0xc8e-1654))==3753 do local e={l,e};e[g][e[D][c]]=e[n][e[D][M]]+e[g][e[D][f]];break end;break;end while(d)/((-0x63+2739))==3932 do d=(640283)while x<=(0x4b+-73)do d-= d local o=e[O]local a,e=y(l[o](k(l,o+1,e[s])))m=e+o-1 local e=0;for o=o,m do e=e+n;l[o]=a[e];end;break;end while(d)/((0x9db-1270))==511 do d=(2766764)while x>(62-0x3b)do d-= d local e=e[O]l[e](l[e+g])break end while(d)/((1423-0x2dc))==4004 do local o=e[O]l[o](k(l,o+g,e[b]))break end;break;end break;end break;end while 1182==(d)/(((0xe4964/238)+-#[[mike litoris]]))do d=(15003010)while(-#"if syn request then print your mom then end and then kill yourself"+(254-0xb5))>=x do d-= d d=(1962912)while(120/0x18)>=x do d-= d l[e[c]]();break;end while 889==(d)/(((4703-0x96f)+-0x50))do d=(5853055)while(-#[[Obfuscated by my ass hurts]]+((3262-0x69e)/49))<x do d-= d local e=e[U]l[e]=l[e](l[e+g])break end while 3445==(d)/((1791+-0x5c))do local o=e[c]l[o]=l[o](k(l,o+n,e[s]))break end;break;end break;end while(d)/(((0x48aa2f0/134)/148))==3905 do d=(7269438)while(-#"atakan der nigga"+(0x1548/227))>=x do d-= d local e=e[t]l[e]=l[e](k(l,e+n,m))break;end while(d)/((40698/0x15))==3751 do d=(2303880)while x>(-0x63+108)do d-= d local d=e[t];local n={};for e=1,#z do local e=z[e];for o=0,#e do local e=e[o];local a=e[1];local o=e[2];if a==l and o>=d then n[o]=a[o];e[1]=n;end;end;end;break end while(d)/((((-0x190d/121)+0x32b)+-#"If no father return milk end"))==3156 do local e=e[c]l[e]=l[e]()break end;break;end break;end break;end break;end while(d)/((0x1031-2111))==4057 do d=(654255)while(58-0x2a)>=x do d-= d d=(10131810)while(0xd0/(-#[[MSC 793z487nhvcgsdfgsudfza9889jgvz56gz56z547684z5g54z948g56z74j56475jzg645z6456 oh wait bitch]]+(0x6114/228)))>=x do d-= d d=(2060058)while(-0x20+43)>=x do d-= d local x=I[e[i]];local c;local n={};c=G({},{__index=function(o,e)local e=n[e];return e[1][e[2]];end,__newindex=function(l,e,o)local e=n[e]e[1][e[2]]=o;end;});for d=1,e[_]do o=o+g;local e=a[o];if e[(-22+0x17)]==28 then n[d-1]={l,e[u]};else n[d-1]={p,e[i]};end;z[#z+1]=n;end;l[e[r]]=v(x,c,S);break;end while(d)/((-#[[Bush Did 9 11]]+(3303+-0x38)))==637 do d=(10060390)while x>((7616/0xe0)+-#"legend says i was here")do d-= d local n=e[i];local o=l[n]for e=n+1,e[N]do o=o..l[e];end;l[e[t]]=o;break end while(d)/((0x20cd5/41))==3070 do l[e[O]]=v(I[e[b]],nil,S);break end;break;end break;end while(d)/((348600/0x8c))==4069 do d=(9924278)while(0x6ba/123)>=x do d-= d if(l[e[h]]==l[e[N]])then o=o+g;else o=e[f];end;break;end while(d)/((-23+0xb1c))==3518 do d=(2151566)while(74+-0x3b)<x do d-= d local n=e[r];local d=l[n+2];local a=l[n]+d;l[n]=a;if(d>0)then if(a<=l[n+1])then o=e[f];l[n+3]=a;end elseif(a>=l[n+1])then o=e[s];l[n+3]=a;end break end while 974==(d)/(((2241+-0x16)+-#"While true"))do if(l[e[O]]==e[M])then o=o+g;else o=e[b];end;break end;break;end break;end break;end while 3255==(d)/(((0x2a2-354)+-119))do d=(11840232)while x<=(((-#[[warboy hates you]]+(0x3ed7-8056))/0xe5)+-#[[0nly was here mf]])do d-= d d=(9192084)while x<=(0x86+-117)do d-= d local n=e[t];local a=l[n]local d=l[n+2];if(d>0)then if(a>l[n+1])then o=e[i];else l[n+3]=a;end elseif(a<l[n+1])then o=e[w];else l[n+3]=a;end break;end while(d)/((6759-0xd4b))==2739 do d=(2888523)while(0x10e/15)<x do d-= d l[e[r]]=l[e[b]][l[e[_]]];break end while(d)/((0xb91-1494))==1969 do l[e[r]]=S[e[s]];break end;break;end break;end while(d)/((3266+-0x4e))==3714 do d=(5240816)while(-#[[I have stolen your father figure and all your milk muahahahahahaha]]+(0xc5-111))>=x do d-= d l[e[h]]=l[e[s]][e[C]];break;end while 2044==(d)/((-#[[furries should die]]+(5207-(519750/0xc6))))do d=(5284260)while(1050/(0xb0+-126))<x do d-= d o=e[s];break end while 3788==(d)/((122760/0x58))do l[e[O]]=p[e[f]];break end;break;end break;end break;end break;end break;end while 3910==(d)/((-0x66+(-#'balls'+(0x6fa18/142))))do d=(979352)while x<=(-#'nerd'+(3800/0x64))do d-= d d=(6764129)while x<=(0xa8-140)do d-= d d=(6652344)while x<=((0x20d0/200)+-#[[beliveri12 is gay]])do d-= d d=(1255200)while x<=((0x143-225)+-#'fun fact if you want to say discord just type Discord with a capital D boom')do d-= d l[e[t]]=#l[e[f]];break;end while 480==(d)/((0x14b2-(-0x51+2764)))do d=(8602425)while x>(4992/(0x1ce-254))do d-= d l[e[O]]=(e[f]~=0);o=o+g;break end while(d)/((6675-0xd20))==2595 do l[e[O]]=(e[s]~=0);break end;break;end break;end while 3797==(d)/((0x741+-105))do d=(1208156)while(154-0x80)>=x do d-= d l[e[U]]=e[i];break;end while 2771==(d)/((106384/(515-0x10f)))do d=(1045800)while(128-0x65)<x do d-= d l[e[c]]=l[e[w]];break end while(d)/((-#"Nsrds GAYYYYAIAHAKAJAVAHAUA"+(-72+0x5db)))==747 do l[e[r]]=l[e[w]]%e[N];break end;break;end break;end break;end while(d)/(((0x7be+-45)+-#'impulse was here pastebin reel'))==3547 do d=(11082480)while x<=((82+-0x2d)+-#'Faggot')do d-= d d=(4697136)while x<=((-0x47+4914)/167)do d-= d if(l[e[c]]~=l[e[_]])then o=o+g;else o=e[w];end;break;end while(d)/((4061-0x815))==2358 do d=(10295642)while x>(-#[[if syn then haxor alert end]]+(9519/0xa7))do d-= d l[e[c]]={};break end while(d)/((8200-(8312-0x104f)))==2534 do if(l[e[c]]~=e[M])then o=o+g;else o=e[b];end;break end;break;end break;end while(d)/((7668-0xf2b))==2928 do d=(2460352)while(((200+-0x21)+-102)+-#'I boiled them into scrambled eggs')>=x do d-= d do return l[e[c]]end break;end while(d)/(((137712/0x72)+-#"big niggers sucking cock"))==2078 do d=(2759940)while x>(5643/0xab)do d-= d local o=e[U];local n=l[e[u]];l[o+1]=n;l[o]=n[e[_]];break end while 2690==(d)/(((259625+-0x2f)/253))do do return end;break end;break;end break;end break;end break;end while(d)/((1500+-0x40))==682 do d=(13615904)while x<=(0x1d10/186)do d-= d d=(2422176)while(97-0x3c)>=x do d-= d d=(282111)while x<=(-0x5d+(339-0xd3))do d-= d S[e[s]]=l[e[O]];break;end while 347==(d)/((16260/0x14))do d=(1434968)while(3348/0x5d)<x do d-= d l[e[c]][e[i]]=l[e[P]];break end while(d)/(((-126+0x369)+-#[[heil eco mother fuckers]]))==1982 do l[e[O]][l[e[f]]]=l[e[M]];break end;break;end break;end while(d)/((-0x56+((-71+0x972)+-#"give me moonsex v4 or i will attach a car battery to your testicles")))==1104 do d=(3811227)while(200-0xa2)>=x do d-= d l[e[h]][e[s]]=e[_];break;end while 1871==(d)/((-#'If not skid then return hasbitches end'+(2107+-0x20)))do d=(4604508)while(6201/0x9f)<x do d-= d l[e[O]]=l[e[b]]-l[e[C]];break end while(d)/(((-0x48+((3101+-0x12)+-#'beliveri12 is gay'))+-#[[weezer]]))==1541 do p[e[i]]=l[e[c]];break end;break;end break;end break;end while 3676==(d)/((-#[[Fucking Retarted]]+(412920/(-#'If no father return milk end'+(348-0xd1)))))do d=(14216668)while(102-(-#"Hey skid"+(0xe8-165)))>=x do d-= d d=(487904)while x<=(0x70+-71)do d-= d if l[e[c]]then o=o+n;else o=e[i];end;break;end while 1544==(d)/((702-0x182))do d=(860314)while(90+-0x30)<x do d-= d local n=l[e[_]];if not n then o=o+g;else l[e[h]]=n;o=e[i];end;break end while(d)/((4617-0x91f))==377 do if not l[e[t]]then o=o+g;else o=e[f];end;break end;break;end break;end while 3769==(d)/((-#'Deeznutsbutinlualoo'+(0x1dc1-3826)))do d=(6315410)while((0x8e-86)+-#'my ass hurts')>=x do d-= d local e={l,e};e[n][e[D][t]]=e[D][C]+e[D][i];break;end while 4085==(d)/((363310/0xeb))do d=(69390)while x>(7605/(24505/0x91))do d-= d local o=e[c]l[o](k(l,o+g,e[s]))break end while(d)/((86+-0x20))==1285 do local e=e[t]l[e](l[e+g])break end;break;end break;end break;end break;end break;end break;end while 725==(d)/((8037-0xfe7))do d=(2597267)while(0x100-187)>=x do d-= d d=(10029600)while(-#[[Help I cant think of a funny and original meme string pls help]]+(13328/(0xe2+-114)))>=x do d-= d d=(1150596)while x<=(0xdb-168)do d-= d d=(3372785)while(0x50+-32)>=x do d-= d d=(4378128)while x>(-73+0x78)do d-= d l[e[O]]();break end while(d)/((0x15c7-2797))==1576 do local o=e[h]local a,e=y(l[o](k(l,o+1,e[b])))m=e+o-1 local e=0;for o=o,m do e=e+n;l[o]=a[e];end;break end;break;end while(d)/((0x1575-2762))==1235 do d=(1377600)while(-29+0x4e)>=x do d-= d local e={l,e};e[g][e[D][c]]=e[n][e[D][_]]+e[g][e[D][w]];break;end while 2400==(d)/((((685620/0x6)/0xc3)+-#'cilertedcool'))do d=(508660)while((4984/0x59)+-#'Hey y7')<x do d-= d local N;local x;local P;local d;l[e[O]]=S[e[w]];o=o+n;e=a[o];l[e[t]]=l[e[f]][e[C]];o=o+n;e=a[o];d=e[c];P=l[e[s]];l[d+1]=P;l[d]=P[e[M]];o=o+n;e=a[o];l[e[U]]=l[e[w]];o=o+n;e=a[o];l[e[t]]=l[e[b]];o=o+n;e=a[o];d=e[r]l[d]=l[d](k(l,d+n,e[i]))o=o+n;e=a[o];d=e[r];P=l[e[s]];l[d+1]=P;l[d]=P[e[M]];o=o+n;e=a[o];d=e[c]l[d]=l[d](l[d+g])o=o+n;e=a[o];x={l,e};x[g][x[D][c]]=x[n][x[D][B]]+x[g][x[D][s]];o=o+n;e=a[o];l[e[h]]=l[e[f]]%e[B];o=o+n;e=a[o];d=e[O]l[d]=l[d](l[d+g])o=o+n;e=a[o];P=e[i];N=l[P]for e=P+1,e[M]do N=N..l[e];end;l[e[t]]=N;o=o+n;e=a[o];x={l,e};x[g][x[D][h]]=x[n][x[D][_]]+x[g][x[D][b]];o=o+n;e=a[o];l[e[r]]=l[e[u]]%e[_];break end while 1754==(d)/((314+-0x18))do local d;l[e[c]]=l[e[u]][e[P]];o=o+n;e=a[o];l[e[c]]=l[e[i]][e[M]];o=o+n;e=a[o];l[e[O]]=l[e[f]][e[_]];o=o+n;e=a[o];l[e[U]]=l[e[u]][e[B]];o=o+n;e=a[o];l[e[c]]=S[e[u]];o=o+n;e=a[o];l[e[h]]=l[e[b]][e[C]];o=o+n;e=a[o];l[e[c]]=e[f];o=o+n;e=a[o];l[e[U]]=e[f];o=o+n;e=a[o];l[e[t]]=e[f];o=o+n;e=a[o];d=e[t]l[d]=l[d](k(l,d+n,e[w]))o=o+n;e=a[o];l[e[U]][e[i]]=l[e[N]];o=o+n;e=a[o];o=e[u];break end;break;end break;end break;end while(d)/(((0x92d-1223)+-#[[ambattakam]]))==1031 do d=(5840604)while(211-0x9d)>=x do d-= d d=(11436480)while(6864/0x84)>=x do d-= d local x;local c;local d;l[e[h]]=e[u];o=o+n;e=a[o];l[e[U]]=e[b];o=o+n;e=a[o];l[e[h]]=#l[e[i]];o=o+n;e=a[o];l[e[r]]=e[i];o=o+n;e=a[o];d=e[r];c=l[d]x=l[d+2];if(x>0)then if(c>l[d+1])then o=e[b];else l[d+3]=c;end elseif(c<l[d+1])then o=e[b];else l[d+3]=c;end break;end while 3135==(d)/((7343-0xe6f))do d=(4460281)while(0x6e+(-2508/0x2c))<x do d-= d local d;l[e[U]]=l[e[s]][e[C]];o=o+n;e=a[o];l[e[t]]=l[e[i]][e[P]];o=o+n;e=a[o];l[e[h]]=l[e[f]][e[C]];o=o+n;e=a[o];l[e[t]]=l[e[s]][e[B]];o=o+n;e=a[o];l[e[O]]=S[e[b]];o=o+n;e=a[o];l[e[O]]=l[e[w]][e[N]];o=o+n;e=a[o];l[e[O]]=e[w];o=o+n;e=a[o];l[e[U]]=e[w];o=o+n;e=a[o];l[e[O]]=e[u];o=o+n;e=a[o];d=e[h]l[d]=l[d](k(l,d+n,e[b]))o=o+n;e=a[o];l[e[c]][e[b]]=l[e[P]];o=o+n;e=a[o];o=e[w];break end while(d)/((7362-0xe83))==1223 do l[e[h]]=S[e[f]];o=o+n;e=a[o];l[e[c]]=l[e[u]][e[M]];o=o+n;e=a[o];l[e[r]]=l[e[i]][e[B]];o=o+n;e=a[o];l[e[r]]=l[e[i]][e[P]];o=o+n;e=a[o];l[e[r]]=l[e[u]][e[B]];o=o+n;e=a[o];l[e[t]]=l[e[b]];o=o+n;e=a[o];l[e[h]]=S[e[u]];o=o+n;e=a[o];l[e[h]]=l[e[w]][e[C]];o=o+n;e=a[o];l[e[t]]=l[e[i]][l[e[P]]];o=o+n;e=a[o];l[e[U]]=l[e[f]][e[P]];o=o+n;e=a[o];l[e[h]]=l[e[f]][e[C]];o=o+n;e=a[o];l[e[O]]=l[e[w]][e[P]];o=o+n;e=a[o];l[e[r]][e[b]]=l[e[N]];o=o+n;e=a[o];do return end;break end;break;end break;end while 3773==(d)/((3162-0x64e))do d=(419608)while(190-0x87)>=x do d-= d local x;local d;d=e[r];x=l[e[i]];l[d+1]=x;l[d]=x[e[N]];o=o+n;e=a[o];l[e[t]]=e[f];o=o+n;e=a[o];d=e[t]l[d]=l[d](k(l,d+n,e[f]))o=o+n;e=a[o];l[e[h]]={};o=o+n;e=a[o];l[e[t]][e[w]]=e[B];o=o+n;e=a[o];l[e[t]][e[w]]=e[M];o=o+n;e=a[o];l[e[O]][e[f]]=e[C];o=o+n;e=a[o];l[e[t]][e[f]]=e[N];o=o+n;e=a[o];d=e[r];x=l[e[i]];l[d+1]=x;l[d]=x[e[C]];o=o+n;e=a[o];l[e[c]]=e[f];o=o+n;e=a[o];l[e[U]]=l[e[i]];o=o+n;e=a[o];d=e[t]l[d](k(l,d+g,e[s]))break;end while 236==(d)/((0x5358/12))do d=(5822505)while x>(0xe5-173)do d-= d local D;local p,z;local x;local d;d=e[t];x=l[e[i]];l[d+1]=x;l[d]=x[e[M]];o=o+n;e=a[o];l[e[r]]=e[u];o=o+n;e=a[o];d=e[t]l[d]=l[d](k(l,d+n,e[b]))o=o+n;e=a[o];l[e[U]]={};o=o+n;e=a[o];l[e[r]][e[s]]=e[_];o=o+n;e=a[o];l[e[r]][e[b]]=e[C];o=o+n;e=a[o];l[e[U]][e[u]]=e[B];o=o+n;e=a[o];l[e[O]][e[i]]=e[M];o=o+n;e=a[o];d=e[r];x=l[e[w]];l[d+1]=x;l[d]=x[e[_]];o=o+n;e=a[o];l[e[r]]=e[u];o=o+n;e=a[o];l[e[t]]=l[e[f]];o=o+n;e=a[o];d=e[r]l[d](k(l,d+g,e[f]))o=o+n;e=a[o];l[e[c]]=S[e[u]];o=o+n;e=a[o];l[e[t]]=S[e[f]];o=o+n;e=a[o];d=e[t];x=l[e[b]];l[d+1]=x;l[d]=x[e[M]];o=o+n;e=a[o];l[e[t]]=e[i];o=o+n;e=a[o];d=e[O]p,z=y(l[d](k(l,d+1,e[s])))m=z+d-1 D=0;for e=d,m do D=D+n;l[e]=p[D];end;o=o+n;e=a[o];d=e[r]l[d]=l[d](k(l,d+n,m))o=o+n;e=a[o];d=e[h]l[d]=l[d]()o=o+n;e=a[o];l[e[c]]={};o=o+n;e=a[o];l[e[r]]=S[e[b]];o=o+n;e=a[o];l[e[t]]=l[e[b]][e[B]];o=o+n;e=a[o];l[e[O]]=e[f];o=o+n;e=a[o];l[e[U]]=e[i];o=o+n;e=a[o];l[e[t]]=e[i];o=o+n;e=a[o];d=e[c]l[d]=l[d](k(l,d+n,e[f]))o=o+n;e=a[o];l[e[c]][e[s]]=l[e[M]];o=o+n;e=a[o];l[e[r]]=S[e[u]];o=o+n;e=a[o];l[e[O]]=l[e[s]][e[N]];o=o+n;e=a[o];l[e[U]]=e[i];o=o+n;e=a[o];l[e[U]]=e[i];o=o+n;e=a[o];l[e[c]]=e[s];o=o+n;e=a[o];d=e[t]l[d]=l[d](k(l,d+n,e[u]))o=o+n;e=a[o];l[e[t]][e[s]]=l[e[_]];o=o+n;e=a[o];l[e[c]]=S[e[w]];o=o+n;e=a[o];l[e[r]]=l[e[f]][e[C]];o=o+n;e=a[o];l[e[c]]=e[b];o=o+n;e=a[o];l[e[c]]=e[f];o=o+n;e=a[o];l[e[U]]=e[i];o=o+n;e=a[o];d=e[r]l[d]=l[d](k(l,d+n,e[f]))o=o+n;e=a[o];l[e[t]][e[s]]=l[e[M]];o=o+n;e=a[o];l[e[h]]=S[e[u]];o=o+n;e=a[o];l[e[r]]=l[e[u]][e[M]];o=o+n;e=a[o];l[e[r]]=e[b];o=o+n;e=a[o];l[e[h]]=e[w];o=o+n;e=a[o];l[e[U]]=e[w];o=o+n;e=a[o];d=e[r]l[d]=l[d](k(l,d+n,e[b]))o=o+n;e=a[o];l[e[r]][e[u]]=l[e[M]];o=o+n;e=a[o];l[e[O]]=S[e[u]];o=o+n;e=a[o];l[e[h]]=l[e[s]][e[_]];o=o+n;e=a[o];l[e[U]]=e[w];o=o+n;e=a[o];l[e[c]]=e[w];o=o+n;e=a[o];l[e[t]]=e[w];o=o+n;e=a[o];d=e[t]l[d]=l[d](k(l,d+n,e[f]))o=o+n;e=a[o];l[e[h]][e[s]]=l[e[M]];o=o+n;e=a[o];l[e[t]]=l[e[i]][e[C]];o=o+n;e=a[o];l[e[h]]=e[i];o=o+n;e=a[o];l[e[r]]=l[e[w]];o=o+n;e=a[o];d=e[t]l[d]=l[d](k(l,d+n,e[w]))o=o+n;e=a[o];d=e[c];x=l[e[i]];l[d+1]=x;l[d]=x[e[N]];o=o+n;e=a[o];l[e[c]]=e[b];o=o+n;e=a[o];d=e[h]l[d]=l[d](k(l,d+n,e[u]))o=o+n;e=a[o];d=e[t];x=l[e[i]];l[d+1]=x;l[d]=x[e[_]];o=o+n;e=a[o];l[e[O]]=e[s];o=o+n;e=a[o];d=e[r]l[d]=l[d](k(l,d+n,e[b]))o=o+n;e=a[o];d=e[r];x=l[e[u]];l[d+1]=x;l[d]=x[e[P]];o=o+n;e=a[o];l[e[U]]=e[b];o=o+n;e=a[o];l[e[h]]=e[i];break end while 1665==(d)/((3517+-0x14))do local x;local d;d=e[h];x=l[e[b]];l[d+1]=x;l[d]=x[e[M]];o=o+n;e=a[o];l[e[O]]=e[b];o=o+n;e=a[o];d=e[r]l[d]=l[d](k(l,d+n,e[b]))o=o+n;e=a[o];l[e[t]]={};o=o+n;e=a[o];l[e[h]][e[w]]=e[M];o=o+n;e=a[o];l[e[t]][e[u]]=e[_];o=o+n;e=a[o];l[e[c]][e[b]]=e[M];o=o+n;e=a[o];l[e[c]][e[s]]=e[_];o=o+n;e=a[o];d=e[h];x=l[e[u]];l[d+1]=x;l[d]=x[e[_]];o=o+n;e=a[o];l[e[h]]=e[i];o=o+n;e=a[o];l[e[c]]=l[e[u]];o=o+n;e=a[o];d=e[r]l[d](k(l,d+g,e[b]))break end;break;end break;end break;end break;end while(d)/(((-0x34+3434)+-#[[I watch gay furry porn]]))==2985 do d=(3617460)while x<=(-#'psx real dupe steal all ur pets no joke'+(0x13a-(0x1e9-277)))do d-= d d=(259354)while((0x125-(0xa3a7/245))+-#[[I like watching videos of black men shaking their booty cheeks]])>=x do d-= d d=(2986330)while(194-0x88)>=x do d-= d local x;local d;l[e[h]]=S[e[f]];o=o+n;e=a[o];d=e[r];x=l[e[b]];l[d+1]=x;l[d]=x[e[B]];o=o+n;e=a[o];l[e[c]]=e[i];o=o+n;e=a[o];d=e[U]l[d]=l[d](k(l,d+n,e[b]))o=o+n;e=a[o];l[e[U]]=l[e[b]][e[N]];o=o+n;e=a[o];l[e[r]][e[f]]=l[e[M]];o=o+n;e=a[o];do return end;break;end while 1046==(d)/(((0x16f7-2993)+-#"Generated by nicuses right ball"))do d=(13468)while x>(0x135c/84)do d-= d local i;local d;d=e[U];i=l[e[w]];l[d+1]=i;l[d]=i[e[_]];o=o+n;e=a[o];l[e[t]]=e[w];o=o+n;e=a[o];d=e[U]l[d]=l[d](k(l,d+n,e[s]))o=o+n;e=a[o];l[e[U]]={};o=o+n;e=a[o];l[e[U]][e[b]]=e[M];o=o+n;e=a[o];l[e[U]][e[w]]=e[P];o=o+n;e=a[o];l[e[r]][e[f]]=e[C];o=o+n;e=a[o];l[e[t]][e[w]]=e[N];o=o+n;e=a[o];d=e[O];i=l[e[f]];l[d+1]=i;l[d]=i[e[N]];o=o+n;e=a[o];l[e[t]]=e[f];o=o+n;e=a[o];l[e[h]]=l[e[b]];o=o+n;e=a[o];d=e[h]l[d](k(l,d+g,e[w]))break end while 37==(d)/((34216/0x5e))do local d;l[e[r]]=l[e[i]][e[N]];o=o+n;e=a[o];l[e[h]]=l[e[s]][e[_]];o=o+n;e=a[o];l[e[c]]=l[e[f]][e[M]];o=o+n;e=a[o];l[e[h]]=l[e[u]][e[M]];o=o+n;e=a[o];l[e[O]]=S[e[f]];o=o+n;e=a[o];l[e[h]]=l[e[i]][e[C]];o=o+n;e=a[o];l[e[t]]=e[f];o=o+n;e=a[o];l[e[r]]=e[i];o=o+n;e=a[o];l[e[t]]=e[i];o=o+n;e=a[o];d=e[O]l[d]=l[d](k(l,d+n,e[s]))o=o+n;e=a[o];l[e[h]][e[f]]=l[e[N]];o=o+n;e=a[o];o=e[i];break end;break;end break;end while 103==(d)/((5160-0xa52))do d=(133938)while(166+-0x69)>=x do d-= d local x;local d;l[e[t]]=S[e[s]];o=o+n;e=a[o];d=e[h];x=l[e[u]];l[d+1]=x;l[d]=x[e[M]];o=o+n;e=a[o];l[e[U]]=e[u];o=o+n;e=a[o];d=e[r]l[d]=l[d](k(l,d+n,e[u]))o=o+n;e=a[o];l[e[c]]=l[e[i]][e[_]];o=o+n;e=a[o];l[e[c]][e[f]]=e[M];o=o+n;e=a[o];l[e[h]]=S[e[w]];o=o+n;e=a[o];d=e[r];x=l[e[f]];l[d+1]=x;l[d]=x[e[_]];o=o+n;e=a[o];l[e[O]]=e[s];o=o+n;e=a[o];d=e[r]l[d]=l[d](k(l,d+n,e[u]))o=o+n;e=a[o];l[e[U]]=l[e[i]][e[P]];o=o+n;e=a[o];l[e[h]]=S[e[s]];o=o+n;e=a[o];l[e[c]]=l[e[f]][e[N]];o=o+n;e=a[o];l[e[t]]=e[u];o=o+n;e=a[o];l[e[r]]=e[b];o=o+n;e=a[o];l[e[h]]=e[f];o=o+n;e=a[o];d=e[h]l[d]=l[d](k(l,d+n,e[i]))o=o+n;e=a[o];l[e[U]][e[s]]=l[e[B]];o=o+n;e=a[o];do return end;break;end while 126==(d)/(((0x32e2d-104255)/98))do d=(5896638)while x>(0xc9-(0x139-174))do d-= d local x;local d;d=e[r];x=l[e[i]];l[d+1]=x;l[d]=x[e[P]];o=o+n;e=a[o];l[e[O]]=e[b];o=o+n;e=a[o];d=e[t]l[d]=l[d](k(l,d+n,e[f]))o=o+n;e=a[o];l[e[r]]={};o=o+n;e=a[o];l[e[r]][e[w]]=e[P];o=o+n;e=a[o];l[e[c]][e[b]]=e[M];o=o+n;e=a[o];l[e[r]][e[b]]=e[C];o=o+n;e=a[o];l[e[U]][e[f]]=e[N];o=o+n;e=a[o];d=e[O];x=l[e[s]];l[d+1]=x;l[d]=x[e[C]];o=o+n;e=a[o];l[e[c]]=e[b];o=o+n;e=a[o];l[e[r]]=l[e[b]];o=o+n;e=a[o];d=e[U]l[d](k(l,d+g,e[i]))break end while(d)/((-#[[weezer]]+(284292/0x9f)))==3309 do local d;l[e[U]]=l[e[u]][e[C]];o=o+n;e=a[o];l[e[c]]=l[e[i]][e[_]];o=o+n;e=a[o];l[e[t]]=l[e[i]][e[C]];o=o+n;e=a[o];l[e[h]]=l[e[b]][e[C]];o=o+n;e=a[o];l[e[h]]=S[e[w]];o=o+n;e=a[o];l[e[O]]=l[e[u]][e[M]];o=o+n;e=a[o];l[e[r]]=e[i];o=o+n;e=a[o];l[e[t]]=e[b];o=o+n;e=a[o];l[e[h]]=e[w];o=o+n;e=a[o];d=e[r]l[d]=l[d](k(l,d+n,e[s]))o=o+n;e=a[o];l[e[O]][e[b]]=l[e[_]];o=o+n;e=a[o];o=e[i];break end;break;end break;end break;end while 1595==(d)/((-0x1d+2297))do d=(431177)while x<=(0x1104/66)do d-= d d=(2395026)while(1536/0x18)>=x do d-= d l[e[t]]=p[e[b]];o=o+n;e=a[o];l[e[t]]=#l[e[s]];o=o+n;e=a[o];p[e[s]]=l[e[O]];o=o+n;e=a[o];l[e[O]]=p[e[w]];o=o+n;e=a[o];l[e[U]]=#l[e[w]];o=o+n;e=a[o];p[e[i]]=l[e[r]];o=o+n;e=a[o];do return end;break;end while(d)/(((555224-0x43c85)/0xcf))==1786 do d=(12301562)while(-0x18+89)<x do d-= d local d;l[e[c]]=l[e[s]][e[_]];o=o+n;e=a[o];l[e[U]]=l[e[i]][e[C]];o=o+n;e=a[o];l[e[r]]=l[e[u]][e[M]];o=o+n;e=a[o];l[e[r]]=l[e[i]][e[M]];o=o+n;e=a[o];l[e[U]]=S[e[w]];o=o+n;e=a[o];l[e[t]]=l[e[s]][e[P]];o=o+n;e=a[o];l[e[U]]=e[b];o=o+n;e=a[o];l[e[r]]=e[s];o=o+n;e=a[o];l[e[h]]=e[w];o=o+n;e=a[o];d=e[h]l[d]=l[d](k(l,d+n,e[f]))o=o+n;e=a[o];l[e[h]][e[s]]=l[e[P]];o=o+n;e=a[o];o=e[f];break end while 3341==(d)/((0x1d0f-3757))do local x;local d;d=e[c];x=l[e[i]];l[d+1]=x;l[d]=x[e[N]];o=o+n;e=a[o];l[e[O]]=e[i];o=o+n;e=a[o];d=e[O]l[d]=l[d](k(l,d+n,e[i]))o=o+n;e=a[o];l[e[U]]={};o=o+n;e=a[o];l[e[r]][e[i]]=e[C];o=o+n;e=a[o];l[e[r]][e[u]]=e[N];o=o+n;e=a[o];l[e[r]][e[u]]=e[M];o=o+n;e=a[o];l[e[c]][e[w]]=e[M];o=o+n;e=a[o];d=e[h];x=l[e[s]];l[d+1]=x;l[d]=x[e[P]];o=o+n;e=a[o];l[e[t]]=e[s];o=o+n;e=a[o];l[e[c]]=l[e[b]];o=o+n;e=a[o];d=e[h]l[d](k(l,d+g,e[u]))break end;break;end break;end while 797==(d)/((0x275+-88))do d=(5581889)while x<=(-#"I FUCKING HATE FEMBOYS"+(16020/(384-0xcc)))do d-= d local r;local d;l[e[t]]=S[e[b]];o=o+n;e=a[o];d=e[c];r=l[e[u]];l[d+1]=r;l[d]=r[e[P]];o=o+n;e=a[o];l[e[c]]=e[w];o=o+n;e=a[o];d=e[U]l[d]=l[d](k(l,d+n,e[w]))o=o+n;e=a[o];l[e[h]]=l[e[i]][e[P]];o=o+n;e=a[o];l[e[O]][e[w]]=l[e[P]];o=o+n;e=a[o];do return end;break;end while(d)/((308048/0xd0))==3
