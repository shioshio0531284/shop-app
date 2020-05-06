# Restaurant Listアプリ

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|staring|null: false, unique: true|
|email|staring|null: false, unique: true|
|password|staring|null: false|
### Associatioin
- has_many :shops
- has_many :likes

## shopsテーブル
|Column|Type|Options|
|------|----|-------|
|name|staring|null: false|
|address|staring|null: false|
|phone_number|integer|null: false, unique: true|
|price|integer|null: false|
|body|text|-------| #body:お店に対するコメントなど
### Association
- belongs_to :user
- has_many :likes

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|shop_id|references|null: false, foreign_key: true|
### Association
- belonges_to :user
- belonges_to :shop
