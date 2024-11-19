#!/bin/bash

# テスト入力
input_data="3\nabc\n7\n10\n"

# 実行結果を変数に保存
result=$(echo -e "$input_data" | ./plus)

# 実際の出力内容を表示
echo "実際の出力:"
echo "$result"

# 期待される出力
expected_output="警告: 'abc' は無効な入力です。数値を入力してください。\n合計: 20"

# 結果を比較
if [[ "$result" == "$expected_output" ]]; then
    echo "Stage 2: テスト成功！"
else
    echo "Stage 2: テスト失敗！"
    echo "期待される出力: $expected_output"
    echo "実際の出力: $result"
fi
