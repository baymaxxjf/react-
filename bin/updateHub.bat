call git status
cd ..
call git add *
set /p comment="�����������˵��:"
REM  ����ע��
REM  set  /p comment = "please input code change description"
call git commit -m "%comment%"
call git push 
