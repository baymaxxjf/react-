call git status
cd ..
call git add *
set /p comment =请输入代码变更说明: 
call git commit -m "%a"
call git push 
