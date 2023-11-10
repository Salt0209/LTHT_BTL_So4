mount t c:\
t:
cd BTASM1
-----------
Dich.bat: dich menu.cpp cn1.asm cn2.asm cn3.asm
BTL.bat: btl : chạy toàn bộ btl (chỉ hiện lỗi chức năng 2 và chức năng 3)
BTL1.bat: btl1 :chạy check lỗi chức năng 1(chức năng CD chuyển thư mục)
-----------
debug.exe: Kiểm tra cổng
Lệnh:
debug
-d 0:400
-----------
Tlink1.exe: Chạy lẻ file assembly .asm
Lệnh:
tasm abc.asm
tlink1 abc.obj
abc.exe
-----------
