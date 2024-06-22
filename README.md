# README

# アプリケーション名	
* restly


# アプリケーション概要	
忙しい現代人に対し、このアプリは意識的な休息を促し、学習や仕事のパフォーマンス向上をサポートします。忙しい日常に、質の高いリフレッシュを提供します。

# URL	
デプロイが完了次第記載する

# テスト用アカウント	
ログインに必要な情報を記載
Basic認証のID/Passを記載

# 利用方法	
このアプリケーションの利用方法を記載
箇条書きでリスト化

# アプリケーションを作成した背景	
このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記載。
実装した機能についての画像やGIFおよびその説明※	実装した機能について、それぞれどのような特徴があるのかを列挙する形で記載。画像はGyazoで、GIFはGyazoGIFで撮影すること。

# 実装予定の機能	
洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記載。

# データベース設計	
ER図を添付。

# Users テーブル
| Column             | Type      | Options                   |
|--------------------|-----------|---------------------------|
| nickname           | string    | null: false               |
| email              | string    | null: false, unique: true |
| encrypted_password | string    | null: false               |

#### Association
- has_many :break_times
- has_many :not_todo_lists


# break_times テーブル
| Column      | Type      | Options                            |
|-------------|-----------|------------------------------------|
| break_time  | time      | null: false                        |
| user        | references| null: false, foreign_key : true    |

#### Association
- belongs_to :user


# not_todo_list　テーブル
| Column      | Type      | Options                                   |
|-------------|-----------|-------------------------------------------|
| text        | text      | null: false                               |
| user        | references| null: false, foreign_key : true           |

#### Association
- belongs_to :user


# columns テーブル
| Column      | Type      | Options                         |
|-------------|-----------|---------------------------------|
| text        | text      | null: false                     |



# 画面遷移図	
画面遷移図を添付。

# 開発環境	
使用した言語・サービスを記載。

# ローカルでの動作方法	
git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記載。

# 工夫したポイント	
制作背景・使用技術・開発方法・タスク管理など、企業へＰＲしたい事柄を記載。

# 改善点	より改善するとしたらどこか、それはどのようにしてやるのか。

# 制作時間