#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yuma Fukuya
# SPDX-License-Identifier: BSD-3-Clause

# テスト対象のスクリプト
SCRIPT="./plus"

# 入力データ
INPUT="3\n7\n10\n"

# 期待される出力
EXPECTED_OUTPUT="合計: 20"

# 実際にスクリプトを実行して出力を取得
if [ -f "$SCRIPT" ]; then
    ACTUAL_OUTPUT=$(echo -e "$INPUT" | python3 "$SCRIPT")
else
    echo "エラー: $SCRIPT が見つかりません。"
    exit 1
fi

# テスト結果を確認
if [ "$ACTUAL_OUTPUT" == "$EXPECTED_OUTPUT" ]; then
    echo "テスト成功！"
    exit 0
else
    echo "テスト失敗！"
    echo "期待される出力: $EXPECTED_OUTPUT"
    echo "実際の出力: $ACTUAL_OUTPUT"
    exit 1
fi
