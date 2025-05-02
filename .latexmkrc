#!/usr/bin/env perl
# LaTeX 関連コマンドの設定

# uplatex を使ってエラー時に停止
$latex            = 'uplatex -halt-on-error';
# サイレントモード（バッチ）
$latex_silent     = 'uplatex -halt-on-error -interaction=batchmode';
# BibTeX 処理
$bibtex           = 'upbibtex';
# DVI から PDF へ変換
$dvipdf           = 'dvipdfmx %O -o %D %S';
# PDF モードを dvipdfmx 用に設定（3）
$pdf_mode         = 3;
# 索引作成
$makeindex        = 'mendex %O -o %D %S';

# 成功時の Skim リロードスクリプト呼び出し（out_dir は事前に定義しておく必要あり）
$out_dir          = 'out';  # 必要に応じて適切な出力ディレクトリを設定
$success_cmd      = "/bin/bash reload_skim.sh $out_dir/%B.pdf";
