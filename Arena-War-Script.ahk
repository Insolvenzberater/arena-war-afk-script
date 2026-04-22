; --- AUTO-ADMIN ---
if !A_IsAdmin
{
    Run *RunAs "%A_ScriptFullPath%"
    ExitApp
}

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 4


;region FindText Strings
;--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
global HELPER_NAME_SC := "|<Your Rockstar FindText String>*122..."
global HELPER2_NAME_SC := "|<Your second Rockstar FindText String>*361..."
global Host:="|<Host>*201$30.CQD30CM610CNaNnCNaNnCNaNnCNaTnCNaDn0Nb7n0NbXnCNblnCNbtnCNatnCNatnCNaNnCM61nCQD3nU"  ; Reference image for "Host" that appears beside the host's name when they have successfully joined the game
global Host_DE :="|<host>*199$33.zzzzzwtkwA3bA30UAtaNbDbAnAtwtaNbDbAnDtwtaMzDUAnXtw1aSDDbAnstwtaTbDbAnQtwtaNXDbAnAtwtUM7DbC7VtzzzzzzU"

global Joined1:="|<Helper joined>*200$43.wMCMn1US8XANUkD4taAntbWQn6NwvlCNVAyRsbAkaTCwHaMH1bS9nAdUnj4taEltrWQn8NwulCNYAyQMbAn6TCAHaNXDa28XAlXm8C3aQkM4" ; Reference image for "Joined" that appears beside the players' names when they have successfully joined the game
global Joined1_DE:="|<beigetreten1>*198$50.zzzzzzzzs7163U0EC0kFUM043XAwFaTbAsnD4Nbtn6Anl6NyQlXAwFyTbAM714TVtnC1kF4MCQ3WAQF6Tb0snD4NbtnCAnl6NyQlXAwFaTbAMnD4Nbtn68ll4NyQlUQ4M63bATzzzzzzzy"


global Joined2:="|<Helper and 1 player joined job>*210$45.zzzzzzzztUtbA63zAXANUkDtCNXAyNz9nANbnjtCNXAyRz9nA9bnjtCNZA6Rz9nAdUnjtCNYAyRz9nAVbnjtCNaAyRb9nAlbngtCNaAyRWQXAlbnC3UtbA61zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzvltbi67zA7ANUkDtCNXAyNz9nANbnjtCNXAyRz9nA9bnjtCNVAyRz9nAdUnjtCNZA6Rz9nAVbnjtCNaAyRb9nAlbngtCNaAyRa9nAlbnC3UtbA61syDAtUkTzzzzzzzzzzzzzzw"
global Joined2_DE:="|<beigetreten2>72CC72-0.95$72.zzzwDzzzzzzzUQ0M4010k004UA4E4010E004WAwFYT7AFwMwXAwFYT7AFwMwXAwFYT7AFwMwWAwFwT7AFwMwUA4Fw370EAM4UA4E4370kAM4UA4E4370EQM4X4wF4T7AFwMwX4wFYT7AFwMwX4wFYT7AFwMwX4wFYT7AFwMwUA4E437AEAM4UA0M437AEAM4UQ4Q63bAEAs4zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzUQ4MA011k004UA0E4010E004UA4E4010EE04WAwFYT7AFwMwXAwFYT7AFwMwWAwFYT7AFwMwWAwFwT7AFwMwUA4F4370EAM4UA4E4370EAM4XAwE4T7AFwMwX4wFYT7AFwMwX4wFYT7AFwMwX4wFYT7AFwMwUAAE477AEQMAUA4E437AEAM4UQ0M437AEAM4zzzzzzzzzzzzU"

global Team:="|<Team Selection Screen>*210$53.zzzzzzzzzzzzzzzzzz0307tz7yTvyzzlyDszrxzzfwDpzjvzyHsTfzTrzxbmyLyzjzvjYxjxz0DbDBnTvyzzSSNazrxzw0wnRzjvzvwtovzTrzrxnXryzjzDtb7jxz06znDDTzzzzzzzzzzzzzzzzzk" ; Reference image for the Team Selection Screen
global Team_DE:="|<team>*136$52.000000000000000003zk000000Dz0000000300000000A0w0sBlk0k7wDszzk30tllXbb0A73a7AAA0kTy3wkkk31ztzX330A60C6AAA0kQ6kMkkk30svVX330A3z7yAAA0k3k7Akkk000000008"

global Vehicle:="|<Vehicle Selection Screen>*137$24.0000M300M300M700A63kA67wCACQ6AQC6ATy3MTy3MM03sQ61kCC1kDw1U3k0000U" ; Reference image for the Vehicle Selection Screen
global Vehicle_DE:="|<vehicle>*135$85.000000000000000000M0000000003zU0A0000000001zk060000000000k0030000000000M071j3Pz1kMA7AA0DszlxzXyA67y70CCQMw1nba37D3za3A6Q0lUn1b3VU0Ta3A0kzxUn0kk1zn1a0szykNUMM0kNUn0sQ0MAkAA0kQkNUs63i6Q660QCMAkM3VX767307zA6MTszVzXzVU0xa3ADwD0SkSk0000000000000M000000000000sQ000000000000Tw0000000000003w00000000000000000000000000002"

