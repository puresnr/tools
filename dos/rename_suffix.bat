rem �����޸��ļ���չ��


rem �������������б���
rem tp: Ŀ���ļ���·��(����·������û�пո�, ������Ҫ��˫����), Ϊ�ձ�ʾ��ǰ�ļ���
rem sub: �Ƿ������Ŀ¼, Ϊ/r��ʾ����, Ϊ�ձ�ʾ������
rem suffix: Ŀ����չ��, ����Ϊ��
rem new_suffix: �µ���չ��, ����Ϊ��

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

echo �޸����
PAUSE