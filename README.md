# plusコマンド,averageコマンド

![test](https://github.com/hukuyuma/robosys2024/actions/workflows/test.yml/badge.svg)

##何をするためのソフトか。
標準入力から読み込んだ数字を足して、その平均を出す。

##主な機能について
実行すると数値を入力してください(終了するには　'exit'　と入力) 。
と表示される。
数値を入力してEnterを押すとまた数値を入力できるようになる。
キーボードのCtrlキーとDを同時に押すか、'exit'と
入力してEnterを押すまでの数値の合計とその平均を表示する。
数値ではないアルファベットなどを入力した場合には
'入力したアルファベット'は無効な入力です。数値を入力してください。
と表示される。

## ダウンロード方法
以下の手順でプロジェクトをローカル環境にダウンロードしてください。

リポジトリをクローン
git clone https://github.com/hukuyuma/robosys2024/

ディレクトリに移動
cd robosys2024

## 必要なソフトウェア
- Python
  - テスト済みバージョン：3.7～3.10

## テスト環境
- Ubuntu 20.04 on Windows

##著作権、ライセンスについて
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て参考にしたものです．
    - [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
- © 2024 Yuma Fukuya

##その他について
今回最終的にaverageというファイルに上記の機能が使えるような
プログラムが入っている。
averageというプログラムを書くにあたってaverageという
プログラムが完成するまでに３つのテストを作り、それぞれ順番に
test_stage1.bash、test_stage2.bash、test_stage3.bash
の順番でテストを行っている。
test_stage3.bashは最終的に完成したaverageというプログラム
全体に対してのテストである。
