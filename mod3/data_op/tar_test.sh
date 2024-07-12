#!/usr/bin/bash

# /documents ディレクトリが存在するか確認
if [ ! -d "/documents" ]; then
  echo "/documents ディレクトリが存在しません。ディレクトリを作成してから再試行してください。"
  exit 1
fi

# /backups ディレクトリが存在するか確認し、存在しない場合は作成
if [ ! -d "/backups" ]; then
  mkdir -p /backups
fi

# tar.gz アーカイブを作成
tar -cvzf /backups/documents.tar.gz -C / documents