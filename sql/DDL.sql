CREATE TABLE "attribute_types" (
    "id" SERIAL PRIMARY KEY,
    "type" VARCHAR(255)
);

CREATE TABLE "attributes" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(255),
    "attribute_type_id" INTEGER REFERENCES "attribute_types"("id")
);

CREATE TABLE "films" (
    "id" SERIAL PRIMARY KEY,
    "name" VARCHAR(255)
);

CREATE TABLE "attribute_values" (
    "id" SERIAL PRIMARY KEY,
    "value_text" TEXT,
    "value_int" INTEGER,
    "value_bool" BOOLEAN,
    "value_float" FLOAT,
    "value_date" DATE,
    "attribute_id" INTEGER REFERENCES "attributes"("id"),
    "film_id" INTEGER REFERENCES "films"("id")
);