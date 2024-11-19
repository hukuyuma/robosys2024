#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yuma Fukuya
# SPDX-License-Identifier: BSD-3-Clause

import subprocess

def test_stage1():
    input_data = "3\n7\n10\n"
    expected_output = "合計: 20\n"
   
    # プログラムを実行して結果を比較
    result = subprocess.run(
        ["python3", "stage1.py"],  # 実行するスクリプト名を指定
        input=input_data,
        text=True,
        capture_output=True
    )
   
    assert result.stdout.strip() == expected_output.strip(), f"期待: {expected_output} 実際: {result.stdout}"

test_stage1()
print("Stage 1: テスト成功！")
