call git status
cd ..
call git add *
set /p comment="�����������˵��:"
if "%comment%"=="" ( 
    call git commit -m "update"
) else (
    call git commit -m "%comment%"
)
REM  ����ע��
REM  set  /p comment = "please input code change description"
call git push 
