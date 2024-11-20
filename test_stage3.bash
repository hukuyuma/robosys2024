#!/bin/bash

# テスト入力
input_data="5\n3\nexit\n"

# 期待される出力
expected_output="合計: 8, 平均: 4.0"

# 実行結果を取得
result=$(echo -e "$input_data" | ./plus)

# 実際の出力を表示
echo "実際の出力:"
echo "$result"

# 実際の出力から合計と平均を抽出
filtered_result=$(echo "$result" | grep -E '合計')

# 結果を比較
if [[ "$filtered_result" == "$expected_output" ]]; then
    echo "Stage 3: テスト成功！"
else
    echo "Stage 3: テスト失敗！"
    echo "期待される出力:"
    echo "$expected_output"
    echo "実際の出力:"
    echo "$filtered_result"
fi
