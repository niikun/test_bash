files=(/etc/hosts /etc/profile ~/.bashrc)

for file in "${files[@]}";do
    ls -l "$file"
done