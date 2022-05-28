rem 批量修改文件扩展名


rem 在这里设置所有变量
rem tp: 目标文件夹路径(无论路径中有没有空格, 均不需要加双引号), 为空表示当前文件夹
rem sub: 是否包含子目录, 为/r表示包含, 为空表示不包含
rem suffix: 目标扩展名, 不可为空
rem new_suffix: 新的扩展名, 不可为空

set tp=D:\test\change suffix
set sub=/r
set suffix=bat
set new_suffix=txt


@echo off
setlocal EnableDelayedExpansion

if defined tp (
cd "!tp!"
)

for %sub% %%i in (*.%suffix%) do (
rename "%%i" "%%~ni.!new_suffix!"
)

echo 修改完毕
PAUSE