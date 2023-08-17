#!/bin/bash
###################################
# ファイル名を一括変更するスクリプト #
###################################


# 変更する言語文字列
src_lang="fr"
new_lang="ja"

# ディレクトリ指定
tartget_dir="./"

# ファイル検索と置換
for file in $(find $tartget_dir -name "*$src_lang*"); do
  new_file_name=$(echo "$file" | sed "s/$src_lang/$new_lang/")
  mv "$file" "$new_file_name"
done