# 第3刷 追記 2013年 01 月 25日

# 添付の dot.Rprofile.txt について
Rはホームフォルダ（Windowsでは「C:/Users/ユーザ名」フォルダ，Mac では「/Users/ユーザ名」フォルダ）に
.Rrofile という名前のファイルが存在すると，起動時に読み込んで，初期の環境設定を行います．
Windowsの場合，dot.Rprofile.txt を一度メモ帳などで開き，「別名で保存する」を選び，ファイルの種類は「すべてのファイル」と指定して，.Rrofile と変更してフォルダに保存します．
Macの場合，ドットで始まるファイルを作成するには，ターミナルを使うのが簡単です．まずdot.Rprofile.txtを「/Users/ユーザ名」にコピーしておきます．
次にターミナルを起動して，以下のように入力して，ファイル名を変更します．

mv  dot.Profile  .Profile




# 第3章ルビを取るプログラム

（１） Aozora_Win.R （Windowsユーザー向け）ないし Aozora_UTF8.R （Macユーザー向け）と，
（２） 青空文庫のzipダウンロード用URLを指定してダウンロード・解凍・ルビ取り・ファイル名変更を行うAozoraURL.R （Windowsユーザー向け）ないし AozoraURL8.R （Macユーザー向け）

の2種類を用意しました．

ーー（１）
scriptフォルダに含まれる
Aozora_Win.R （Windowsユーザー向け）ないし Aozora_UTF8.R （Macユーザー向け）
を利用して下さい．

利用方法は，まずスクリプトを source() 関数で読み込み，
つづいて青空文庫からダウンロードしたファイルを指定して実行します．

 source("C:/Users/ishida/Documents/data/script/Aozora_UTF8.R")

 Aozora ("C:/Users/ishida/Documents/data/対象ファイル名")


実行すると，もとのファイル名に "-u.txt" ないし "-w.txt" を付加したファイルが
同じ場所に保存されています．

ーー（２）

scriptフォルダに含まれる
AozoraURL.R （Windowsユーザー向け）ないし AozoraURL8.R （Macユーザー向け）
を利用して下さい．

利用方法は，まずスクリプトを source() 関数で読み込み，
つづいて青空文庫からダウンロードしたファイルを指定して実行します．


source ("AozoraURL8.R")
Aozora ("http://www.aozora.gr.jp/cards/000129/files/42375_ruby_18247.zip", "Ougai_Niwatori.txt") 



実行すると，NORUBYというフォルダが作成され，変換後のファイルが第二引数で指定された名前で保存されます．
第二引数を指定した場合は，青空文庫で指定されたファイル名をそのまま利用します．

なお，本スクリプトは簡易的な処理を行なっていますので，
形態素解析にかける前に，変換されたファイルを開いて内部を確認して下さい．


# 付録A.2
本書のスクリプトを Github に公開しています．
ただし，登録ファイルは UTF-8 になっています．
Windows で利用するユーザーは，レポジトリをいったん取り込んだ後，
フォルダ内の全ファイルを ShiftJis (CP932) に変換した上，念のためRStudioを起動し，
本書26ページの手順で，プロジェクト全体のコード設定を CP932 に変更して下さい．

Windows で文字コードを変換するには、たとえば 文字コード変換ツール「KanjiTranslator 1.6」 のようなソフトウェアを使うのが簡単です。
http://www.kashim.com/kanjitranslator/
