# お気に入りのお店を登録できるサイト

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
|name|string|null: false|
|address|string|null: false|
|phone_number|integer|null: false, unique: true|
|price|integer|null: false|
|body|text|-------| #body:お店に対するコメントなど
### Association
- belongs_to :user
- has_many :likes
- has_many :images

## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|shop_id|references|null: false, foreign_key: true|
### Association
- belonges_to :user
- belonges_to :shop

## imageテーブル
|Column|Type|Options|
|------|----|-------|
|src|string|null: false|
|item|references|null: false,foreign_key: true|
### Associatioin
- belongs_to :shop