global Three:="|<3>*232$43.k000000M000000DzzzzzzrzzzzzzvzzzzzzxzzzzzzyzzzzzzzTzzzzzzjzzzzzzrzzzzzzvzzzzzzxzzzzzzyk0000TzE" ; Reference image for "3" when the game is counting down to start the gamemode
global Two:="|<2>*218$43.00000DzbzzzzzzrzzzzzzvzzzzzzxzzzzzzyzzzzzzzTzzzzzzjzzzzzzrzzzzzzvzzzzzzxzzzzzzyzz00003TzU0000jzk0000Lzs0000/zw00004zy0000200000010000000k" ; Reference image for "2" when the game is counting down to start the gamemode
global One:="|<1>*221$21.z007k00y007U00s007000k004000zzz7zzwzzzY" ; Reference image for "1" when the game is counting down to start the gamemode
global Go:="|<Go>*200$41.Ts00002zk00005zU0000/z00000Ly00000jzzzzzzTzzzzzyzzzzzzxzzzzzzvzzzzzzrzzzzzzjw00001Ts00002zk00005zU0000/z00000Ly00000k" ; Reference image for "Go" when the game is counting down to start the gamemode
global LDS:="|<Like/Dislike Screen>**50$35.w3z00184m002E9Y004UT/vy90aSTDG1AttaY2Njbb84mPTiE9Uo0QUH4tzt0aRvzvzAtrvryNNnDUAmvkvzzwzzY" ; Reference image for the Like/Dislike Screen
global LDS_DE:="|<>*118$69.zzzzzzzU0007zzznzzw0000zzzyTtzU0007zzznzDw0000wDsS1kTU00070S1k63w0000nnbaStzU0006T9znnDw0000k1DySNzU000609znnDw0000nzDySNzU0006TAwnnjw0000sXUCSQTU0007Uz3nnnw2006zzzzzzzUE00rzzzzzzw7zzyzzzzzzzUzzzrzzzzzzw0000U"
global VS:="|<Vote Screen>*105$12.zzz3w1s5sYlUVkXsXs7l7l7X7X77UDkTzzU" ; Reference image for the Vote Screen
global VS_DE:="|<>*118$65.zzzzzzU0001Dzzzzz00002Tzzzzy0001Yzzzzzw000393wDcTs0006E3kD0Tk000AXXDCQzU000NDazBxz0000mTc0Pty0001YzE0rnw0M039wrzjbs3k06HtbbTDkTzzwXbWCyTUzzzt0TUxwz0S003zzzzzy0A007zzzzzw0800Dzzzzzs0000E"
global C1:="|<Carnage1>*95$91.zzzzzzzzzzzzzzzTzrzzzzzzzzzzzzDzXzzzzzzzzzzzzzzXzzzzzzzzzzzzzzXzzzzzzzzzzzzzzVzzzzzzzzzzzzzzW1zzzzzzzzzzzzzXUTzzzzzzzzzzzzbkDzzzzzzzzzzzzbsDzzzzzzzzzzzzbzxzzzzzzzzzzzzbzzzzzzzzzzzzzzbzzzzzzzzzzzzzzbzzzzzzzzzzzzzzrzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzwzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzzzzzzzXTzzzzzyzzzzzzzVzzzzzzzzzzzzzztzyzzzzzzzzzzzzzzzTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzyzzzzzzzzwzzzzzzTzzzzzzzwDzzzzzzzzzzzzzw3zzzzzzzzzzzzzy1zzzzzzzzzzzzzz0zzzzzzzzzzzzzzUTzzzzzzzzwzzzzsTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzbzzzzzzzzzzzzzznzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzTzzzzzzzzzzzzzzk" ; Reference image for the Carnage 1 gamemode as seen in the Vote Screen
global C2:="|<Carnage2>*95$79.000000000000000000A000000000U1uTk00000070l7xzy0000003bnzvzzU000001rtzvzzs000000rsrxzzy000000PsnwzzzU000007tvyTzzk000003zzzTzzw000003xzziDry000001yyzz3nz00y000zTTzUTzU0zw00Tjjx0Tzk0Tzzzzljy0Dzs0TzzVzszzM7zw0zzzkTwTzj3zw0zzzzzzTTzyzy0zzzzzzzzzzzz0TzzzzzzvzzzzUTzzzzzzxzzzzUTzzzzzzyzzzzXbnzzzzjsDzzzXktzzzysS7zzz3wDzzzzTznDzy1z3zzzzzzw0001zlzzzzzza0000ztzzzzyzw0000TzzzzzzzA0000Dzzzzzzz400003zzzzzzXU00001zzzzzzUs00000zzzzzzk000000Dzzzzzs0000001zzzzzw00000007zzzzy00000001zzzzz00000000zzzzzU0000000Dzzzzk00000003zzzzw" ; Reference image for the Carnage 2 gamemode as seen in the Vote Screen
global C3:="|<Carnage3>*210$133.zzzzzzzzzzzzzzzzzzzzzzzz1zzzzzzzzzzzzzzzzyzTjy7TzzzzzzzzzzzzzzzzTDbwDjzzzzzzzzzzzzzzzzDbbwDnzzzzzzzzzzzzzzzz7bnwDlzzzzzzzzzzzzzzzzbnlwDtzzzzzzzzzzzzzzzzXltyDwzzzzzzzzzzzzzzzznlsyDwTzzvzzzzzzzzzzzzltszDzTzvtzzzzzzzzzzzztswT7zjs9szwszsNzXTkTzswwTbzzspwMyNTspz6DVjzswSDXzzssy0SPDssz77XnzwySDnzzswT7DDbswT7XntzwSDDtzzsyTjD7XsyT7nltzyTD7wzzszDbDXXsyD7ltszyD7byTzwTDb7XlwzDbtssTzDbXyDzQT7rbXlwT7Xsw0zzbbnzjzCTbnbnswTbnwyRzzbntznzbDXnntwyDXlwSDyznntztzb7XtttwT7XswC7yTntwzyzbbVtxwyT7VsyCHyTtwyzzDXtowywzDNYtS6NyTxyzTzsDw7Mz8TmQ6NYYy0zyzTzzzzzzzTzzzzzzzlzzzzzzzzk" ; Reference image for the Carnage 3 gamemode as seen in the Vote Screen
global HB1:="|<HotBomb1>*210$131.zzzzzzzzzw7zzzzzzyzzzrzvzjzzzzz07zzzzzztzzzjzbyTzzjzkDbzzzzzzXzzyTzDwzzyTztzjzzzzzzDzzszwznzztzznzTzzzzzwTzznzlzbzznzz7wzzzzzztzzz7zbyTzz3zyTtzzzzzzXzzwTyDszzk3zszbzzzzzzDzzszwznzzszznyDzzzzzwTzzXzlz7kznzz7kz3yQSDt3zz7zbyT0zDzyT3w/wmMTVrzwTyDswKyTzssTlHlMgy7jztzwTnlgtzzW1z6bXltwSDzXzlU7bVnzz0DwRCD3XlwzzDy006D3DzwTrtwQSCDbtzwTy3swzCTzszjXslswyDXztzwzntwRzznzDDnbXlwzDznzlz7btnxz7ySTaDDblwTzDzbyTDnbvyTtwyAwSDbszyTzDwyTDTjwzXvwttwyDXztzwznwwSyTtwDrnbntwSDznztzbxlxtznUzb7DDnlMzzjznzzw7s7zkDzUSzTlT3zzTzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz" ; Reference image for the Hot Bomb 1 gamemode as seen in the Vote Screen
global HB2:="|<HotBomb2>*210$147.zzzzzzzzz0000000000000007zzzzzzzzw000000000000000zzzzzzzzzz000000000000007zzzyzzzzzzlU000000600000zzzzbzzzzzsDy000000k00637zzDwzzzzzM0Tzy00006000kszzlz7zzrzs3vzzz0001k00C77zyTtzzwzzVzDzzzU00C001kszzXwDzzbzyTtzzzzzs3U00CC7zwz3zzszznyTzzzzzsQ003Vkzz7wTzs3zwTnzzzzzz7z00QQ7ztzbzy0DzbwTzzzzzkzzw73UzyDszDyTzsz7wznXvyDzzkss7znzD0TXzyDVy3wsQDU7zyC70zwTls/szzlsTUzaHVw6TzXls7zbwS5DDzwQ7shsyTD3nzwQDzzszXndlzza3yBj3VlswTz7Xzzz60QRCTzs0zXkksQSDXzssTzz001bVnzzDvwS6D7XlwTyD7zzy3tsyAzztzj7lnkswTbzlszzzXyDD3bzyTtsyAQCDXszySDzzwzntwRzznzDDnbXlsy7zXnzzz7wTDbDrwTltwNswT7lzwwTzztzbvwtyzbwTDbD7XlwTz7bzzzDwzTDDjwy7tsttwS73ztwzzzvzjtXtvzX1ziCSDXXEzzDbzzzTxzUTYzy0zw3nvy9MDztxzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzw" ; Reference image for the Hot Bomb 2 gamemode as seen in the Vote Screen
global HB3:="|<HotBomb3>*210$150.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzjzzzzzzzzzxzzzzzy3zzzzzzzDzzxxyzzyTtzzzzzk0zzzzzzyDzztxyzzyTtzzxzz0yzzzzzzyTzzntwzzwznzzxzzXyzzzzzzwTzzntszzwznzztzzryzzzzzzwzzzXntzztzbzzlzzbyzzzzzzszzzbXlzztzbzzkzz7wzzzzzztzzz7bnzznzDzw0TzDszzzzzzlzzyD7XzznzDzzbzyDlzzxzzznzzyDD7zzbyTVz7zyTXw7xswTUDzwSDDzzbwT2zDzwS7sDtosT1bzwySDzzDwy+yTzwsDlPtwyT7bzswSTzyDswuSTztUzXPksQSDbztwwTzyA0suQzzs1zbVlswyTbzlswzzs00NwQzznyz7VXlswT7zntszzw7nlwNzznzTDnbVlwzDzXntzzwzXnwtzzbzTDX7XnszDzbntzztzbnwvzzbySTbD7XtyTzbbnzztzbntnxzbwSTaTDblwTzDbnzznzDrtnxzDsyTCSDbnwzzDjbzznzDrnnvzDlySCSTDVszzTDbzzrzTn7nrz63zQSyTb6VzzTDjzzrzTs7tDzkDzUyyzWq7zzzzjzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzU" ; Reference image for the Hot Bomb 3 gamemode as seen in the Vote Screen
; --- LADESCREENS & MENÜS ---
global GTA_MAINMENU := "|<OnlineInMainScreen>*127$92.00000000000000007k00000000000007zUS0QA033U33zy3zw7U7300kw0kzzVk7Vw1kk0ADUAC00s0sTUQA033s33U0A077s7300kr0ks0700lr1kk0AAsAC01k0AQsQA033C33U0M03bC7300klkkzz600tllkk0AACADzlU0CQCQA0333X3U0Q0371b300kkQks0700lkRkk0AA3gC00k0QQ3wA0330P3U0C0C70T300kk7ks01k7Vk7kk0AA0wC00DzkQ0wDzX30D3zy1zk70D3zskk1kzzU3U0000000000000000000000000000U"
global MAINMENU_Story := "|<story marked white>*130$83.000000000000001w0000T0000000DyDzw7zUDzVk3UzyTzsTzUTzVk63UQ0s1s3Uk3VUQ70Q1k3U3VU33VkC0s3UC0730733UQ0070M0760C7C0S00C1k0CA0Q7M0zk0Q3U0AM1k7k0Ts0s700Mzz0D007s1kC00lzy0C000s3UQ03Xzw0M000k70M0760Q0k0k1UC0s0QA0M1U1k30Q0s0sM0k303UC0s1s7Uk1U603zs1k1zy1U30A03zk3U1zs3060M00w0000S000000000000000000004"
global SKIP_Button := "|<skip button if gta online reminds you of gta+>*100$38.zzzzzzz1tzjzz0CTvzznlbzzzwyNlikzDyMvU7kTYStwz0sDiTDy63vbvztWStwtyNbiTDDaQvXXk3b6s1y1ttiEzzzzzbzzzzztzzzzzyTzzzzzbzzzzzzzs"
global SKIP_BUTTON_DE:="|<ueberspringen>*119$66.zzzzzzs0000zzzzzzs0000zzzzzzs0006zzzzzzs0006w9sTEzs0006s1k70Ts0006nlbbCTs0006rtbnDDs0006btU3TDs0006btU3TDs1U06ntjzTDs3U06llbnTDsDzzys1l7TDsDzzyw9sDTDs7U00ztzzzzs1U00nnzzzzs0000k3zzzzs0000wDzzzzs0000zzzzzzs0000U"
global ESC_Button := "|<esc button for identifying main menu>*150$28.00000zk003z000A0000k1kC30DnyDxXQMzb1U30Dq0A03M0k65lXzTnyDwy7k00008"
global GTA_StoryModeLoadingScreen := "|<GTAStoryLoadingScreen>*127$37.zzzzzzw00Tzzy00Dzzz007zzzU03zzzk01zzz00000000000000000000000000000000000000000000000000000000000000000000000000s00zzzw00Tzzy00Dzzw"
global GTAOnlineReached := "|<GTA Online reached>*131$8.zzz0kA3zkA30kDy"
global continueOnline := "|<continueOnline>*112$23.0000000M000k001U0030006000A000MA00ks01bzzzDzzyD00060000004"
; --- SOCIAL CLUB ---
global SC_SOCIAL := "|<helperSocialTab>*117$44.Uw71XXXk60k8sMwFa8kC6DCFmA31XlwQ7smMy371yAWDkFkTW8XzUQ7sU8ws78k82D69WA2Q3k60k87023kQ61k0U"
global SC_SOCIAL_DE:="|<social>*113$48.zzzzzzzzsD1sAsszk60k4sMzlaMn4sMznYQXUkMzlwQXwmMzsAQXwm8zy4Q3wn8zzUQXwU8znUQXUU8zlWMn4b0zk60k4b03sD1sA7U3zzzzzzzzU"
global SC_SOCIAL_Orange := "|<social marked orange>*87$44.kwDVnXXs61kAsMwNa8lC6DCNmSHdXlwQbwmMy779zAmDsFmTnAXzYQbwk8wsb9t82D6NWAGQ3k61kAbU23ky71s0U"
global SC_SOCIAL_Orange_DE:="|<socialgelb>*82$47.zzzzzzzzkw7UnXXz0k60b37wNaAlC6DtnCNmQATlwQXwmMzkMt7taFzsFkDnAXzw3YTa17wsbAt82DslANmHUTk60k4bU3kS3kMD07zzzzzzzy"
global SC_FIND_PLAYER := "|<findplayer>*176$41.yM3APxz6k78q36BUSNA6AP0oqMAMq18ckMzA6NlyyUMAlX1X0kTW6361UV4A6A3338MAM7y6EzMk"
global SC_FIND_PLAYER_DE:="|<spieler finden>*180$63.00000000000wTBykTbkDqAmBg630X1UlaFhUkM4MA6A2Bg630X1UlkFhUkM4MA67Xtjq3wy1ykCEBUkM4MA60m1g630X1Un6EBUkM4MA6Am1g630X1UkwEByzTYQA600000000004"


