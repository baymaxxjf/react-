@echo  off
call git status
cd ..
call git add *
set /p comment="�����������˵��:"
if "%comment%"=="" ( 
    call git commit -m "%date% %time% : update"
    echo "Ĭ�ϴ�����˵��Ϊ"
) else (
    call git commit -m "%comment%"
    echo "�Զ��������˵��Ϊ%comment%"
)
REM  ����ע��
REM  set  /p comment = "please input code change description"
call git push 
