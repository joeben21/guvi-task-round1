for file in {a..j}
do
        echo welcome > "$file.txt"
done

git branch develop
git checkout develop
git add .
git commit -m "files from develop branch"
git checkout master

echo "enter variable 1"
read value1
echo "enter variable 2"
read value2
if  [ $value1 == $value2 ]
then
        tar -cf archive.tar {a..j}.txt
        git add archive.tar
        git commit -m "archive file"
        git push origin master
else
        git add {a..j}.txt
        git commit -m "entire file"
        git push origin develop
fi
