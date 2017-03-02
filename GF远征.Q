[General]
SyntaxVersion=2
BeginHotkey=111
BeginHotkeyMod=8
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=109
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=236a9fcd-0076-44b8-8afb-e1c8e98e65f2
Description=…Ÿ«∞‘∂’˜
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=10
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Randomize
Hwnd = Plugin.Window.Find("Qt5QWindowIcon", "“π…Ò∞≤◊øƒ£ƒ‚∆˜")//’“Õº’“…´∂®Œªæ‰±˙£®2,36£©
HwndE = Plugin.Window.FindEx(Hwnd, 0, "Qt5QWindowIcon", "ScreenBoardClassWindow")
Hwnd_click = Plugin.Window.FindEx(HwndE, 0, "Qt5QWindowIcon", "QWidgetClassWindow")//ƒ£ƒ‚µ„ª˜æ‰±˙
Delay 30
PAGE_WIDTH = 804
PAGE_HEIGHT = 638
FIND_PIC_COLORDIFF = 90
FIND_PIC_SIMILARITY = 0.9
click_offset_X = int(- 2  + Rnd * 20)
click_offset_Y = int(- 36  + Rnd * 20)
chooose_team1
Sub chooose_team1
    
    //‘§‘ÿ»Î—°‘ÒÕº
    Loadpic = Plugin.BGCP2_02.LoadBMP("c:\pic\Team1_y.bmp")
    Delay_40ms
    //’“Õº
    reset_find_pic
    Call Plugin.BGCP2_02.FindPicture(Hwnd, 0, 0, PAGE_WIDTH, PAGE_HEIGHT, Loadpic(0), FIND_PIC_DIFF, FIND_PIC_SIMILARITY, find_n_click_X, find_n_click_Y)
    Delay_40ms
    If find_n_click_X = -1 Then
        //‘§‘ÿ»ÎŒ¥—°Õº
        Loadpic = Plugin.BGCP2_02.LoadBMP("c:\pic\Team1_w.bmp")
        Delay_40ms
        find_n_click
    End If
End Sub
Sub find_n_click//’“Õºnµ„ª˜
    //’“Õº
    reset_find_pic
    Call Plugin.BGCP2_02.FindPicture(Hwnd, 0, 0, PAGE_WIDTH, PAGE_HEIGHT, Loadpic(0), FIND_PIC_DIFF, FIND_PIC_SIMILARITY, find_n_click_X, find_n_click_Y)
    Delay_40ms
    //µ„ª˜ 
    If find_n_click_X > - 1  Then 
        Call Plugin.Bkgnd.LeftDown(Hwnd_click, find_n_click_X + click_offset_X, find_n_click_Y + click_offset_Y)
        Delay_40ms
        Call Plugin.Bkgnd.MoveTo(Hwnd_click, find_n_click_X + click_offset_X, find_n_click_Y + click_offset_Y)
        Delay_40ms
        Call Plugin.Bkgnd.LeftUp(Hwnd_click, find_n_click_X + click_offset_X, find_n_click_Y + click_offset_Y)
        Delay_40ms
    End If
End Sub
Sub Delay_40ms
    Delay int(40+Rnd*10)
End Sub
Sub reset_find_pic //≥ı ºªØ’“Õº…Ë∂®
    find_n_click_X = -1 
    find_n_click_Y = -1
End Sub