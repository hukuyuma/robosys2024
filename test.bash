#!/usr/bin/python3
import subprocess

def run_test(test_input, expected_output):
    """`average` プログラムをテストする関数"""
    process = subprocess.Popen(
        ["python3", "average"],
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        text=True
    )
    stdout, stderr = process.communicate(input=test_input)

    # 標準エラーが出力されていないかチェック
    assert stderr == "", f"エラー発生: {stderr}"

    # 出力結果を確認
    assert expected_output in stdout, f"期待された出力: {expected_output}\n実際の出力: {stdout}"

# テストケース
tests = [
    {
        "input": "10\n20\n30\nexit\n",
        "expected": "合計: 60, 平均: 20.0"
    },
    {
        "input": "1.5\n2.5\nexit\n",
        "expected": "合計: 4.0, 平均: 2.0"
    },
    {
        "input": "10\nabc\n20\nexit\n",
        "expected": "警告: 'abc' は無効な入力です。数値を入力してください。\n合計: 30, 平均: 15.0"
    },
    {
        "input": "exit\n",
        "expected": "有効な入力がありませんでした。"
    }
]

# テスト実行
for i, test in enumerate(tests, 1):
    try:
        run_test(test["input"], test["expected"])
        print(f"テストケース {i} 成功")
    except AssertionError as e:
        print(f"テストケース {i} 失敗: {e}")