global PLAYER_ACTIONS := "|<PLAYERACTIONS>*100$63.RXzjk31vylvaP1X0wNX6NQmMAM7aAMmCqn1X0wk36lqKMAM4a0Mq6nXxw1ak36kaAMAMAq0Mq7tX1X1yk36lXAMAMMqAMmANX1X33NX6N3gTgQMNsMlw"
global PLAYER_ACTIONS_DE:="|<spieleraktionen>*104$61.0000000000Dn3wy076Tza1VUNU3XAMn0kkAE3lgANUMM681cw6AkAA3A0qS36Ta7tw0nD1XA330nDNakla1VUNUDn8Mn0kkAk6BaANUMM6M66n6Azjzv633Mn60000000000E"

global INVITE_TO_GAME := "|<inviteToGame>*172$44.U030000800600k2001U0A0jiPyw7bfBYqNUnCnPBaMAngqnNy3AvAgqM0nCnCBaMAngnXNa3AfAMnj0tu"
global INVITE_TO_GAME_DE:="|<zum spiel einladen>*166$71.0000000000000003k0U300k0000Ak0060000000FU00A0008rr0kDYSM7ayFgn1kN9akNBaXNa1sXHBUWPB6nA0t6bv1wqOBaM0mBA621goPAklYONg4HNgqNUXAYmMBanTgn0wT8wkCBa00000U000000000010000000000020000000000000000008"

global SC_INVITES := "|<gameinvites>*174$58.S33XbsNXErACCCE1aBXQFsst06Qq9k6XbY0NnNa0G+KE1ZAaNvAhNw6GmNVgmJY0N/B76z9qE1YwwQO4bN06FnlnsONY0N775zVdaTVYQMM"
global SC_INVITES_DE:="|<spiel-einladungen>*180$64.00000000001wrv01yrAkC4PMA043Qn0sFhUk0EBnA3V6q3010rgkP4PMA043On1gTByk0TBfA6l0q31t0qwkH43MA043Nn3yEBUk0EBbAAN0q3010qQklY3Tjk7vMny700000000002"

global SC_ACCEPT := "|<helperaccept>*156$38.nkkE0E8N4UwnC6sQDAnVDbnnAuHtw4nAkyTD1n0Dbnnwn/VkwzBmF8DDnQEkE3ws"
global SC_ACCEPT_DE:="|<annehmen>*148$61.zzzzzzzzzzyQmAU6Fk1Ay696Hn8M7WT34V9tY83lDVUEYwm41s7kk8G212043n84VDAU0S1s4WEbaG8D8wmFAHn947YSN8a9tYW3mCQ6H40mN09bzzzzzzzzzzU"
;endregion

global SettingsPath := A_MyDocuments "\Rockstar Games\GTAV Enhanced\settings.xml"
global SettingsBackupPath := A_MyDocuments "\Rockstar Games\GTAV Enhanced\settings_backup.xml"


CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

; ==========================================
; AUTO-RESUME LOGIK:
; ==========================================
global SavedMode := 0
global AutoResume := 0
global LauncherMode := 0
global EpicGTA_EXE := "com.epicgames.launcher://apps/b0cd075465c44f87be3b505ac04a2e46%3A122e5e90b7b8424d930be8bc1a7e05fb%3A8769e24080ea413b8ebca3f1b8c50951?action=launch&silent=true"
global PlayerMode := 0      ; 0 = 2 Players, 1 = 3 Players
global NameOfHelper := "yourRockstarName" ;put your helpers rockstarname here doesnt matter if letters are capatilised
global NameOfHelper2 := "yourSecondRockstarName"
global WinnerVariant := 1
global WatchdogTimeout := 360000
global IniFile := "ARENA_AFK_" A_ComputerName ".ini"
; IF USING EPIC GAMES AND ITS NOT STARTING, try to get a new Link for EpicGTA_EXE. Create a new Desktop Shortcut in EPIC, (GTA5 Enhanced). And Right click, then press properties and copy out the whole url and paste it above


IniRead, SavedMode, %IniFile%, %A_ComputerName%, Mode, 0
IniRead, AutoResume, %IniFile%, %A_ComputerName%, Resume, 0
IniRead, LauncherMode, %IniFile%, %A_ComputerName%, Launcher, 0
IniRead, WinnerVariant, %IniFile%, %A_ComputerName%, WinnerVariant, 1
IniRead, PlayerMode, %IniFile%, %A_ComputerName%, PlayerMode, 0
if (PlayerMode == 0)   ; 2 Players
    WatchdogTimeout := 180000
else                  ; 3 Players
    WatchdogTimeout := 360000
IniRead, NameOfHelper, %IniFile%, %A_ComputerName%, HelperName, yourRockstarName
IniRead, HELPER_NAME_SC, %IniFile%, %A_ComputerName%, HelperString, |<Your Rockstar FindText String>*122$40.y09U00300a000AAzwtuzkn9YqBbvAaFMWQAmNxW9kn9Y68b3AaHMWQAmNBW9kTAna8a
IniRead, NameOfHelper2, %IniFile%, %A_ComputerName%, Helper2Name, yourSecondRockstarName
IniRead, HELPER2_NAME_SC, %IniFile%, %A_ComputerName%, Helper2String, |<Your second Rockstar FindText String>*122$40.y09U00300a000AAzwtuzkn9YqBbvAaFMWQAmNxW9kTAna8a

if (AutoResume = 1)
{
    IniWrite, 0, %IniFile%, %A_ComputerName%, Resume ; Direkt wieder auf 0 setzen, damit es nicht endlos loopt
    Mode := SavedMode
    Toggle := 1
    TrayTip, , Arena War AFK Script Auto-Resumed!
    SetTimer, HideTrayTip, -1000
    
    Watchdog := A_TickCount
    SetTimer, WatchdogCheck, 5000
    Goto, Hauptstart
}
ShowStartupGui()
Return
; ==========================================
; ENDE DER AUTO-RESUME LOGIK
; ==========================================

