INSERT INTO "attribute_types" ("type") VALUES
('TEXT'),
('BOOL'),
('DATE'),
('FLOAT'),
('INT');

-- Текстовые значения
INSERT INTO "attributes" ("name", "attribute_type_id") VALUES
('Рецензии критиков', (SELECT "id" FROM "attribute_types" WHERE "type" = 'TEXT')),
('Отзыв неизвестной киноакадемии', (SELECT "id" FROM "attribute_types" WHERE "type" = 'TEXT'));

-- Логические значения
INSERT INTO "attributes" ("name", "attribute_type_id") VALUES
('Оскар', (SELECT "id" FROM "attribute_types" WHERE "type" = 'BOOL')),
('Ника', (SELECT "id" FROM "attribute_types" WHERE "type" = 'BOOL'));

-- Даты
INSERT INTO "attributes" ("name", "attribute_type_id") VALUES
('Мировая премьера', (SELECT "id" FROM "attribute_types" WHERE "type" = 'DATE')),
('Премьера в РФ', (SELECT "id" FROM "attribute_types" WHERE "type" = 'DATE')),
('Дата начала продажи билетов', (SELECT "id" FROM "attribute_types" WHERE "type" = 'DATE')),
('Когда запускать рекламу на ТВ', (SELECT "id" FROM "attribute_types" WHERE "type" = 'DATE'));

-- Добавляем float и int атрибуты
INSERT INTO "attributes" ("name", "attribute_type_id") VALUES
('Рейтинг IMDb', (SELECT "id" FROM "attribute_types" WHERE "type" = 'FLOAT')),
('Бюджет фильма, млн $', (SELECT "id" FROM "attribute_types" WHERE "type" = 'INT'));

-- Добавляем примеры фильмов
INSERT INTO "films" ("name") VALUES
('Интерстеллар'),
('Начало'),
('Дюнкерк');

-- Пример для фильма 'Интерстеллар'
INSERT INTO "attribute_values" ("value_text", "value_bool", "value_date", "value_float", "value_int", "attribute_id", "film_id") VALUES
(NULL, TRUE, NULL, NULL, NULL, (SELECT "id" FROM "attributes" WHERE "name" = 'Оскар'), (SELECT "id" FROM "films" WHERE "name" = 'Интерстеллар')),
('Потрясающая научная фантастика!', NULL, NULL, NULL, NULL, (SELECT "id" FROM "attributes" WHERE "name" = 'Рецензии критиков'), (SELECT "id" FROM "films" WHERE "name" = 'Интерстеллар')),
(NULL, NULL, '2014-11-06', NULL, NULL, (SELECT "id" FROM "attributes" WHERE "name" = 'Премьера в РФ'), (SELECT "id" FROM "films" WHERE "name" = 'Интерстеллар')),
(NULL, NULL, NULL, 8.6, NULL, (SELECT "id" FROM "attributes" WHERE "name" = 'Рейтинг IMDb'), (SELECT "id" FROM "films" WHERE "name" = 'Интерстеллар')),
(NULL, NULL, NULL, NULL, 165, (SELECT "id" FROM "attributes" WHERE "name" = 'Бюджет фильма, млн $'), (SELECT "id" FROM "films" WHERE "name" = 'Интерстеллар'));

-- Пример для фильма 'Начало'
INSERT INTO "attribute_values" ("value_text", "value_bool", "value_date", "value_float", "value_int", "attribute_id", "film_id") VALUES
(NULL, TRUE, NULL, NULL, NULL, (SELECT "id" FROM "attributes" WHERE "name" = 'Оскар'), (SELECT "id" FROM "films" WHERE "name" = 'Начало')),
('Интересный фильм о сновидениях', NULL, NULL, NULL, NULL, (SELECT "id" FROM "attributes" WHERE "name" = 'Рецензии критиков'), (SELECT "id" FROM "films" WHERE "name" = 'Начало')),
(NULL, NULL, '2010-07-16', NULL, NULL, (SELECT "id" FROM "attributes" WHERE "name" = 'Премьера в РФ'), (SELECT "id" FROM "films" WHERE "name" = 'Начало')),
(NULL, NULL, NULL, 8.8, NULL, (SELECT "id" FROM "attributes" WHERE "name" = 'Рейтинг IMDb'), (SELECT "id" FROM "films" WHERE "name" = 'Начало')),
(NULL, NULL, NULL, NULL, 160, (SELECT "id" FROM "attributes" WHERE "name" = 'Бюджет фильма, млн $'), (SELECT "id" FROM "films" WHERE "name" = 'Начало'));

-- Пример для фильма 'Дюнкерк'
INSERT INTO "attribute_values" ("value_text", "value_bool", "value_date", "value_float", "value_int", "attribute_id", "film_id") VALUES
('Военный фильм от Кристофера Нолана', NULL, NULL, NULL, NULL, (SELECT "id" FROM "attributes" WHERE "name" = 'Рецензии критиков'), (SELECT "id" FROM "films" WHERE "name" = 'Дюнкерк')),
(NULL, NULL, '2017-07-20', NULL, NULL, (SELECT "id" FROM "attributes" WHERE "name" = 'Премьера в РФ'), (SELECT "id" FROM "films" WHERE "name" = 'Дюнкерк')),
(NULL, NULL, NULL, 7.8, NULL, (SELECT "id" FROM "attributes" WHERE "name" = 'Рейтинг IMDb'), (SELECT "id" FROM "films" WHERE "name" = 'Дюнкерк')),
(NULL, NULL, NULL, NULL, 100, (SELECT "id" FROM "attributes" WHERE "name" = 'Бюджет фильма, млн $'), (SELECT "id" FROM "films" WHERE "name" = 'Дюнкерк'));