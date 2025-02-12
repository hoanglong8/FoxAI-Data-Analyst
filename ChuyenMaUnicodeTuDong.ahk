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
Click,630,626
Sleep, 1000
Click,69,139
Sleep, 1000
Click,630,626
Sleep, 1000
Click,779,628
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

; Mở Excel 2
Run, excel.exe "D:\Power BI\Dự án Thuốc lá Thăng Long\Test\F_IS.xlsx"
WinWait, F_IS.xlsx
WinActivate ; Đảm bảo cửa sổ Excel đầu tiên được kích hoạt

; Chọn toàn bộ cột C
Send, {Ctrl Down}g{Ctrl Up}C2:C1048576{Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Click,630,626
Sleep, 1000
Click,69,139
Sleep, 1000
Click,630,626
Sleep, 1000
Click,779,628
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

; Lưu và đóng
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000

; Mở Excel 3
Run, excel.exe "D:\Power BI\Dự án Thuốc lá Thăng Long\Test\FOXAI_Baocao_BangKMCP_627.xlsx"
WinWait, FOXAI_Baocao_BangKMCP_627.xlsx
WinActivate ; Đảm bảo cửa sổ Excel đầu tiên được kích hoạt

;Chọn cột C
Send, ^g
Sleep, 1000
Send, C2:C1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Click,630,626
Sleep, 1000
Click,69,139
Sleep, 1000
Click,630,626
Sleep, 1000
Click,779,628
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
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

;Chọn cột F
Send, ^g
Sleep, 1000
Send, F2:F1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

;Chọn cột L
Send, ^g
Sleep, 1000
Send, L2:L1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Lưu và đóng
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000

; Mở Excel 4
Run, excel.exe "D:\Power BI\Dự án Thuốc lá Thăng Long\Test\FOXAI_Baocao_BangKMCP_641.xlsx"
WinWait, FOXAI_Baocao_BangKMCP_641.xlsx
WinActivate ; Đảm bảo cửa sổ Excel đầu tiên được kích hoạt

;Chọn cột C
Send, ^g
Sleep, 1000
Send, C2:C1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Click,630,626
Sleep, 1000
Click,69,139
Sleep, 1000
Click,630,626
Sleep, 1000
Click,779,628
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
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

;Chọn cột F
Send, ^g
Sleep, 1000
Send, F2:F1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

;Chọn cột L
Send, ^g
Sleep, 1000
Send, L2:L1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Lưu và đóng
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000

; Mở Excel 5
Run, excel.exe "D:\Power BI\Dự án Thuốc lá Thăng Long\Test\FOXAI_Baocao_BangKMCP_642.xlsx"
WinWait, FOXAI_Baocao_BangKMCP_642.xlsx
WinActivate ; Đảm bảo cửa sổ Excel đầu tiên được kích hoạt

;Chọn cột C
Send, ^g
Sleep, 1000
Send, C2:C1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Click,630,626
Sleep, 1000
Click,69,139
Sleep, 1000
Click,630,626
Sleep, 1000
Click,779,628
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
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

;Chọn cột F
Send, ^g
Sleep, 1000
Send, F2:F1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

;Chọn cột L
Send, ^g
Sleep, 1000
Send, L2:L1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Lưu và đóng
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000

; Mở Excel 6
Run, excel.exe "D:\Power BI\Dự án Thuốc lá Thăng Long\Test\FOXAI_BaoCao_GiaThanh_DacThu_ThangLong_B6.xlsx"
WinWait, FOXAI_BaoCao_GiaThanh_DacThu_ThangLong_B6.xlsx
WinActivate ; Đảm bảo cửa sổ Excel đầu tiên được kích hoạt

;Chọn cột C
Send, ^g
Sleep, 1000
Send, C2:C1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Click,630,626
Sleep, 1000
Click,69,139
Sleep, 1000
Click,630,626
Sleep, 1000
Click,779,628
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
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

;Chọn cột E
Send, ^g
Sleep, 1000
Send, E2:E1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Sao chép dữ liệu
Send, ^c
Sleep, 1000

; Thực hiện phím tắt Ctrl + Shift + F9 (để tính toán lại)
Send, ^+{F9}
Sleep, 1000
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Lưu và đóng
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000

; Mở Excel 7
Run, excel.exe "D:\Power BI\Dự án Thuốc lá Thăng Long\Test\FOXAI_BaoCao_GiaThanh_DacThu_ThangLong_B11_2.xlsx"
WinWait, FOXAI_BaoCao_GiaThanh_DacThu_ThangLong_B11_2.xlsx
WinActivate ; Đảm bảo cửa sổ Excel đầu tiên được kích hoạt

;Chọn cột C
Send, ^g
Sleep, 1000
Send, C2:C1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Click,630,626
Sleep, 1000
Click,69,139
Sleep, 1000
Click,630,626
Sleep, 1000
Click,779,628
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
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Lưu và đóng
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000

; Mở Excel 8
Run, excel.exe "D:\Power BI\Dự án Thuốc lá Thăng Long\Test\FOXAI_BaoCao_GiaThanh_DacThu_ThangLong_B12.xlsx"
WinWait, FOXAI_BaoCao_GiaThanh_DacThu_ThangLong_B12.xlsx
WinActivate ; Đảm bảo cửa sổ Excel đầu tiên được kích hoạt

;Chọn cột C
Send, ^g
Sleep, 1000
Send, C2:C1048576
Sleep, 1000
Send, {Enter}
Sleep, 1000

; Mở Text to column
Send,!{a}{e}
Sleep, 1000
Click,126,191
Sleep, 1000
Click,630,626
Sleep, 1000
Click,69,139
Sleep, 1000
Click,630,626
Sleep, 1000
Click,779,628
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
;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Dán dữ liệu vào Unikey (Ctrl + V)
Send, ^v
Sleep, 1000

; Nhấn Enter để xác nhận
Send, {Enter}
Sleep, 1000

;Đợi đến khi dán hoàn tất
while DllCall("GetOpenClipboardWindow", Ptr)
	Sleep 1000
if WinActive("ahk_class XLMAIN")
	while (A_Cursor = "Wait")
		Sleep 1000
SoundBeep ; Or MsgBox, % "Done!"

; Lưu và đóng
Send, ^s ; Ctrl + S để lưu
Sleep, 1000
Send, !{F4} ; Alt + F4 để đóng Excel
Sleep, 1000

ExitApp