Hauptstart:
While (Toggle)
{
    Watchdog := A_TickCount
    ParkMouse()
    Loop
    {
        if (HostR := FindTextLang(X, Y, Host, Host_DE)) ; Determine if you are the host by checking for "Host" at the top of the player list
        {
            JoinedReady := 0

            if (PlayerMode == 1)
            {
                JoinedReady := FindTextLang(X, Y, Joined2, Joined2_DE)
            }
            else
            {
                JoinedReady := FindTextLang(X, Y, Joined1, Joined1_DE)
            }

            if (JoinedReady && Mode && WinnerVariant = 1) ; Wait for the other players to join then confirm the settings and start the job
            {
                RSleep(600)
                BlockInput, On
                WinActivate,AHK_exe GTA5_Enhanced.exe
                ResetAllKeys()
                Send {vk0Dsc1C Down} ; vk0Dsc1C = Enter
                RSleep(70)
                Send {vk0Dsc1C Up}
                RSleep(200)
                Send {vk26sc148 Down} ; vk26sc148 = Up Arrow Key (For more compatibility)
                RSleep(70)
                Send {vk26sc148 Up}
                RSleep(200)
                Send {vk0Dsc1C Down}
                RSleep(70)
                Send {vk0Dsc1C Up}
                RSleep(500)
                Send {vk26sc148 Down}
                RSleep(70)
                Send {vk26sc148 Up}
                RSleep(500)
                Send {vk0Dsc1C Down}
                RSleep(70)
                Send {vk0Dsc1C Up}
                BlockInput, Off
                Break
            }
        }

        if (TeamR := FindTextLang(X, Y, Team, Team_DE)) ; End the loop when it detects that the Team Selection Screen appeared
            Break
    }
    ParkMouse()
    Loop
    {
        TeamR := FindTextLang(X, Y, Team, Team_DE)
        if (TeamR)
            break
        Sleep, 100
    }

    RSleep(200)
    BlockInput, On
    WinActivate,AHK_exe GTA5_Enhanced.exe
    ResetAllKeys()
    Send {vk26sc148 Down}
    RSleep(70)
    Send {vk26sc148 Up}
    RSleep(200)
    Send {vk0Dsc1C Down}
    RSleep(70)
    Send {vk0Dsc1C Up}
    ParkMouse()
    Loop
    {
        VehicleR := FindTextLang(X, Y, Vehicle, Vehicle_DE)
        if (VehicleR)
            break
        Sleep, 100
    }

    RSleep(200)
    WinActivate,AHK_exe GTA5_Enhanced.exe
    ResetAllKeys()
    Send {vk25sc14B Down}
    RSleep(70)
    Send {vk25sc14B Up}
    RSleep(300)
    Send {vk25sc14B Down}
    RSleep(70)
    Send {vk25sc14B Up}
    RSleep(300)
    Send {vk25sc14B Down}
    RSleep(70)
    Send {vk25sc14B Up}
    RSleep(300)

    Send {vk26sc148 Down}
    RSleep(70)
    Send {vk26sc148 Up}
    RSleep(200)
    Send {vk0Dsc1C Down}
    RSleep(70)
    Send {vk0Dsc1C Up}
    RSleep(200)
    Send {vk0Dsc1C Down}
    RSleep(70)
    Send {vk0Dsc1C Up}
    BlockInput, Off

    if not Mode ; This part of the script only activates if you are in Helper Mode
    {
        ParkMouse()
        Loop ; Keep holding Ctrl + W to do a wheelie with the bike and then die by falling off of it, or if you are in a car, eventually you will get stuck and the game will blow you up for being stuck
        {
            (ThreeR:=SafeFindText(X, Y, Three))
            (TwoR:=SafeFindText(X, Y, Two))
            (OneR:=SafeFindText(X, Y, One))
            (GoR:=SafeFindText(X, Y, Go))
        } Until (ThreeR != 0) or (TwoR != 0) or (OneR != 0) or (GoR != 0)

        RSleep(200)
        WinActivate,AHK_exe GTA5_Enhanced.exe
        Send {vk57sc11 Down} ; vk57sc11 = W
        Send {vkA2sc1D Down} ; vkA2sc1D = Ctrl
        Loop
        {
            (LDSR := FindTextLang(X, Y, LDS, LDS_DE))
            (VSR  := FindTextLang(X, Y, VS, VS_DE)) ; Wait for the Like/Dislike Screen or Vote Screen to appear to stop holding Ctrl + W
        } Until (LDSR != 0) or (VSR != 0)
        Send {vk57sc11 Up}
        Send {vkA2sc1D Up}
    }
    ParkMouse()
    RSleep(200)
    Loop
    {
        if (LDSR := FindTextLang(X, Y, LDS, LDS_DE)) ; If on the Like/Dislike Screen then dislike the job to skip the timer so that it goes to the vote screen
        {
            BlockInput, On
            WinActivate,AHK_exe GTA5_Enhanced.exe
            ResetAllKeys()
            RSleep(100)
            Send {vk20sc39 Down} ; vk20sc39 = Space
            RSleep(70)
            Send {vk20sc39 Up}
            BlockInput, Off
            Break
        }

        if (VSR := FindTextLang(X, Y, VS, VS_DE))
            Break
    }
    ParkMouse()
    Loop
    {
        VSR := FindTextLang(X, Y, VS, VS_DE)
        if (VSR)
            break
        Sleep, 100
    }

    BlockInput, On
    WinActivate,AHK_exe GTA5_Enhanced.exe
    ResetAllKeys()
    RSleep(500)

    if (C2R:=SafeFindText(X, Y, C2)) ; Check if "Carnage2" is one of the options in the Vote Screen
    {
        RSleep(200)
        GTA_Click(X, Y)
        RSleep(200)
        MouseGetPos, XPosi, YPosi
        YPosi -= 35
        Click, %XPosi% %YPosi% 0
        While (VSR := FindTextLang(X, Y, VS, VS_DE))
        {
            RSleep(200)
            Click, Down
            RSleep(200)
            Click, Up
        }
    }

    if (C3R:=SafeFindText(X, Y, C3)) ; Check if "Carnage3" is one of the options in the Vote Screen
    {
        RSleep(200)
        GTA_Click(X, Y)
        RSleep(200)
        MouseGetPos, XPosi, YPosi
        YPosi -= 35
        Click, %XPosi% %YPosi% 0
        While (VSR := FindTextLang(X, Y, VS, VS_DE))
        {
            RSleep(200)
            Click, Down
            RSleep(200)
            Click, Up
        }
    }

    if (HB1R:=SafeFindText(X, Y, HB1)) ; Check if "HotBomb1" is one of the options in the Vote Screen
    {
        RSleep(200)
        GTA_Click(X, Y)
        RSleep(200)
        MouseGetPos, XPosi, YPosi
        YPosi -= 35
        Click, %XPosi% %YPosi% 0
        While (VSR := FindTextLang(X, Y, VS, VS_DE))
        {
            RSleep(200)
            Click, Down
            RSleep(200)
            Click, Up
        }
    }

    if (HB2R:=SafeFindText(X, Y, HB2)) ; Check if "HotBomb2" is one of the options in the Vote Screen
    {
        RSleep(200)
        GTA_Click(X, Y)
        RSleep(200)
        MouseGetPos, XPosi, YPosi
        YPosi -= 35
        Click, %XPosi% %YPosi% 0
        While (VSR := FindTextLang(X, Y, VS, VS_DE))
        {
            RSleep(200)
            Click, Down
            RSleep(200)
            Click, Up
        }
    }

    if (HB3R:=SafeFindText(X, Y, HB3)) ; Check if "HotBomb3" is one of the options in the Vote Screen
    {
        RSleep(200)
        GTA_Click(X, Y)
        RSleep(200)
        MouseGetPos, XPosi, YPosi
        YPosi -= 35
        Click, %XPosi% %YPosi% 0
        While (VSR := FindTextLang(X, Y, VS, VS_DE))
        {
            RSleep(200)
            Click, Down
            RSleep(200)
            Click, Up
        }
    }

    if (C1R:=SafeFindText(X, Y, C1)) ; Check if "Carnage1" is one of the options in the Vote Screen
    {
        RSleep(200)
        GTA_Click(X, Y) ; Move the mouse to where the job is at
        RSleep(200)
        MouseGetPos, XPosi, YPosi ; Get the current X and Y position of the mouse
        YPosi -= 35 ; Removes 35 from the Y Position
        Click, %XPosi% %YPosi% 0 ; Move the mouse to the new position because if the mouse stays in the original position, it will block the script from detecting the jobs as it is in front of it
        While (VSR := FindTextLang(X, Y, VS, VS_DE)) ; Keep clicking the job until the Vote Screen disappears
        {
            RSleep(200)
            Click, Down
            RSleep(200)
            Click, Up
        }
    }
    BlockInput, Off
}
Return

