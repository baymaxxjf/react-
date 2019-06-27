call git status
cd ..
call git add *
set /p comment="请输入代码变更说明:"
REM  这是注释
REM  set  /p comment = "please input code change description"
call git commit -m "%comment%"
call git push 
