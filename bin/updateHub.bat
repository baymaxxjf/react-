@echo  off
call git status
cd ..
call git add *
set /p comment="�����������˵��:"
if "%comment%"=="" ( 
    call git commit -m "update"
    echo "Ĭ�ϴ�����˵��"
) else (
    call git commit -m "%comment%"
    echo "Ĭ�ϴ�����˵��"
)
REM  ����ע��
REM  set  /p comment = "please input code change description"
call git push 
