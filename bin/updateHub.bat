@echo  off
cd ..
call git add *
call git status
set /p comment="�����������˵��:"
if "%comment%"=="" ( 
    call git commit -m "[%date% %time%] update"
    echo "Ĭ�ϴ�����˵��Ϊ"
) else (
    call git commit -m "[%date% %time%] %comment%"
    echo "�Զ��������˵��Ϊ%comment%"
)
call git status

REM  ����ע��
REM  set  /p comment = "please input code change description"

call git push 
