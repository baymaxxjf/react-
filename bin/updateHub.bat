@echo  off
call git status
cd ..
call git add *
call git status
set /p comment="�����������˵��:"
if "%comment%"=="" ( 
    call git commit -m "%date% %time% : update"
    echo "Ĭ�ϴ�����˵��Ϊ"
) else (
    call git commit -m "%comment%"
    echo "�Զ��������˵��Ϊ%comment%"
)
call status
REM  ����ע��
REM  set  /p comment = "please input code change description"
call git push 
