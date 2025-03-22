CREATE OR REPLACE VIEW service_data AS
SELECT
    f.name,
    STRING_AGG(CASE WHEN av.value_date = CURRENT_DATE THEN a.name END, ', ') AS tasks_today,
    STRING_AGG(CASE WHEN av.value_date = CURRENT_DATE + INTERVAL '20 days' THEN a.name END, ', ') AS tasks_in_20_days
FROM
    films f
LEFT JOIN
    attribute_values av ON f.id = av.film_id
LEFT JOIN
    attributes a ON av.attribute_id = a.id
LEFT JOIN
    attribute_types at ON a.attribute_type_id = at.id
WHERE
    at.type = 'Дата'
GROUP BY
    f.id;

CREATE OR REPLACE VIEW marketing_data AS
SELECT
    f.name AS film,
    at.type AS attribute_type,
    a.name AS attribute,
    CASE
        WHEN at.type = 'TEXT' THEN av.value_text
        WHEN at.type = 'BOOL' THEN Case 
            When av.value_bool Then 'True' 
            ELse 'False' 
        END
        WHEN at.type = 'DATE' THEN to_char(av.value_date, 'DD MM YYYY')
        WHEN at.type = 'FLOAT' THEN cast(av.value_float as text)
        WHEN at.type = 'INT' THEN cast(av.value_int as text)
        ELSE NULL
    END AS value
FROM
    films f
JOIN
    attribute_values av ON f.id = av.film_id
JOIN
    attributes a ON av.attribute_id = a.id
JOIN
    attribute_types at ON a.attribute_type_id = at.id;