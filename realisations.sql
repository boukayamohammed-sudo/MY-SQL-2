Talkhise SQL (Users / Articles / Comments)
 L’objectif général

T3ellamna kifach nkhedmo b SQL bach:

nkriyiw database

nkriyiw tables (users, articles, comments)

nربطو tables m3a b3diyathom

nkhdmo b SELECT + JOIN

نفهمو المنطق ديال الربط

 Création de la base de données

درنا database سميتها code_db

استعملناها ب USE code_db
 Les tables
🔹 users

فيها المستخدمين

id = PRIMARY KEY

🔹 articles

كل مقال تابع لمستخدم

user_id = FOREIGN KEY كتشير لـ users.id

🔹 comments

كل تعليق تابع لمقال ولمستخدم

article_id → articles.id

user_id → users.id

 هنا فهمنا:

PRIMARY KEY كتعرّف السطر FOREIGN KEY كيربط table بـ table آخر

 Pourquoi le FROM ؟

FROM هي نقطة البداية ديال أي SELECT

كنقولو لـ MySQL منين يبدا يجيب المعطيات

مثال:

FROM users = البداية من المستخدمين

FROM comments = البداية من التعليقات
 JOIN: ربط الجداول
المثال الأساسي
FROM users u
JOIN articles a ON u.id = a.user_id
JOIN comments c ON a.id = c.article_id

 شنو وقع؟

ربطنا users مع articles

ومن بعد articles مع comments

 الشرط ديما:

PRIMARY KEY = FOREIGN KEY

مثال:

users.id = articles.user_id

🟰  علاش استعملنا (=) ؟

حيث كنقلبو على قيم متساوية

المقال فيه user_id كيساوي id ديال المستخدم

بدون هاد الشرط:

MySQL ما يعرفش شكون تابع لشنو
أخطاء تعلمنا نتفاداها

 FROM users.u ✔️ FROM users u

 c.user_id = c.id ✔️ u.id = c.user_id

ربط id مع id بلا علاقة ✔️ ديما id مع foreign key

 الخلاصة النهائية

SQL كتعتمد على المنطق أكثر من الحفظ

FROM = نقطة الانطلاق

JOIN = الربط

= = العلاقة بين primary key و foreign key

 دابا تقدر:

تفهم أي SELECT فيه JOIN

تعرف علاش كيتكتب شرط الربط

تصحح الأخطاء الشائعة