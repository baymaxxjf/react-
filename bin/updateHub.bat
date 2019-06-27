@echo  off
cd ..
call git add *
call git status
set /p comment="请输入代码变更说明:"
if "%comment%"=="" ( 
    call git commit -m "[%date% %time%] update"
    echo "默认代码变更说明为"
) else (
    call git commit -m "[%date% %time%] %comment%"
    echo "自定义代码变更说明为%comment%"
)
call git status

REM  这是注释
REM  set  /p comment = "please input code change description"

call git push 