HideTrayTip() 
{
    TrayTip  ; Try to remove the TrayTip notification
    if SubStr(A_OSVersion,1,3) = "10." 
    {
        Menu Tray, NoIcon ; Remove AHK's tray icon then re-add it to force the TrayTip to disappear
        Menu Tray, Icon
    }
}
RSleep(target)
{
    ; Varianz: Entweder 10% des Zielwerts oder mindestens 10ms
    varianz := (target * 0.1 > 10) ? (target * 0.1) : 10
    Random, sleepTime, % target - varianz, % target + varianz
    Sleep, % Max(10, sleepTime)
}
ResetAllKeys()
{
    ; Wir erzwingen SendEvent für diese Funktion, 
    ; damit die Tasten nicht zu schnell gefeuert werden.
    SetKeyDelay, 10, 10 
    
    Loop, 255
    {
        k := Format("vk{:x}", A_Index)
        
        ; WICHTIG: Kein "P"! Wir prüfen den logischen Status.
        if GetKeyState(k) 
        {
            ; Wir nutzen SendEvent statt Send, um das Delay zu erzwingen
            SendEvent {%k% up}
        }
    }
    
    ; Modifikatoren sicherheitshalber nochmal explizit (v1 Eigenheit)
    SendEvent {Shift up}{Ctrl up}{Alt up}{LWin up}{RWin up}
}

WatchdogCheck:
if (A_TickCount - Watchdog > WatchdogTimeout)
{
    SetTimer, WatchdogCheck, Off
    ResetAllKeys()
    BlockInput, Off
    restartWatchdog := A_TickCount
    SetTimer, restartCheck, 5000
    restartGTA(Mode)
    SetTimer, restartCheck, Off
    IniWrite, 1, %IniFile%, %A_ComputerName%, Resume
    Reload
}
Return

restartCheck:
if (A_TickCount - restartWatchdog > 900000)
{
    SetTimer, restartCheck, Off
    ResetAllKeys()
    BlockInput, Off

    IniWrite, 1, %IniFile%, %A_ComputerName%, Resume

    TrayTip, Timeout Error!, restartGTA hat sich aufgehangen. Skript wird neu geladen...
    Sleep, 1500

    Reload
}
Return

