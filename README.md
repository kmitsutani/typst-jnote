# typst-jp-note-template
このリポジトリは
[kimushun1101/typst-jp-conf-template](https://github.com/kimushun1101/typst-jp-conf-template) をフォークして作成した
Typst でアブストラクト付きのノートを書く時のテンプレートです．
研究の途中で共同研究者等に共有するようなものを想定しています．
主に

- 2カラムの廃止
- 様々なスペースをゆったりととる

という変更を行い個人用ノートとして見やすくなるようにしました．
また Appendix を追加しました．


## ディレクトリ構造

| ファイル  | 意味                    |
| -------- | ----------------------- |
| main.typ | 原稿の Typst ソースコード |
| refs.yml | 参考文献ファイル          |


| ディレクトリ | 含まれるファイルの種類          |
| ------------- | --------------------------- |
| figs　　      | 論文に使用する画像ファイル    |
| libs　　      | 体裁を整えるライブラリファイル |



## 使用方法
GitHub に慣れていない方は，GitHub ページの `<>Code▼` から `Download ZIP` して展開してください．  
慣れている方は，`git clone` したり `use this template` したり，適宜扱ってください．

### Neovim + nvimdots

- LSP: [ayamir/nvimdots](ayamir/nvimdots) を適用すると`mason.nvim` が入るのでNeovim 内で `:MasonInstall typst-lsp` とすると LSP との連携ができるようになります．
- その他シンタックスハイライトやfiletypeの適用など: [kaarmu/typst.vim](kaarmu/typst.vim)
- リアルタイムプレビュー: [https://github.com/chomosuke/typst-preview.nvim](chomosuke/typst-preview.nvim)

## 参考元
[kimushun1101/typst-jp-conf-template](https://github.com/kimushun1101/typst-jp-conf-template) 

## ライセンス
参考元にならってライセンスを付与しています．  
Typst ファイル : MIT No Attribution  
CSL ファイル : Creative Commons Attribution-ShareAlike 3.0 License  
