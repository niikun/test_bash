# test_bash

## echo -e "apple\nbanana\napple" | sort | uniq -c
1. echo -e "apple\nbanana\napple":

- echo コマンドは指定したテキストを標準出力に表示します。
- -e オプションを使うと、バックスラッシュエスケープシーケンス（例えば \n）を解釈します。
- "apple\nbanana\napple" は、改行文字 \n を使って "apple", "banana", "apple" をそれぞれ別の行に分けています。
```
apple
banana
apple
```
2. | (パイプ):

パイプは左側のコマンド（echo -e "apple\nbanana\napple"）の出力を右側のコマンド（sort）の入力として渡します。
3. sort:

sort コマンドは入力行をアルファベット順に並べ替えます。
```
apple
apple
banana
```

4. 再度 | (パイプ):

再びパイプを使い、sort の出力を uniq -c コマンドに渡します。

5. uniq -c:

uniq コマンドは重複する行を削除します。
-c オプションを付けると、各行の先頭にその行が入力に現れた回数を表示します。
ソートされた入力に対して、uniq -c は次のように出力します：
```
  2 apple
  1 banana
```

## ps -ef | grep python | sort | uniq -c
1. ps -ef:

ps コマンドは現在実行中のプロセスを表示します。
-e オプションはすべてのプロセスを表示します。
-f オプションはフルフォーマットでの表示を意味します（詳細情報を表示）。  

2. | (パイプ):

パイプは左側のコマンド（ps -ef）の出力を右側のコマンド（grep python）の入力として渡します。  

3. grep python:

grep コマンドは、指定したパターンに一致する行をフィルタリングします。
python という文字列を含む行を検索します。これにより、実行中のすべてのプロセスの中から Python プロセスを探します。  

4. 再度 | (パイプ):

再びパイプを使い、grep python の出力を sort コマンドに渡します。  

5. sort:

sort コマンドは入力行をアルファベット順に並べ替えます。
これにより、同じ内容の行がまとめられ、後続の uniq コマンドで処理しやすくなります。  

6. 再度 | (パイプ):

再びパイプを使い、sort の出力を uniq -c コマンドに渡します。  

7. uniq -c:

uniq コマンドは重複する行を削除します。
-c オプションを付けると、各行の先頭にその行が入力に現れた回数を表示します。

## read -p "file name" FILENAME
read -p "file name" FILENAME は、Bashスクリプトにおいてユーザーから入力を受け取るためのコマンドです。以下にその詳細を説明します：  

- read コマンドはユーザーからの入力を読み取ります。  
-  -p オプションは、プロンプト文字列を表示するためのオプションです。  
- "file name" はユーザーに入力を促すメッセージです。この場合、「file name」というメッセージが表示されます。  
- FILENAME はユーザーの入力が格納される変数の名前です。

## tr fruit steak < meal.txt
- tr : 文字の翻訳や置換を行うコマンドです。
- fruit : 置換前の文字列を指定します。
- steak : 置換後の文字列を指定します。
- < meal.txt : meal.txt ファイルを入力として読み込みます。

## /dev/null  
/dev/null は、UNIXやLinuxのシステムにおいて特殊なファイルで、いわゆる「ブラックホール」です。このファイルに書き込まれたデータはすべて捨てられ、読み込み操作は常にEOF（End of File）を返します。

## if 基本構文

```bash
if [ condition ]; then
  commands
elif [ another_condition ]; then
  other_commands
else
  default_commands
fi
```

## for 文の基本構文
```
for var in list
do
  commands
done
```