restartGTA(isWinner)
{
    ;   Timings Table
    ;       RSleep(60)      -->     Button down presses
    ;       RSleep(300)     -->     After Button up presses (General)
    ;       RSleep(500)     -->     After pressing enter during the traversal in the tab itself
    ;       RSleep(700)     -->     moving to tiles in GTA Main Menu
    ;       RSleep(800)     -->     If moving to Online Tabs and then the next button is enter (GTAOnline menu needs some time to register enter after tab switching)
    ;       RSleep(1000)    -->     After Escape Button to open the GTAOnline Menu or the Story Mode Menu
    ;       RSleep(3000)    -->     After entering loading screen

    ; 1. BlockInput einschalten, damit keine manuellen Klicks den Prozess stören
    BlockInput, On
    ; 2. GTA Schließen (Der sanfte Weg zuerst, dann der harte)
    Sleep, 500

    WinClose, ahk_class Rockstar Games Launcher
    Process, Close, LauncherLauncher.exe
    Process, Close, Launcher.exe
    Process, Close, PlayGTAV.exe
    Process, Close, RockstarService.exe
    Process, Close, RockstarErrorHandler.exe
    Process, Close, SocialClubHelper.exe
    Process, Close, GTA5_Enhanced.exe

    ; 3. Sicherheitspause (damit der RAM geleert wird und Social Club sich fängt)
    Sleep, 15000

    ApplyRequiredGTASettings()

    ; 4. GTA neu starten
    if (LauncherMode = 1)
    {
        Run, %EpicGTA_EXE%
    }
    else
    {
        Run, steam://rungameid/3240220
    }

    StartTime := A_TickCount
    MaxWaitingTime := 300000

    ; 5. Warten, bis Main Menu erreicht ist
    WinWait, ahk_exe GTA5_Enhanced.exe, , 120
    if ErrorLevel
    {
        return 0
    }
    WinActivate, ahk_exe GTA5_Enhanced.exe
    ParkMouse()
    Loop
    {
        (GTA_MAINMENU_R:=SafeFindText(X, Y, GTA_MAINMENU))
        (SKIP_Button_R:=FindTextLang(X, Y, SKIP_Button, SKIP_BUTTON_DE))

        if (A_TickCount - StartTime > MaxWaitingTime)
        {
            return 0
        }
        Sleep, 100
    } Until (GTA_MAINMENU_R != 0) or (SKIP_Button_R != 0)

    Sleep, 500
    if (SKIP_Button_R != 0)
    {
        Send {vk0Dsc1C Down}
        RSleep(60)
        Send {vk0Dsc1C Up}
        RSleep(1000)

        Loop
        {
            GTA_MAINMENU_R := SafeFindText(X, Y, GTA_MAINMENU)
            if (GTA_MAINMENU_R)
                break
            Sleep, 100
        }
    }

    if (!isWinner)   ; Helper oeffnet social club und wartet auf invite
    {
        RSleep(1000)
        Send {vk24sc147 Down}
        RSleep(60)
        Send {vk24sc147 Up}
        RSleep(1000)
        ParkMouse()
        Loop
        {
            (SC_SOCIAL_R:=FindTextLang(X, Y, SC_SOCIAL, SC_SOCIAL_DE))
            (SC_SOCIAL_Orange_R:=FindTextLang(X, Y, SC_SOCIAL_Orange, SC_SOCIAL_Orange_DE))
            Sleep, 100
        } Until (SC_SOCIAL_R != 0) or (SC_SOCIAL_Orange_R != 0)

        Sleep, 200
        GTA_Click(X, Y)
        Sleep, 500

        Loop
        {
            SC_INVITES_R := FindTextLang(X, Y, SC_INVITES, SC_INVITES_DE)
            if (SC_INVITES_R)
                break
            Sleep, 100
        }
        Sleep, 200
        GTA_Click(X, Y)
        Sleep, 500

        Loop
        {
            SC_ACCEPT_R := FindTextLang(X, Y, SC_ACCEPT, SC_ACCEPT_DE)
            if (SC_ACCEPT_R)
                break
            Sleep, 100
        }
        Sleep, 200
        GTA_Click(X, Y)
        Sleep, 500
    }

    if (isWinner)    ; Winner laedt ab dem punkt dann den helper ein der aber im hauptmenue wartet
    {
        if (WinnerVariant == 2)
        {
            RSleep(1000)
            Send {vk24sc147 Down}
            RSleep(60)
            Send {vk24sc147 Up}
            RSleep(1000)
            ParkMouse()
            Loop
            {
                (SC_SOCIAL_R:=FindTextLang(X, Y, SC_SOCIAL, SC_SOCIAL_DE))
                (SC_SOCIAL_Orange_R:=FindTextLang(X, Y, SC_SOCIAL_Orange, SC_SOCIAL_Orange_DE))
                Sleep, 100
            } Until (SC_SOCIAL_R != 0) or (SC_SOCIAL_Orange_R != 0)

            Sleep, 200
            GTA_Click(X, Y)
            Sleep, 500

            Loop
            {
                SC_INVITES_R := FindTextLang(X, Y, SC_INVITES, SC_INVITES_DE)
                if (SC_INVITES_R)
                    break
                Sleep, 100
            }
            Sleep, 200
            GTA_Click(X, Y)
            Sleep, 500

            Loop
            {
                SC_ACCEPT_R := FindTextLang(X, Y, SC_ACCEPT, SC_ACCEPT_DE)
                if (SC_ACCEPT_R)
                    break
                Sleep, 100
            }
            Sleep, 200
            GTA_Click(X, Y)
            Sleep, 500
        }
        else
        {
            ParkMouse()
            Loop
            {
                Send {vk45sc12 Down}
                RSleep(60)
                Send {vk45sc12 Up}
                RSleep(700)
                (MAINMENU_Story_R:=SafeFindText(X, Y, MAINMENU_Story))
            } Until (MAINMENU_Story_R != 0)

            Sleep, 500
            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(1000)
            ParkMouse()
            Loop
            {
                GTA_StoryModeLoadingScreen_R := SafeFindText(X, Y, GTA_StoryModeLoadingScreen)
                if (GTA_StoryModeLoadingScreen_R)
                    break
                Sleep, 100
            }

            While (GTA_StoryModeLoadingScreen_R:=SafeFindText(X, Y, GTA_StoryModeLoadingScreen))
            {
                Sleep, 1000
            }
            Sleep, 15000

            Send {vk1Bsc01 Down}
            RSleep(60)
            Send {vk1Bsc01 Up}
            RSleep(1000)

            Loop, 5
            {
                Send {vk27sc14D Down}
                RSleep(60)
                Send {vk27sc14D Up}
                RSleep(300)
            }
            RSleep(800)
            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(800)

            Send {vk26sc148 Down}
            RSleep(60)
            Send {vk26sc148 Up}
            RSleep(300)

            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(500)

            Send {vk28sc150 Down}
            RSleep(60)
            Send {vk28sc150 Up}
            RSleep(300)

            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(500)

            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(3000)
            ParkMouse()
            StartTime := A_TickCount
            Loop
            {
                GTAOnlineReached_R := SafeFindText(X, Y, GTAOnlineReached)
                continueOnline_R   := SafeFindText(cx, cy, continueOnline)

                if (continueOnline_R)
                {
                    Send {vk0Dsc1C Down}
                    RSleep(60)
                    Send {vk0Dsc1C Up}
                    RSleep(1000)
                }

                if (GTAOnlineReached_R)
                    Break

                Sleep, 100
                Send {vk44sc020 Down}
                RSleep(70)
                Send {vk44sc020 Up}
                RSleep(500)

                if (A_TickCount - StartTime > MaxWaitingTime)
                {
                    return 0
                }
            }

            RSleep(500)
            Send {vk1Bsc01 Down}
            RSleep(60)
            Send {vk1Bsc01 Up}
            RSleep(1000)

            Send {vk27sc14D Down}
            RSleep(60)
            Send {vk27sc14D Up}
            RSleep(1000)

            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(500)

            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(500)

            Send {vk28sc150 Down}
            RSleep(60)
            Send {vk28sc150 Up}
            RSleep(300)

            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(500)

            Loop, 3
            {
                Send {vk28sc150 Down}
                RSleep(60)
                Send {vk28sc150 Up}
                RSleep(300)
            }

            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(500)

            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(500)

            Loop, 7
            {
                Send {vk28sc150 Down}
                RSleep(60)
                Send {vk28sc150 Up}
                RSleep(300)
            }

            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(500)

            Send {vk0Dsc1C Down}
            RSleep(60)
            Send {vk0Dsc1C Up}
            RSleep(3000)

            ; ==========================================
            ; HELPER 2 EINLADEN (Nur im 3-Spieler Modus)
            ; ==========================================
            if (PlayerMode == 1)
            {
                ParkMouse()
                Loop
                {
                    Host_R := FindTextLang(X, Y, Host, Host_DE)
                    if (Host_R)
                        break
                    Sleep, 100
                }

                Send {vk24sc147 Down}
                RSleep(100)
                Send {vk24sc147 Up}
                RSleep(1000)

                Sleep, 500
                Loop
                {
                    (SC_SOCIAL_R:=FindTextLang(X, Y, SC_SOCIAL, SC_SOCIAL_DE))
                    (SC_SOCIAL_Orange_R:=FindTextLang(X, Y, SC_SOCIAL_Orange, SC_SOCIAL_Orange_DE))
                    Sleep, 100
                } Until (SC_SOCIAL_R != 0) or (SC_SOCIAL_Orange_R != 0)

                Sleep, 200
                GTA_Click(X, Y)
                RSleep(1000)

                Loop
                {
                    SC_FIND_PLAYER_R := FindTextLang(X, Y, SC_FIND_PLAYER, SC_FIND_PLAYER_DE)
                    if (SC_FIND_PLAYER_R)
                        break
                    Sleep, 100
                }
                Sleep, 200
                GTA_Click(X, Y)

                Sleep, 600
                TypeHuman(NameOfHelper2)
                Sleep, 150
                Send {vk0Dsc1C Down}
                RSleep(100)
                Send {vk0Dsc1C Up}
                RSleep(1000)

                Loop
                {
                    HELPER2_NAME_SC_R := SafeFindText(X, Y, HELPER2_NAME_SC)
                    if (HELPER2_NAME_SC_R)
                        break
                    Sleep, 100
                }
                RSleep(200)
                GTA_Click(X, Y)
                RSleep(200)

                Loop
                {
                    PLAYER_ACTIONS_R := FindTextLang(X, Y, PLAYER_ACTIONS, PLAYER_ACTIONS_DE)
                    if (PLAYER_ACTIONS_R)
                        break
                    Sleep, 100
                }
                RSleep(200)
                GTA_Click(X, Y)
                RSleep(200)

                Loop
                {
                    INVITE_TO_GAME_R := FindTextLang(X, Y, INVITE_TO_GAME, INVITE_TO_GAME_DE)
                    if (INVITE_TO_GAME_R)
                        break
                    Sleep, 100
                }
                RSleep(200)
                GTA_Click(X, Y)
                RSleep(200)

                RSleep(500)
                Send {vk1Bsc01 Down}
                RSleep(100)
                Send {vk1Bsc01 Up}
                RSleep(2500)
                Sleep, 500
            }

            ; ==========================================
            ; HELPER 1 EINLADEN
            ; ==========================================
            if (PlayerMode == 1)
            {
                ParkMouse()
                Loop
                {
                    Joined1_R := FindTextLang(X, Y, Joined1, Joined1_DE)
                    if (Joined1_R)
                        break
                    Sleep, 100
                }
                RSleep(500)
            }

            Loop
            {
                Host_R := FindTextLang(X, Y, Host, Host_DE)
                if (Host_R)
                    break
                Sleep, 100
            }

            Send {vk24sc147 Down}
            RSleep(100)
            Send {vk24sc147 Up}
            RSleep(1000)

            Sleep, 500
            Loop
            {
                (SC_SOCIAL_R:=FindTextLang(X, Y, SC_SOCIAL, SC_SOCIAL_DE))
                (SC_SOCIAL_Orange_R:=FindTextLang(X, Y, SC_SOCIAL_Orange, SC_SOCIAL_Orange_DE))
                Sleep, 100
            } Until (SC_SOCIAL_R != 0) or (SC_SOCIAL_Orange_R != 0)

            Sleep, 200
            GTA_Click(X, Y)
            RSleep(1000)

            Loop
            {
                SC_FIND_PLAYER_R := FindTextLang(X, Y, SC_FIND_PLAYER, SC_FIND_PLAYER_DE)
                if (SC_FIND_PLAYER_R)
                    break
                Sleep, 100
            }
            Sleep, 200
            GTA_Click(X, Y)

            Sleep, 600
            TypeHuman(NameOfHelper)
            Sleep, 150
            Send {vk0Dsc1C Down}
            RSleep(100)
            Send {vk0Dsc1C Up}
            RSleep(1000)

            Loop
            {
                HELPER_NAME_SC_R := SafeFindText(X, Y, HELPER_NAME_SC)
                if (HELPER_NAME_SC_R)
                    break
                Sleep, 100
            }
            RSleep(200)
            GTA_Click(X, Y)
            RSleep(200)

            Loop
            {
                PLAYER_ACTIONS_R := FindTextLang(X, Y, PLAYER_ACTIONS, PLAYER_ACTIONS_DE)
                if (PLAYER_ACTIONS_R)
                    break
                Sleep, 100
            }
            RSleep(200)
            GTA_Click(X, Y)
            RSleep(200)

            Loop
            {
                INVITE_TO_GAME_R := FindTextLang(X, Y, INVITE_TO_GAME, INVITE_TO_GAME_DE)
                if (INVITE_TO_GAME_R)
                    break
                Sleep, 100
            }
            RSleep(200)
            GTA_Click(X, Y)
            RSleep(200)

            RSleep(500)
            Send {vk1Bsc01 Down}
            RSleep(100)
            Send {vk1Bsc01 Up}
            RSleep(2500)
        }
    }

    BlockInput, Off
    return 1
}

TypeHuman(text)
{
    ; Geht das Wort Buchstabe für Buchstabe durch
    Loop, Parse, text 
    {
        ; Sendet den aktuellen Buchstaben (A_LoopField)
        SendEvent, %A_LoopField%
        
        ; Zufällige Pause zwischen den Anschlägen (wie ein Mensch)
        Random, delay, 50, 110
        Sleep, %delay%
    }
}

GTA_Click(x, y)
{
    ; Bewegt die Maus mit Speed 3-6 (menschlicher) zum Ziel
    Random, mSpeed, 3, 6
    MouseMove, %x%, %y%, %mSpeed%
    
    RSleep(250) ; Kurze Pause vor dem Klick
    
    SendEvent {LButton Down}
    Random, hold, 80, 130 ; Wie lange die Taste gedrückt bleibt
    Sleep, %hold%
    SendEvent {LButton Up}
    
    RSleep(300) ; Pause nach dem Klick
}

; =========================================================
; STARTUP GUI
; =========================================================

