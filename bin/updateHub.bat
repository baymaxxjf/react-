@echo  off
call git status
cd ..
call git add *
set /p comment="请输入代码变更说明:"
if "%comment%"=="" ( 
    call git commit -m "update"
    echo "默认代码变更说明"
) else (
    call git commit -m "%comment%"
    echo "默认代码变更说明"
)
REM  这是注释
REM  set  /p comment = "please input code change description"
call git push 
