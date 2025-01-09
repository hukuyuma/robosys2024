# plusコマンド,averageコマンド

![test](https://github.com/hukuyuma/robosys2024/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ数字を足して、その平均を出す。

## 主な機能について
- 実行すると数値を入力してください(終了するには　'exit'　と入力) 。と表示される。
- 数値を入力してEnterを押すとまた数値を入力できるようになる。
- 'exit'と入力してEnterを押すまでの数値の合計とその平均を表示する。
- 数値ではないアルファベットなどを入力した場合には'入力したアルファベット'は無効な入力です。数値を入力してください。と表示される。

## ダウンロード方法
以下の手順でプロジェクトをローカル環境にダウンロードしてください。

```bash
リポジトリをクローン
git clone https://github.com/hukuyuma/robosys2024/

ディレクトリに移動
cd robosys2024
```

## 実行例
```bash
数値を入力してください（終了するには 'exit' と入力）。
4
3
5
4
exit
合計: 16, 平均: 4.0
```

## 必要なソフトウェア
- Python3

## テスト環境
- Ubuntu 20.04 on Windows

## 著作権、ライセンスについて
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て参考にしたものです．
    - [ryuichiueda/my_slides robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
- © 2024 Yuma Fukuya
