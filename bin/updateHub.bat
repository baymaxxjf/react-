call git status
cd ..
call git add *
set /p comment="�����������˵��:" 
call git commit -m "%comment%"
call git push 