ShowStartupGui()
{
    global HelperNameInput, HelperStringInput, Helper2NameInput, Helper2StringInput
    global LauncherChoice, RoleChoice, PlayerModeChoice, HostOnlyNote
    global FindTextOpenBtn
    global HelperNameLabel, HelperStringLabel, Helper2NameLabel, Helper2StringLabel
    global HelperNameInfoText, HelperStringInfoText, Helper2InfoText, FindTextHintText

    IniRead, savedHelperName, %IniFile%, %A_ComputerName%, HelperName, yourHelpersRockstarName
    IniRead, savedHelperString, %IniFile%, %A_ComputerName%, HelperString, |<Your Helpers Rockstar FindText String>*122...
    IniRead, savedHelper2Name, %IniFile%, %A_ComputerName%, Helper2Name, yourSecondWinnersRockstarName
    IniRead, savedHelper2String, %IniFile%, %A_ComputerName%, Helper2String, |<Your second Winners Rockstar FindText String>*361...
    IniRead, savedLauncher, %IniFile%, %A_ComputerName%, Launcher, 0
    IniRead, savedMode, %IniFile%, %A_ComputerName%, Mode, 0
    IniRead, savedWinnerVariant, %IniFile%, %A_ComputerName%, WinnerVariant, 1
    IniRead, savedPlayerMode, %IniFile%, %A_ComputerName%, PlayerMode, 0

    savedLauncherGui := savedLauncher + 1
    savedPlayerModeGui := savedPlayerMode + 1

    if (savedMode = 0)
        savedRoleGui := 1
    else if (savedWinnerVariant = 2)
        savedRoleGui := 3
    else
        savedRoleGui := 2

    Gui, Font, s10, Segoe UI
    Gui, Add, Text, x20 y10 w860 Center, Arena War AFK Grind Script - Setup

    Gui, Add, GroupBox, x20 y30 w860 h55, What this script does
    Gui, Add, Text, x35 y50 w830 h30, This script automates Arena War AFK grinding with two or three accounts, including restart logic if GTA gets stuck or kicks you.

    ; --- REQUIREMENTS BLOCK START ---
    Gui, Add, GroupBox, x20 y95 w860 h120, Requirements for the script to work
    Gui, Font, cRed s10, Segoe UI
    
    ; Linke Spalte
    Gui, Add, Text, x35 y115 w400 h35, 1. GTA must run in 1920x1080. Either in fullscreen on Full HD monitors or windowed borderless on higher res.
    Gui, Add, Text, x35 y150 w400 h20, 2. FindText.ahk must be in .\Lib\
    Gui, Add, Text, x35 y170 w400 h20, 3. Make sure Game is set to english, wont work otherwise.
    Gui, Add, Text, x35 y190 w400 h20, 4. Disable Cloud Saving in Rockstar Launcher.

    ; Rechte Spalte
    Gui, Add, Text, x445 y115 w400 h20, 5. Job lobby should be set to closed.
    Gui, Add, Text, x445 y135 w400 h20, 6. All PCs need to use the same target mode.
    Gui, Add, Text, x445 y155 w400 h20, 7. Correct Rockstar names & FindText strings required.
    Gui, Add, Text, x445 y175 w400 h35, 8. Spawn point must be set to Mansion (bed to the right). Swap 'D' to 'A' in script if bed is on the left.
    
    Gui, Font, cBlack s10, Segoe UI
    ; --- REQUIREMENTS BLOCK END ---

    Gui, Add, GroupBox, x20 y225 w860 h240, User Settings

    Gui, Add, Text, x35 y250 w70 h20, Launcher:
    Gui, Add, DropDownList, x105 y247 w120 vLauncherChoice Choose%savedLauncherGui% +AltSubmit, Steam|Epic

    Gui, Add, Text, x245 y250 w40 h20, Role:
    Gui, Add, DropDownList, x285 y247 w120 vRoleChoice gRoleChanged Choose%savedRoleGui% +AltSubmit, Helper|Winner|Winner2

    Gui, Add, Text, x425 y250 w60 h20, Players:
    Gui, Add, DropDownList, x485 y247 w120 vPlayerModeChoice gRoleChanged Choose%savedPlayerModeGui% +AltSubmit, 2 Players|3 Players

    Gui, Add, Button, x635 y246 w120 h25 vFindTextOpenBtn gLaunchFindText, Open FindText
    Gui, Font, s9 cGray, Segoe UI
    Gui, Add, Text, x35 y280 w800 h18 vHostOnlyNote, These invite target fields are only required on the Winner / host PC.
    Gui, Font, s10 cBlack, Segoe UI

    ; Helper block
    Gui, Add, Text, x35 y305 w170 h20 vHelperNameLabel, Helper Rockstar Name:
    Gui, Add, Edit, x210 y302 w250 h23 vHelperNameInput, %savedHelperName%
    Gui, Font, s9 cGray, Segoe UI
    Gui, Add, Text, x470 y305 w350 h18 vHelperNameInfoText, Main invited player. Enter Rockstar name, no quotes.
    Gui, Font, s10 cBlack, Segoe UI

    Gui, Add, Text, x35 y340 w170 h20 vHelperStringLabel, Helper FindText String:
    Gui, Add, Edit, x210 y337 w630 h23 vHelperStringInput, %savedHelperString%

    ; Winner2 block
    Gui, Add, Text, x35 y375 w170 h20 vHelper2NameLabel, Winner2 Rockstar Name:
    Gui, Add, Edit, x210 y372 w250 h23 vHelper2NameInput, %savedHelper2Name%
    Gui, Font, s9 cGray, Segoe UI
    Gui, Add, Text, x470 y375 w350 h18 vHelper2InfoText, Second invited player (3-player mode only).
    Gui, Font, s10 cBlack, Segoe UI

    Gui, Add, Text, x35 y410 w170 h20 vHelper2StringLabel, Winner2 FindText String:
    Gui, Add, Edit, x210 y407 w630 h23 vHelper2StringInput, %savedHelper2String%

    Gui, Font, s9 cGray, Segoe UI
    Gui, Add, Text, x35 y440 w800 h18 vFindTextHintText, Note: Paste the full FindText code for the names shown in Social Club.
    Gui, Font, s10 cBlack, Segoe UI

    Gui, Add, GroupBox, x20 y475 w860 h105, How to get a FindText String
    Gui, Add, Text, x35 y495 w400 h80,
    (
    1. Start GTA in Borderless Windowed (1920x1080).
    2. Open Social Club (HOME), search the name.
    3. Click Open FindText.
    4. Capture only the visible Rockstar name on screen.
    )
    Gui, Add, Text, x445 y495 w400 h80,
    (
    5. Shrink capture until only important text remains.
    6. Use Gray or GrayDiff if needed.
    7. Press OK and copy full generated FindText string.
    8. Paste into matching field above without outer quotes.
    )

    Gui, Add, Button, x35 y595 w140 h30 gSaveOnlyFromGui, Save Settings
    Gui, Add, Button, x195 y595 w140 h30 gCancelStartupGui, Cancel
    Gui, Add, Button, x680 y595 w180 h30 gStartScriptFromGui, Save and Start Script

    ; Allow resizing just in case, but initial size is now built to fit laptop screens natively.
    Gui, +Resize +MinSize600x400
    Gui, Show, w900 h640, Arena War AFK Script Setup
    Gosub, UpdateRoleHint
}

;region GUI Labels


RoleChanged:
Gosub, UpdateRoleHint
Return

UpdateRoleHint:
Gui, Submit, NoHide

if (RoleChoice = 2) ; Winner
{
    GuiControl,, HostOnlyNote, These invite target fields are only required on the Winner / host PC.

    ; Helper 1 anzeigen
    GuiControl, Show, HelperNameLabel
    GuiControl, Show, HelperNameInput
    GuiControl, Show, HelperNameInfoText
    GuiControl, Show, HelperStringLabel
    GuiControl, Show, HelperStringInput
    GuiControl, Show, HelperStringInfoText
    GuiControl, Show, FindTextOpenBtn
    GuiControl, Show, FindTextHintText

    GuiControl, Enable, HelperNameInput
    GuiControl, Enable, HelperStringInput
    GuiControl, Enable, FindTextOpenBtn

    if (PlayerModeChoice = 1) ; 2 Players
    {
        GuiControl,, HostOnlyNote, Winner mode with 2 players: only the Helper invite data is required.

        GuiControl, Hide, Helper2NameLabel
        GuiControl, Hide, Helper2NameInput
        GuiControl, Hide, Helper2InfoText
        GuiControl, Hide, Helper2StringLabel
        GuiControl, Hide, Helper2StringInput
    }
    else ; 3 Players
    {
        GuiControl,, HostOnlyNote, Winner mode with 3 players: Helper and Winner2 invite data are required.

        GuiControl, Show, Helper2NameLabel
        GuiControl, Show, Helper2NameInput
        GuiControl, Show, Helper2InfoText
        GuiControl, Show, Helper2StringLabel
        GuiControl, Show, Helper2StringInput

        GuiControl, Enable, Helper2NameInput
        GuiControl, Enable, Helper2StringInput
    }
}
else if (RoleChoice = 1) ; Helper
{
    GuiControl,, HostOnlyNote, Helper mode: no invite target data is needed here.

    GuiControl, Hide, HelperNameLabel
    GuiControl, Hide, HelperNameInput
    GuiControl, Hide, HelperNameInfoText
    GuiControl, Hide, HelperStringLabel
    GuiControl, Hide, HelperStringInput
    GuiControl, Hide, HelperStringInfoText

    GuiControl, Hide, Helper2NameLabel
    GuiControl, Hide, Helper2NameInput
    GuiControl, Hide, Helper2InfoText
    GuiControl, Hide, Helper2StringLabel
    GuiControl, Hide, Helper2StringInput

    GuiControl, Hide, FindTextOpenBtn
    GuiControl, Hide, FindTextHintText
}
else if (RoleChoice = 3) ; Winner2
{
    GuiControl,, HostOnlyNote, Winner2 mode: no invite target data is needed here.

    GuiControl, Hide, HelperNameLabel
    GuiControl, Hide, HelperNameInput
    GuiControl, Hide, HelperNameInfoText
    GuiControl, Hide, HelperStringLabel
    GuiControl, Hide, HelperStringInput
    GuiControl, Hide, HelperStringInfoText

    GuiControl, Hide, Helper2NameLabel
    GuiControl, Hide, Helper2NameInput
    GuiControl, Hide, Helper2InfoText
    GuiControl, Hide, Helper2StringLabel
    GuiControl, Hide, Helper2StringInput

    GuiControl, Hide, FindTextOpenBtn
    GuiControl, Hide, FindTextHintText
}
Return

