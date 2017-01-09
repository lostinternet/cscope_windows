::Author:Charlie Ding
::Copyright Charlie Ding
::But you can use this file by free

@echo off
set _cur_dir=%cd%


::you can add the file ext in this var
set _file_list= *.h *.c *.cpp

::generate cscope.files
dir /s/b/a-d %_file_list% >cscope.files

::generate cscope.out
::at first you should put the cscope.exe to system directory.
cscope.exe -bCkR -i cscope.files

goto :eof
