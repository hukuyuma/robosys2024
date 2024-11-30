#!/usr/bin/python3
from scipy.io.wavfile import read
import os

# ファイルパスを設定
file_path = "C:/Users/fuku_/Music/レコーディング-_3_.wav"

# ファイルの存在を確認
if os.path.exists(file_path):
    print("ファイルが見つかりました。")

    # WAVファイルを読み込む
    fs, audio = read(file_path)

    # サンプリング周波数とデータの確認
    print(f"サンプリング周波数: {fs} Hz")
    print(f"データの長さ: {len(audio)} サンプル")
else:
    print("ファイルが存在しません。パスを確認してください。")
