# typst-jp-note-template
このリポジトリは
[kimushun1101/typst-jp-conf-template](https://github.com/kimushun1101/typst-jp-conf-template) をフォークして作成した
Typst でアブストラクト付きのノートを書く時のテンプレートです．
研究の途中で共同研究者等に共有するようなものを想定しています．


| ファイル  | 意味                    |
| -------- | ----------------------- |
| main.typ | 原稿の Typst ソースコード |
| refs.*　 | 参考文献ファイル          |


| ディレクトリ | 含まれるファイルの種類          |
| ------------- | --------------------------- |
| figs　　      | 論文に使用する画像ファイル    |
| libs　　      | 体裁を整えるライブラリファイル |


からお読みできます．

## 使用方法
GitHub に慣れていない方は，GitHub ページの `<>Code▼` から `Download ZIP` して展開してください．  
慣れている方は，`git clone` したり `use this template` したり，適宜扱ってください．

### VS Code を使用する場合
1. [VS Code](https://code.visualstudio.com/) をインストール．
1. VS Code で `File`→`Open Folder` でこのフォルダーを開く．  
2. 推奨拡張機能をインストール．  
  Extensions (`Ctrl` + `Shift` + `X`) の `Search Extensions in Marketplace` のテキストボックスに `@recommended` と入力すると表示される，以下の拡張機能をinstall をクリック．  
    - [Typst LSP](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp)
    - [Typst Preview](https://marketplace.visualstudio.com/items?itemName=mgt19937.typst-preview)
1. Explorer (`Ctrl` + `Shift` + `E`) から `main.typ` を開いた状態で，画面右上にある Typst Preview の方の ![view-icon](https://github.com/kimushun1101/typst-jp-conf-template/assets/13430937/a44c52cb-d23a-4fdb-ac9f-dc2b47deb40a) アイコンをクリック (
 `Ctrl` + `K` のあと `V`) でプレビューを表示．[トップにある動画](#typst-jp-conf-template) の操作です．
2. `Ctrl` + `S` で PDF を生成．

### Neovim + nvimdots

- LSP: [ayamir/nvimdots](ayamir/nvimdots) を適用すると`mason.nvim` が入るのでNeovim 内で `:MasonInstall typst-lsp` とすると LSP との連携ができるようになります．
- その他シンタックスハイライトやfiletypeの適用など: [kaarmu/typst.vim](kaarmu/typst.vim)
- リアルタイムプレビュー: [https://github.com/chomosuke/typst-preview.nvim](chomosuke/typst-preview.nvim)

### 他のエディターで執筆する場合

筆者は試せていませんが，他のエディターでも同様の拡張機能はありそうです．  
また，Typst のインストールおよびコンパイルはコマンドラインでも行えます．  
お使いの OS によってインストール方法が異なるため，詳細は[別ページ](docs/native-install.md)にまとめました．

## 参考元
[kimushun1101/typst-jp-conf-template](https://github.com/kimushun1101/typst-jp-conf-template) 

## ライセンス
参考元にならってライセンスを付与しています．  
Typst ファイル : MIT No Attribution  
CSL ファイル : Creative Commons Attribution-ShareAlike 3.0 License  
