# アプリケーション名: RECRUITMENT

就職活動で企業研究をする上で調査した企業情報などを入力し保存することができます。保存した企業情報は比較したり、詳細ページで閲覧したりすることができます。情報を追加したい場合や情報を変更したい場合や情報が不要となった場合には保存した企業情報を編集または削除することができます。

### URL

https://recruit-app-36859.herokuapp.com/

### Basic認証

ID: admin

Pass: 2222

# 制作背景

## 目指した課題解決

初めて就職活動をするに当たってどのように企業を選べば良いのか、どのように企業研究を進めていけば良いのか分からないという就活生の悩みに応えるべくこのアプリの制作に取り掛かりました。企業研究を始めていく中で何をすれば良いのか分からないという方にチュートリアルのように調査しながらメモしながら自分がどんな企業のどんな情報を求めているのか、どのような環境で仕事したいのかイメージを掴んで頂ければ幸いです。

## 要件定義

[![Image from Gyazo](https://i.gyazo.com/0666bd33f991d6f5b822c8f1b3134c0c.png)](https://gyazo.com/0666bd33f991d6f5b822c8f1b3134c0c)

# 実装機能

### 企業情報管理機能

調査した企業情報を書き込み保存できます。会社名と業界・業種は必須項目となっていますが、他項目は任意で入力することができます。各項目のフォームにはplaceholder属性で入力する内容の説明が記載されています。

会社名と業界・業種の項目が空欄のまま「保存」ボタンを押下するとエラーハンドリングされ、入力済みの項目は消えずエラーメッセージが表示されます。
[![Image from Gyazo](https://i.gyazo.com/d0fffc4f4ae02817494f40a480224c50.gif)](https://gyazo.com/d0fffc4f4ae02817494f40a480224c50)

### 企業情報一覧表示機能

保存した企業情報はトップページで見返すことができます。保存した全ての企業情報の一覧を表示し比較することができます。企業情報が保存されていない際にはトップメッセージが表示されます。
[![Image from Gyazo](https://i.gyazo.com/62f3daa5d1bf1b8034838f0140c370cc.png)](https://gyazo.com/62f3daa5d1bf1b8034838f0140c370cc)
[![Image from Gyazo](https://i.gyazo.com/d9a57d2869e789c722e23212106cb09b.png)](https://gyazo.com/d9a57d2869e789c722e23212106cb09b)

### 企業情報詳細表示機能

トップページに表示されている保存した企業情報をクリックすると詳細を見やすく表示することができます。

### 企業情報編集機能

追加で保存したい情報や変更したい情報がある場合には「編集」ボタンを押下することで保存した企業情報を編集することができます。企業情報詳細閲覧ページにある編集ボタンをクリックすることで企業情報を編集することができます。「キャンセル」ボタンを押下すると編集をキャンセルすることができます。容易に内容を編集できるように非同期通信で処理しています。

企業情報管理と同様、会社名と業界・業種が空欄のまま「保存」ボタンを押下するとエラーハンドリングされ入力済みの項目は消えずエラーメッセージが表示されます。編集の際のエラーメッセージは非同期通信のためエラーに気づきやすくするため変更ボタン近くに表示しています。
[![Image from Gyazo](https://i.gyazo.com/2c4740e2ef13e0ff3420604a3c66e9bc.gif)](https://gyazo.com/2c4740e2ef13e0ff3420604a3c66e9bc)

### 企業情報削除機能

不要となった企業情報を削除できます。「削除」ボタンをクリックすることで企業情報を削除することができ、削除した後はトップページへと戻ります。


# 実装予定の機能

### タグ付け機能

企業情報を業種や調査状況ごとに比較しやすくなるように企業情報にタグを付け、一覧表示の際に表示するタグを選択することで該当するタグがついている企業情報のみが表示されるようにしたいと考えています。企業情報入力ページにて新規タグという項目でタグを作成することができるようにします。新規タグで作成したタグはプルダウンで選択できるようにします。トップページ上部に作成したタグを一覧として並べ、タグをクリックすることでそのタグが付いた企業情報のみが一覧に表示されるようにします。新規タグ作成には一意性制約を設定する予定です。同じタグが付いた企業情報が全て削除された場合にはtagテーブルからもタグ情報が消えます。

## 利用方法

### 企業情報保存

トップページ下部の「＋」と書かれた四角いボタンをクリック

↓

企業情報入力ページに遷移（下部の「戻る」ボタンをクリックするとトップページへと戻る）
[![Image from Gyazo](https://i.gyazo.com/6cfe108f5416f4ada9a04dcbbd57ad1b.gif)](https://gyazo.com/6cfe108f5416f4ada9a04dcbbd57ad1b)
↓

フォームに企業情報(企業名、業界・業種は必須)を入力し、企業情報入力ページ下部の「保存」ボタンをクリック
[![Image from Gyazo](https://i.gyazo.com/13f73bae0dae52c8432aea8f60ccfc16.gif)](https://gyazo.com/13f73bae0dae52c8432aea8f60ccfc16)

### 企業情報詳細閲覧（企業情報を１つ以上保存していることが前提条件）

トップページの企業情報をクリック

↓

企業情報詳細ページへと遷移（下部の「戻る」ボタンをクリックするとトップページへと戻る）
[![Image from Gyazo](https://i.gyazo.com/e0acb70c648c6b1e14b7d6f4eb2db8e4.gif)](https://gyazo.com/e0acb70c648c6b1e14b7d6f4eb2db8e4)

### 企業情報編集（企業情報を１つ以上保存していることが前提条件）

トップページの企業情報をクリック

↓

企業情報詳細ページへと遷移

↓

企業情報詳細ページ下部の「編集」ボタンをクリック

↓

フォーム内の情報を変更または追記（右下の「キャンセル」ボタンをクリックすると通常の企業情報詳細ページへと戻る）
[![Image from Gyazo](https://i.gyazo.com/d0c70f452d1466d54d98e5c0ad227cc9.gif)](https://gyazo.com/d0c70f452d1466d54d98e5c0ad227cc9)

↓

「変更」ボタンをクリック
[![Image from Gyazo](https://i.gyazo.com/2bf5ace1ab0ad96d7c4cca1f6af99794.gif)](https://gyazo.com/2bf5ace1ab0ad96d7c4cca1f6af99794)

### 企業情報削除（企業情報を１つ以上保存していることが前提条件）

トップページの企業情報をクリック

↓

企業情報詳細ページへと遷移

↓

企業情報詳細ページ下部の「削除」ボタンをクリック
[![Image from Gyazo](https://i.gyazo.com/3900c431550b4112753822e7fb9fa82d.gif)](https://gyazo.com/3900c431550b4112753822e7fb9fa82d)

# テーブル設計

## corporates テーブル

| Column             | Type       | Options                   |
| ------------------ | ---------- | ------------------------- |
| name               | string     | null: false               |
| industry           | string     | null: false               |
| capital            | string     |                           |
| earnings           | string     |                           |
| employee           | string     |                           |
| place              | string     |                           |
| average_income     | string     |                           |
| average_age        | string     |                           |
| business_content   | text       |                           |
| human_resource     | text       |                           |
| strength           | text       |                           |
| weakness           | text       |                           |
| selection_method   | text       |                           |
| others             | text       |                           |
| tag_id             | references | foreign_key: true         |

### Association

- has_one :tag

## tags テーブル

| Column             | Type       | Options                   |
| ------------------ | ---------- | ------------------------- |
| tag                | string     | unique: true              |
| corporate_id       | references | foreign_key: true         |

### Association

- belongs_to :corporate

### ER図

[![Image from Gyazo](https://i.gyazo.com/61e847545c3001b66f68ff1f2cca3542.png)](https://gyazo.com/61e847545c3001b66f68ff1f2cca3542)
