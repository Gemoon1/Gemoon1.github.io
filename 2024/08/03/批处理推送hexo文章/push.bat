@echo off
rem 该文件由GoldesqueMoON制作
:start
cd C:\Users\Administrator\blog
call hexo clean
echo 缓存已清除
call hexo g
echo 生成完成
echo 开始同步网站
call hexo d
echo ----------------
if errorlevel 1 (goto error) else goto success

:error
echo 同步失败，请查看报错信息！
choice /m:"是否重试？"
if errorlevel 2 goto exit
if errorlevel 1 goto start

:exit
timeout 1
exit

:success
echo 同步成功
pause