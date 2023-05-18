# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encryted_password  | string | null: false               |
| name               | string | null: false               |
| profile            |  text  | null: false               |
| occupation         |  text  | null: false               |
| position           |  text  | null: false               |

### Association

- has_many :users
- has_many :porototypes, through: :comments_users
- has_many :phototypes

## commentsテーブル

| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------- |
| content            |  text      | null: false, foreign_key: true  |
| prototype          | references | null: false, foreign_key: true  |
| user               | references | null: false                     |

### Association

- belongs_to :users
- has_many   :phototypes

## phototypes テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| catch_copy         | text       | null: false                    |
| content            |  text      | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- has_many  :comments
- has_many  :user, through: :comments_users
- has_many  :user

