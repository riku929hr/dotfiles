# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## リポジトリ概要

シンボリックリンクを使用してホームディレクトリに設定ファイルをデプロイする個人用dotfilesリポジトリ。

## 主要コマンド

### セットアップとインストール
- `./setup.bash` - 全dotfilesをホームディレクトリにシンボリックリンクして配置
- `brew bundle` - `homebrew/Brewfile` から全Homebrewパッケージをインストール

### コード品質とフォーマット
- `npm run secretlint` - 全ファイルのシークレット漏洩チェック
- `npm run format` - styluaで全Luaファイルをフォーマット
- `npm run check-format` - Luaフォーマットの確認のみ（変更なし）

## アーキテクチャと構成

### シンボリックリンクのデプロイ先
`setup.bash` が各設定を以下にリンクする：
- `ghostty/` → `~/.config/ghostty`
- `nvim/` → `~/.config/nvim`
- `zsh/zshrc` → `~/.zshrc`、`zsh/zpreztorc` → `~/.zpreztorc`
- `tmux/tmux.conf` → `~/.tmux.conf`
- `scripts/t` → `~/.local/bin/t`
- `mise/config.toml` → `~/.config/mise/config.toml`
- `npm/default-npm-packages` → `~/.default-npm-packages`

### Neovim設定
`nvim/` はAstroNvim v5+をベースに構成：
- `nvim/lua/lazy_setup.lua` - lazy.nvimのエントリポイント。AstroNvim本体・`community.lua`・`plugins/`をインポート
- `nvim/lua/plugins/` - 各プラグインのカスタマイズ（`astrocore.lua`でキーマップ・vim options、`astrolsp.lua`でLSP設定）
- `nvim/lua/polish.lua` - lazy.setup後に実行される最終設定
- `nvim/selene.toml` - Luaリンター設定（`std = "neovim"`）
- リーダーキー: `<Space>`、ローカルリーダー: `,`

### Ubuntu向けスクリプト
- `ubuntu/` - Linux環境用のセットアップスクリプト（`apt-install.bash`、`lazygit.bash`、`monaspace.bash`）

## 重要ファイル
- `setup.bash` - メインインストールスクリプト
- `homebrew/Brewfile` - Homebrewパッケージ定義
- `package.json` - npmスクリプトと依存関係
- `scripts/t` - tmuxセッションマネージャー（ThePrimeagen方式）
- `nvim/lazy-lock.json` - Neovimプラグインバージョンロックファイル