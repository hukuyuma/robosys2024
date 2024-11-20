#!/bin/bash

# テスト入力
input_data="3\nabc\n\n7\n10\n"

# 期待される出力
expected_output=$'警告: \'abc\' は無効な入力です。数値を入力してください。\n合計: 20'

# 実行結果を取得
result=$(echo -e "$input_data" | ./plus)

# 実際の出力から余計な行を除外
filtered_result=$(echo "$result" | grep -E '警告|合計')

# 実際の出力を表示
echo "実際の出力:"
echo "$result"

# 結果を比較
if [[ "$filtered_result" == "$expected_output" ]]; then
    echo "Stage 2: テスト成功！"
else
    echo "Stage 2: テスト失敗！"
    echo "期待される出力:"
    echo "$expected_output"
    echo "実際の出力:"
    echo "$filtered_result"
fi