StartScriptFromGui:
Gui, Submit, NoHide

LauncherMode := LauncherChoice - 1
PlayerMode := PlayerModeChoice - 1   ; 0 = 2 Players, 1 = 3 Players
if (PlayerMode == 0)   ; 2 Players
    WatchdogTimeout := 180000
else                  ; 3 Players
    WatchdogTimeout := 360000

if (RoleChoice = 1) ; Helper
{
    Mode := 0
    WinnerVariant := 0
}
else if (RoleChoice = 2) ; Winner
{
    Mode := 1
    WinnerVariant := 1
}
else if (RoleChoice = 3) ; Winner2
{
    Mode := 1
    WinnerVariant := 2
}

if (RoleChoice = 2)
{
    if (HelperNameInput = "")
    {
        MsgBox, 48, Missing Helper Name, Please enter the Helper Rockstar name.
        Return
    }

    if (HelperStringInput = "")
    {
        MsgBox, 48, Missing Helper FindText String, Please enter the Helper FindText string.
        Return
    }

    if (PlayerMode == 1)
    {
        if (Helper2NameInput = "")
        {
            MsgBox, 48, Missing Winner2 Name, Please enter the Winner2 Rockstar name for 3-player mode.
            Return
        }

        if (Helper2StringInput = "")
        {
            MsgBox, 48, Missing Winner2 FindText String, Please enter the Winner2 FindText string for 3-player mode.
            Return
        }
    }
}

NameOfHelper := HelperNameInput
HELPER_NAME_SC := HelperStringInput
NameOfHelper2 := Helper2NameInput
HELPER2_NAME_SC := Helper2StringInput
LauncherMode := LauncherChoice - 1
PlayerMode := PlayerModeChoice - 1

IniWrite, %NameOfHelper%, %IniFile%, %A_ComputerName%, HelperName
IniWrite, %HELPER_NAME_SC%, %IniFile%, %A_ComputerName%, HelperString
IniWrite, %NameOfHelper2%, %IniFile%, %A_ComputerName%, Helper2Name
IniWrite, %HELPER2_NAME_SC%, %IniFile%, %A_ComputerName%, Helper2String
IniWrite, %LauncherMode%, %IniFile%, %A_ComputerName%, Launcher
IniWrite, %Mode%, %IniFile%, %A_ComputerName%, Mode
IniWrite, %WinnerVariant%, %IniFile%, %A_ComputerName%, WinnerVariant
IniWrite, %PlayerMode%, %IniFile%, %A_ComputerName%, PlayerMode

Gui, Destroy

ApplyRequiredGTASettings()

Toggle := 1
Watchdog := A_TickCount
SetTimer, WatchdogCheck, 5000
; F7-Logik direkt auslösen
Watchdog := A_TickCount - 500000
SetTimer, WatchdogCheck, 500
Return

SaveOnlyFromGui:
Gui, Submit, NoHide

tempLauncherMode := LauncherChoice - 1
tempPlayerMode := PlayerModeChoice - 1

if (RoleChoice = 1)
{
    tempMode := 0
    tempWinnerVariant := 0
}
else if (RoleChoice = 2)
{
    tempMode := 1
    tempWinnerVariant := 1
}
else if (RoleChoice = 3)
{
    tempMode := 1
    tempWinnerVariant := 2
}

IniWrite, %HelperNameInput%, %IniFile%, %A_ComputerName%, HelperName
IniWrite, %HelperStringInput%, %IniFile%, %A_ComputerName%, HelperString
IniWrite, %Helper2NameInput%, %IniFile%, %A_ComputerName%, Helper2Name
IniWrite, %Helper2StringInput%, %IniFile%, %A_ComputerName%, Helper2String
IniWrite, %tempLauncherMode%, %IniFile%, %A_ComputerName%, Launcher
IniWrite, %tempMode%, %IniFile%, %A_ComputerName%, Mode
IniWrite, %tempWinnerVariant%, %IniFile%, %A_ComputerName%, WinnerVariant
IniWrite, %tempPlayerMode%, %IniFile%, %A_ComputerName%, PlayerMode

MsgBox, 64, Saved, Settings saved successfully.
Return

LaunchFindText:
if FileExist(A_ScriptDir "\Lib\FindText.ahk")
{
    Run, %A_ScriptDir%\Lib\FindText.ahk
}
else
{
    MsgBox, 48, FindText not found, Could not find:`n%A_ScriptDir%\Lib\FindText.ahk
}
Return

CancelStartupGui:
GuiClose:
ExitApp
Return
;endregion

; =========================================================
; NOTFALL / PANIC HOTKEY (F2)
; =========================================================
EnsureSettingsBackup()
{
    global SettingsPath, SettingsBackupPath
    if !FileExist(SettingsBackupPath)
    {
        FileCopy, %SettingsPath%, %SettingsBackupPath%, 1
    }
}

SetXmlValue(tagName, newValue)
{
    global SettingsPath

    FileRead, xml, %SettingsPath%
    if ErrorLevel
        return 0

    pattern := "<" tagName " value=""[^""]*"" />"
    replacement := "<" tagName " value=""" newValue """ />"

    xml := RegExReplace(xml, pattern, replacement)

    FileDelete, %SettingsPath%
    FileAppend, %xml%, %SettingsPath%
    return 1
}

ApplyRequiredGTASettings()
{
    EnsureSettingsBackup()

    SetXmlValue("ScreenWidth", "1920")
    SetXmlValue("ScreenHeight", "1080")
    SetXmlValue("Windowed", "2")
    SetXmlValue("FrameLimit", "30")
}

RestoreOriginalGTASettings()
{
    global SettingsPath, SettingsBackupPath

    if FileExist(SettingsBackupPath)
    {
        FileCopy, %SettingsBackupPath%, %SettingsPath%, 1
        return 1
    }
    return 0
}

FindTextLang(ByRef outX, ByRef outY, textEN, textDE := "")
{

    if (textEN != "" && (r := FindText(outX, outY, 0, 0, 4000, 4000, 0, 0, textEN)))
        return r

    if (textDE != "" && (r := FindText(outX, outY, 0, 0, 4000, 4000, 0, 0, textDE)))
        return r

    return 0
}

SafeFindText(ByRef outX, ByRef outY, text)
{
    return FindText(outX, outY, 0, 0, 4000, 4000, 0, 0, text)
}

ParkMouse()
{
    CoordMode, Mouse, Screen
    Random, mSpeed, 3, 6
    targetX := 15
    targetY := A_ScreenHeight // 2
    MouseMove, %targetX%, %targetY%, %mSpeed%
    RSleep(120)
}

; =========================================================
; NOTFALL / PANIC HOTKEY (F2)
; =========================================================
$F2::
    ; 1. BlockInput zur Sicherheit deaktivieren, falls das Skript gerade blockiert hat
    BlockInput, Off
    
    ; 2. Tasten zurücksetzen, damit keine Tasten virtuell "stecken" bleiben
    ResetAllKeys()

    ; 3. GTA und Epic Launcher hart beenden
    Process, Close, GTA5_Enhanced.exe
    Process, Close, PlayGTAV.exe

    ; 4. Rockstar Launcher und alle zugehörigen Services beenden
    WinClose, ahk_class Rockstar Games Launcher
    Process, Close, LauncherLauncher.exe
    Process, Close, Launcher.exe
    Process, Close, RockstarService.exe
    Process, Close, RockstarErrorHandler.exe
    Process, Close, SocialClubHelper.exe

    RSleep(2000)
    RestoreOriginalGTASettings()
    ; 5. Tray-Benachrichtigung anzeigen (optional, aber hilfreich)
    TrayTip, Skript beendet, F2 wurde gepressed. GTA und das Skript wurden geschlossen., 3000
    Sleep, 1500 ; Kurz warten, damit man den Tooltip noch sieht

    ; 6. Das AHK-Skript selbst beenden
    ExitApp
Return
