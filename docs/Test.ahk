#Persistent
SetTitleMatchMode, 2

; Định nghĩa đường dẫn và tên file Excel đầu tiên
varExcelFileLocation := """D:\Power BI\Dự án Thuốc lá Thăng Long\Test\F_BS.xlsx"""
varExcelFileName := "F_BS.xlsx"

; Mở Excel file đầu tiên
Run, excel.exe %varExcelFileLocation%
WinWait, %varExcelFileName%
WinActivate ; Đảm bảo cửa sổ Excel đầu tiên được kích hoạt

; Chọn toàn bộ cột C
Send, {Ctrl Down}g{Ctrl Up}C2:C1048576{Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Send,{Enter}
Sleep, 1000
Send,{Right}
Sleep, 1000
Send,{Right}
Sleep, 1000
Send,{space down}
Sleep, 80 
Send,{space up}
Sleep, 80
Send,{Enter}
Sleep, 1000
Send,{Enter}
Sleep, 1000

; Tìm và Thay thế
Send, ^h
Sleep, 1000
Send, =-
Sleep, 1000
Send, {Tab}
Sleep, 1000
Send, '- ; Nhập ký tự thay thế
Sleep, 1000

; Chọn tất cả và thay thế toàn bộ
Send, {Alt Down}a{Alt Up}
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Đóng hộp thoại Find & Replace
Send, !{F4}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

; Lưu và đóng Excel file đầu tiên
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000

; Mở file Excel 2
varExcelFileLocation2 := """D:\Power BI\Dự án Thuốc lá Thăng Long\Test\F_IS.xlsx"""  ; Đường dẫn file thứ hai
varExcelFileName2 := "F_IS.xlsx"  ; Tên file thứ hai

Run, excel.exe %varExcelFileLocation2%
WinWait, %varExcelFileName2%
WinActivate ; Đảm bảo cửa sổ Excel thứ hai được kích hoạt

; Thực hiện các thao tác với file Excel thứ hai (giống như thao tác với file Excel đầu tiên)
Send, {Ctrl Down}g{Ctrl Up}C2:C1048576{Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Send,{Enter}
Sleep, 1000
Send,{Right}
Sleep, 1000
Send,{Right}
Sleep, 1000
Send,{space down}
Sleep, 80 
Send,{space up}
Sleep, 80
Send,{Enter}
Sleep, 1000
Send,{Enter}
Sleep, 1000

; Tìm và Thay thế
Send, ^h
Sleep, 1000
Send, =-
Sleep, 1000
Send, {Tab}
Sleep, 1000
Send, '- ; Nhập ký tự thay thế
Sleep, 1000

; Chọn tất cả và thay thế toàn bộ
Send, {Alt Down}a{Alt Up}
Sleep, 1000

; Xử lý cửa sổ thông báo
IfWinExist, ahk_class #32770
{
    Send, {Enter}
    Sleep, 1000 ;
}

; Đóng hộp thoại Find & Replace
Send, !{F4}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

; Lưu và đóng Excel file thứ hai
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000

; Mở file Excel 3
varExcelFileLocation2 := """D:\Power BI\Dự án Thuốc lá Thăng Long\Test\FOXAI_Baocao_BangKMCP_627.xlsx"""
varExcelFileName2 := "FOXAI_Baocao_BangKMCP_627.xlsx"

Run, excel.exe %varExcelFileLocation2%
WinWait, %varExcelFileName2%
WinActivate

; Chọn cột C
Send, {Ctrl Down}g{Ctrl Up}C2:C1048576{Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Send,{Enter}
Sleep, 1000
Send,{Right}
Sleep, 1000
Send,{Right}
Sleep, 1000
Send,{space down}
Sleep, 80 
Send,{space up}
Sleep, 80
Send,{Enter}
Sleep, 1000
Send,{Enter}
Sleep, 1000

; Tìm và Thay thế
Send, ^h
Sleep, 1000
Send, =-
Sleep, 1000
Send, {Tab}
Sleep, 1000
Send, '- ; Nhập ký tự thay thế
Sleep, 1000

; Chọn tất cả và thay thế toàn bộ
Send, {Alt Down}a{Alt Up}
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Đóng hộp thoại Find & Replace
Send, !{F4}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để chuyển mã)
Send, ^+{F9}
Sleep, 1000

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;wait for a paste operation to complete
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 50
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 50
SoundBeep ; Or MsgBox, % "Done!"

; Chọn cột F
Send, {Ctrl Down}g{Ctrl Up}F2:F1048576{Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
WinActivate
Sleep, 1000
Send, {Enter}
Sleep, 1000


; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000
WinActivate
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 50
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 50
SoundBeep ; Or MsgBox, % "Done!"

; Chọn cột L
Send, {Ctrl Down}g{Ctrl Up}L2:L1048576{Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
WinActivate
Sleep, 1000
Send, {Enter}
Sleep, 1000


; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000
WinActivate
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 50
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 50
SoundBeep ; Or MsgBox, % "Done!"

; Lưu và đóng Excel file
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000


; Mở file Excel 4
varExcelFileLocation2 := """D:\Power BI\Dự án Thuốc lá Thăng Long\Test\FOXAI_Baocao_BangKMCP_641.xlsx"""
varExcelFileName2 := "FOXAI_Baocao_BangKMCP_641.xlsx"

Run, excel.exe %varExcelFileLocation2%
WinWait, %varExcelFileName2%
WinActivate

; Chọn cột C
Send, {Ctrl Down}g{Ctrl Up}C2:C1048576{Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Send,{Enter}
Sleep, 1000
Send,{Right}
Sleep, 1000
Send,{Right}
Sleep, 1000
Send,{space down}
Sleep, 80 
Send,{space up}
Sleep, 80
Send,{Enter}
Sleep, 1000
Send,{Enter}
Sleep, 1000

; Tìm và Thay thế
Send, ^h
Sleep, 1000
Send, =-
Sleep, 1000
Send, {Tab}
Sleep, 1000
Send, '- ; Nhập ký tự thay thế
Sleep, 1000

; Chọn tất cả và thay thế toàn bộ
Send, {Alt Down}a{Alt Up}
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Đóng hộp thoại Find & Replace
Send, !{F4}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để chuyển mã)
Send, ^+{F9}
Sleep, 1000

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;wait for a paste operation to complete
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 50
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 50
SoundBeep ; Or MsgBox, % "Done!"

; Chọn cột F
Send, {Ctrl Down}g{Ctrl Up}F2:F1048576{Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
WinActivate
Sleep, 1000
Send, {Enter}
Sleep, 1000


; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000
WinActivate
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 50
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 50
SoundBeep ; Or MsgBox, % "Done!"

; Chọn cột L
Send, {Ctrl Down}g{Ctrl Up}L2:L1048576{Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
WinActivate
Sleep, 1000
Send, {Enter}
Sleep, 1000


; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000
WinActivate
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 50
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 50
SoundBeep ; Or MsgBox, % "Done!"

; Lưu và đóng Excel file
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000

; Mở file Excel 5
varExcelFileLocation2 := """D:\Power BI\Dự án Thuốc lá Thăng Long\Test\FOXAI_Baocao_BangKMCP_642.xlsx"""
varExcelFileName2 := "FOXAI_Baocao_BangKMCP_642.xlsx"

Run, excel.exe %varExcelFileLocation2%
WinWait, %varExcelFileName2%
WinActivate

; Chọn cột C
Send, {Ctrl Down}g{Ctrl Up}C2:C1048576{Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Send,{Enter}
Sleep, 1000
Send,{Right}
Sleep, 1000
Send,{Right}
Sleep, 1000
Send,{space down}
Sleep, 80 
Send,{space up}
Sleep, 80
Send,{Enter}
Sleep, 1000
Send,{Enter}
Sleep, 1000

; Tìm và Thay thế
Send, ^h
Sleep, 1000
Send, =-
Sleep, 1000
Send, {Tab}
Sleep, 1000
Send, '- ; Nhập ký tự thay thế
Sleep, 1000

; Chọn tất cả và thay thế toàn bộ
Send, {Alt Down}a{Alt Up}
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Đóng hộp thoại Find & Replace
Send, !{F4}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để chuyển mã)
Send, ^+{F9}
Sleep, 1000

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;wait for a paste operation to complete
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 50
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 50
SoundBeep ; Or MsgBox, % "Done!"

; Chọn cột F
Send, {Ctrl Down}g{Ctrl Up}F2:F1048576{Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
WinActivate
Sleep, 1000
Send, {Enter}
Sleep, 1000


; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000
WinActivate
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 50
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 50
SoundBeep ; Or MsgBox, % "Done!"

; Chọn cột L
Send, {Ctrl Down}g{Ctrl Up}L2:L1048576{Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
WinActivate
Sleep, 1000
Send, {Enter}
Sleep, 1000


; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000
WinActivate
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 50
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 50
SoundBeep ; Or MsgBox, % "Done!"

; Lưu và đóng Excel file
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000


; Kết thúc script AutoHotkey
ExitApp
