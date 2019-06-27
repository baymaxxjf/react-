call git status
cd ..
call git add *
set /p comment="请输入代码变更说明:"
if "%comment%"=="" ( 
    call git commit -m "update"
) else (
    call git commit -m "%comment%"
)
REM  这是注释
REM  set  /p comment = "please input code change description"
call git push 
